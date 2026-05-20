# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::API::Response;
  use Moo;
  use Types::Standard qw(Str);
  has _request_id => (is => 'ro', isa => Str);
1;

### main pod documentation begin ###

=head1 NAME

Paws::API::Response

=head1 ATTRIBUTES

=head2 _request_id => Str

=cut
