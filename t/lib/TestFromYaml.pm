# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package TestFromYaml;
  use Moose;
  use YAML qw/LoadFile/;

  has file => (is => 'ro', isa => 'Str', required => 1);

  has _contents => (is => 'ro', isa => 'HashRef', lazy => 1, default => sub { LoadFile(shift->file) });

  has todo_reason => (is => 'ro', isa => 'Str|Undef', lazy => 1, default => sub { shift->_contents->{ todo } });
  has is_todo => (is => 'ro', isa => 'Bool', lazy => 1, default => sub { defined shift->todo_reason });

  has service => (is => 'ro', isa => 'Str|Undef', lazy => 1, default => sub { shift->_contents->{ service } });
  has method  => (is => 'ro', isa => 'Str|Undef', lazy => 1, default => sub { shift->_contents->{ call } });

  has exception => (is => 'ro', isa => 'Str|Undef', lazy => 1, default => sub {
    my $self = shift; 
    exists $self->_contents->{ exception } and $self->_contents->{ exception } == 1 
  });

  has tests => (is => 'ro', isa => 'ArrayRef|Undef', lazy => 1, default => sub {
    my $self = shift; 
    my $tests = $self->_contents->{ tests };
    return [] if (not defined $tests or (not ref $tests and $tests eq ''));
    return $tests;
  });
  has has_tests => (is => 'ro', isa => 'Bool', lazy => 1, default => sub { defined shift->tests });

1;
