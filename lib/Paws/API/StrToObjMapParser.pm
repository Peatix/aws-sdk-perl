# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::API::StrToObjMapParser;
  use Moo::Role;

  sub ValueFor {
    my ($self, $key) = shift;
    my $value = $self->Map->{ $key };
    die "No value for $key" if not defined ($value);
    return $value;
  }
1;
