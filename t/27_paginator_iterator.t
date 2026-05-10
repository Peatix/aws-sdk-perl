#!/usr/bin/env perl

use strict;
use warnings;

use lib 'lib';

use Test::More;
use Test::Exception;

use Paws::API::Paginator;

{
  package MockResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Maybe[Str]');
  has Items     => (is => 'ro', isa => 'ArrayRef', default => sub { [] });
  __PACKAGE__->meta->make_immutable;
}

{
  package MockResultWithFlag;
  use Moose;
  has NextToken   => (is => 'ro', isa => 'Maybe[Str]');
  has IsTruncated => (is => 'ro', isa => 'Bool', default => 0);
  has Items       => (is => 'ro', isa => 'ArrayRef', default => sub { [] });
  __PACKAGE__->meta->make_immutable;
}

{
  package MockService;
  use Moose;

  has _responses => (is => 'ro', isa => 'ArrayRef', required => 1, init_arg => 'responses');
  has _call_count => (
    is      => 'rw',
    isa     => 'Int',
    default => 0,
    traits  => ['Counter'],
    handles => { _inc_call => 'inc' },
  );
  has call_log => (is => 'ro', isa => 'ArrayRef', default => sub { [] });

  sub ListThings {
    my ($self, %args) = @_;
    push @{ $self->call_log }, { %args };
    my $idx = $self->_call_count;
    $self->_inc_call;
    die "MockService: no more responses (call index=$idx)" if $idx >= scalar @{ $self->_responses };
    return $self->_responses->[$idx];
  }

  sub call_count { $_[0]->_call_count }
  __PACKAGE__->meta->make_immutable;
}

subtest 'single page - no next token' => sub {
  my $svc = MockService->new(responses => [
    MockResult->new(Items => ['a', 'b'], NextToken => undef),
  ]);

  my $p = Paws::API::Paginator->new(
    service       => $svc,
    operation     => 'ListThings',
    call_args     => [],
    input_tokens  => ['NextToken'],
    output_tokens => ['NextToken'],
  );

  ok($p->has_next_page, 'has_next_page before first call');

  my $page = $p->next_page;
  isa_ok($page, 'MockResult');
  is_deeply($page->Items, ['a', 'b'], 'first page items');

  ok(!$p->has_next_page, 'no more pages after single page');
  is($p->next_page, undef, 'next_page returns undef when exhausted');
  is($svc->call_count, 1, 'only one API call made');
};

subtest 'multi-page iteration' => sub {
  my $svc = MockService->new(responses => [
    MockResult->new(Items => [1, 2], NextToken => 'token-1'),
    MockResult->new(Items => [3, 4], NextToken => 'token-2'),
    MockResult->new(Items => [5],    NextToken => undef),
  ]);

  my $p = Paws::API::Paginator->new(
    service       => $svc,
    operation     => 'ListThings',
    call_args     => [],
    input_tokens  => ['NextToken'],
    output_tokens => ['NextToken'],
  );

  my @all_items;
  my $page_count = 0;
  while (my $page = $p->next_page) {
    $page_count++;
    push @all_items, @{ $page->Items };
  }

  is($page_count, 3, 'iterated 3 pages');
  is_deeply(\@all_items, [1, 2, 3, 4, 5], 'all items collected');
  is($svc->call_count, 3, 'three API calls made');
};

subtest 'early break - lazy fetching' => sub {
  my $svc = MockService->new(responses => [
    MockResult->new(Items => ['first'], NextToken => 'token-1'),
    MockResult->new(Items => ['second'], NextToken => 'token-2'),
    MockResult->new(Items => ['third'],  NextToken => undef),
  ]);

  my $p = Paws::API::Paginator->new(
    service       => $svc,
    operation     => 'ListThings',
    call_args     => [],
    input_tokens  => ['NextToken'],
    output_tokens => ['NextToken'],
  );

  my $page1 = $p->next_page;
  is_deeply($page1->Items, ['first'], 'got first page');
  ok($p->has_next_page, 'more pages available');
  is($svc->call_count, 1, 'only first page fetched - lazy');
};

