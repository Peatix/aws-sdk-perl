# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::API::JSONAttribute;
  use Moo::Role;
  use Types::Standard qw(Str);

  use JSON::MaybeXS;
  use URL::Encode;

  has method    => (is => 'rw', isa => Str, required => 1);
  has decode_as => (is => 'rw', isa => Str, required => 1);

1;
