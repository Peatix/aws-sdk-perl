
package Paws::RUM::DeleteResourcePolicyResponse;
  use Moose;
  has PolicyRevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::DeleteResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyRevisionId => Str

The revision ID of the policy that was removed, if it had one.


=head2 _request_id => Str


=cut