subtest 'call_args are forwarded' => sub {
  my $svc = MockService->new(responses => [
    MockResult->new(Items => ['x'], NextToken => undef),
  ]);

  my $p = Paws::API::Paginator->new(
    service       => $svc,
    operation     => 'ListThings',
    call_args     => [Bucket => 'my-bucket', MaxKeys => 50],
    input_tokens  => ['NextToken'],
    output_tokens => ['NextToken'],
  );

  $p->next_page;
  my $captured = $svc->call_log->[0];
  is($captured->{Bucket}, 'my-bucket', 'Bucket arg forwarded');
  is($captured->{MaxKeys}, 50, 'MaxKeys arg forwarded');
};

subtest 'pagination tokens are passed to subsequent calls' => sub {
  my $svc = MockService->new(responses => [
    MockResult->new(Items => [1], NextToken => 'AAA'),
    MockResult->new(Items => [2], NextToken => 'BBB'),
    MockResult->new(Items => [3], NextToken => undef),
  ]);

  my $p = Paws::API::Paginator->new(
    service       => $svc,
    operation     => 'ListThings',
    call_args     => [Limit => 10],
    input_tokens  => ['NextToken'],
    output_tokens => ['NextToken'],
  );

  $p->next_page;
  $p->next_page;
  $p->next_page;

  my $log = $svc->call_log;
  is(scalar @$log, 3, 'three calls made');
  ok(!exists $log->[0]{NextToken}, 'first call has no token');
  is($log->[1]{NextToken}, 'AAA', 'second call uses first token');
  is($log->[2]{NextToken}, 'BBB', 'third call uses second token');
  is($log->[1]{Limit}, 10, 'original args preserved in second call');
};

subtest 'more_results field support' => sub {
  my $svc = MockService->new(responses => [
    MockResultWithFlag->new(Items => [1], IsTruncated => 1, NextToken => 'tok1'),
    MockResultWithFlag->new(Items => [2], IsTruncated => 0, NextToken => undef),
  ]);

  my $p = Paws::API::Paginator->new(
    service       => $svc,
    operation     => 'ListThings',
    call_args     => [],
    input_tokens  => ['NextToken'],
    output_tokens => ['NextToken'],
    more_results  => 'IsTruncated',
  );

  my @pages;
  while (my $page = $p->next_page) {
    push @pages, $page;
  }

  is(scalar @pages, 2, 'two pages with more_results flag');
  is_deeply($pages[0]->Items, [1], 'first page items');
  is_deeply($pages[1]->Items, [2], 'second page items');
};

subtest 'has_next_page reflects state correctly' => sub {
  my $svc = MockService->new(responses => [
    MockResult->new(Items => [1], NextToken => 'tok'),
    MockResult->new(Items => [2], NextToken => undef),
  ]);

  my $p = Paws::API::Paginator->new(
    service       => $svc,
    operation     => 'ListThings',
    call_args     => [],
    input_tokens  => ['NextToken'],
    output_tokens => ['NextToken'],
  );

  ok($p->has_next_page, 'has_next_page true before start');
  $p->next_page;
  ok($p->has_next_page, 'has_next_page true after first page with token');
  $p->next_page;
  ok(!$p->has_next_page, 'has_next_page false after last page');
  is($p->next_page, undef, 'next_page undef after exhaustion');
};

subtest 'empty result set' => sub {
  my $svc = MockService->new(responses => [
    MockResult->new(Items => [], NextToken => undef),
  ]);

  my $p = Paws::API::Paginator->new(
    service       => $svc,
    operation     => 'ListThings',
    call_args     => [],
    input_tokens  => ['NextToken'],
    output_tokens => ['NextToken'],
  );

  my $page = $p->next_page;
  is_deeply($page->Items, [], 'empty items on single page');
  ok(!$p->has_next_page, 'no more pages');
  is($svc->call_count, 1, 'one call for empty result');
};

done_testing;
