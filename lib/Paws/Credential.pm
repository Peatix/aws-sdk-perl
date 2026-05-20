# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Credential;
  use Moo::Role;

  requires 'refresh';

  sub are_set {
    my $self = shift;
    return (defined $self->refresh);
  }

1;
