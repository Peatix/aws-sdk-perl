#!/usr/bin/env perl
use lib qw(t/lib);
use Paws::Test::MaterialiseServices;

use lib 't/lib';

use strict;
use warnings;

use v5.10;
use Test::More;
use Test::Exception;
use FileCaller;
use TestFromYaml;

use Paws;
use Paws::Crawler;

my $debug = $ENV{DEBUG_TESTS} || 0;
my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

use Data::Dumper;

my @files = @ARGV;
if (not @files) {
  push @files, sort glob("t/10_responses/*.response");
} else {
  @files = grep { $_ =~ m/\.response$/ } @files;
}

BAIL_OUT("No test cases to execute") if (not @files);

foreach my $file (@files) {
  test_file($file);
}

done_testing;

sub is_native {
  my $native = { 'Str|Undef' => 1, Bool => 1, Str => 1, Num => 1, Int => 1 }->{ $_[0] };
  return defined $native;
}

sub get_value_for_type {
  my $type = shift;
  return { 'Str|Undef' => 'StrOrUndef', Bool => 0, Str => 'Str', Num => 0.01, Int => 1 }->{ $type };
}

# Just make a valid structure of arguments with values for the required fields
# for a call. The test doesn't do anything with the parameters, but we need this
# so that "FileCaller" is happy with the parameters passed in.
#
# Under the Moo + Type::Tiny materialiser (post-stack13, the default
# since stack19), attributes carry Type::Tiny constraints which surface
# through `$class->meta` as Moose proxies. `$type->name` is informative
# for primitive types (`Bool`, `Str`, `Int`) but reports `__ANON__` for
# parameterised types (`ArrayRef[InstanceOf['Paws::Foo']]` ->
# `__ANON__`). Use the Type::Tiny accessors `parent`, `type_parameter`,
# and `class` to walk the constraint tree and recover the bare class
# name when the proxy stringifies anonymously. Same dance the
# top-level `Paws->new_with_coercions` does in `lib/Paws.pm`.
sub _stub_type_name {
  my ($tc) = @_;
  return undef if !defined $tc;

  # Type::Tiny::Class (a bare `InstanceOf["X"]`) reports name=__ANON__
  # but exposes the class via ->class. Prefer the class name.
  return $tc->class if ref($tc) eq 'Type::Tiny::Class' && $tc->can('class');

  my $name = $tc->can('name') ? $tc->name : '';
  return $name if $name && $name ne '__ANON__';

  # Anonymous parameterised Type::Tiny (ArrayRef[X] / HashRef[X]):
  # reconstruct a stringy `ArrayRef[<inner>]` form that the dispatch
  # below recognises. `<inner>` is the class name if the inner type
  # is `Type::Tiny::Class`, otherwise its name.
  if ($tc->can('type_parameter') && defined $tc->type_parameter) {
    my $parent = $tc->can('parent') && defined $tc->parent ? $tc->parent->name : 'ArrayRef';
    my $inner_tc = $tc->type_parameter;
    my $inner_name = ref($inner_tc) eq 'Type::Tiny::Class' && $inner_tc->can('class') ? $inner_tc->class
                  : $inner_tc->can('name')  ? $inner_tc->name
                  : '';
    return sprintf '%s[%s]', $parent, $inner_name;
  }
  return $name;
}

sub get_stub_call_args {
  my $call_class = shift;

  Paws->load_class($call_class);
  my %args = ();

  foreach my $attribute ($call_class->meta->get_all_attributes) {
    next if (not $attribute->is_required);
    next if (not $attribute->has_type_constraint);

    my $att_type = _stub_type_name($attribute->type_constraint);
    if ($att_type =~ m/ArrayRef\[(.*)\]/){
      my $inner_class = $1;
      if (is_native($inner_class)){
        $args{ $attribute->name } = [ get_value_for_type($inner_class) ];
      } else {
        $args{ $attribute->name } = [ get_stub_call_args($inner_class) ];
      }          
    } elsif ($att_type =~ m/HashRef\[(.*)\]/){
      my $inner_class = $1;
      if (is_native($inner_class)){
        $args{ $attribute->name } = { 'k1' => get_value_for_type($inner_class) };
      } else {
        $args{ $attribute->name } = { 'k1' => get_stub_call_args($inner_class) };
      }          
    } elsif (is_native($att_type)){
      $args{ $attribute->name } = get_value_for_type($att_type);
    } else {
      $args{ $attribute->name } = get_stub_call_args($att_type);
    }
  }

  return \%args;
}

sub test_file {
  my ($file) = @_;

  my $test_def_file = "$file.test.yml";
  my $test = TestFromYaml->new(file => $test_def_file);

  SKIP: {
    skip "$test_def_file is lacking service or call entry",1 if (not $test->service or not $test->method);

    my $service = $aws->service($test->service,
      region => 'fake_region',
      caller => FileCaller->new(
        response_file => $file,
      )
    );

    my $call_method = $test->method;
    my $call_class = $service->meta->name . '::' . $call_method;
    my $call_object = get_stub_call_args($call_class);

    # Dispatch: 'does the SDK reach the FileCaller without dying?'.
    # Run it outside the per-fixture TODO scope so that a fixture
    # whose data assertions are TODO'd (because of a wire-layer
    # decoder gap) still records a real success when the call
    # itself dispatches cleanly. If the dispatch DIES on a TODO'd
    # fixture (e.g. the call constructor itself trips the gap),
    # we record the failure under TODO so it's treated as
    # expected-fail. If dispatch dies on a non-TODO fixture, that's
    # a real failure of the suite.
    my $res;
    my $dispatched = eval {
      $res = $service->$call_method(%$call_object);
      1;
    };
    my $dispatch_err = $@;

    my $todo_reason = $test->is_todo
                        ? "$test_def_file is TODO: " . $test->todo_reason
                        : undef;

    if ($dispatched) {
      pass("Call " . $test->service . '->' . $test->method . " from $file");
    } elsif (defined $todo_reason) {
      TODO: {
        local $TODO = $todo_reason;
        my $msg = $dispatch_err;
        chomp $msg if defined $msg;
        fail("Call " . $test->service . '->' . $test->method
                . " from $file (dispatch died: $msg)");
      }
      next;
    } else {
      fail("Call " . $test->service . '->' . $test->method . " from $file");
      my $msg = $dispatch_err;
      chomp $msg if defined $msg;
      diag("dispatch died: $msg");
      next;
    }

    next if (not $test->has_tests);

    my $crawler = Paws::Crawler->new;
    foreach my $t (@{ $test->tests }){
      local $TODO = $todo_reason if defined $todo_reason;

      my $got;
      my $path;
      if (defined $t->{path}){
        $path = $t->{path};
        $got = eval { $crawler->resolve_path($t->{path}, $res) };
        if ($@) {
          my $message = $@;
          chomp $message;
          fail("Exception accessing $t->{path}: $message");
        }
      } else {
        die "Didn't know how to get a result to compare to. Check that test has path or dpath entry";
      }

      if (not defined $got and not defined $t->{expected}){
        pass("Got undef on $path from result");
      } else {
        # Some response fixtures legitimately compare undef to an empty
        # string (eq '') or to 0 (==). cmp_ok's behaviour in those cases
        # is correct, but its eval emits "Use of uninitialized value"
        # diagnostics that make CI logs noisy. Suppress them in the
        # narrow scope of the comparison itself.
        no warnings 'uninitialized';
        cmp_ok($got, $t->{op}, $t->{expected}, "Got $path $t->{op} $t->{expected} from result");
      }
    }
  }
}

