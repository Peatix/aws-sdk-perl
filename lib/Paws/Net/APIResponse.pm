# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Net::APIResponse;
  use Moo;
  use Types::Standard qw(Int HashRef Str Maybe);
  use HTTP::Headers;

  has status   => (is => 'rw', isa => Int, required => 1);
  has headers  => (is => 'rw', isa => HashRef, required => 1);
  has content  => (is => 'rw', isa => Maybe[Str]);

  sub header {
    my ($self, $header) = @_;
    return $self->headers->{ $header };
  }

  sub has_header {
    my ($self, $header) = @_;
    return defined $self->headers->{ $header };
  }

1;
