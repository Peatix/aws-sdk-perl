
package Paws::NetworkManager::GetResourcePolicyResponse;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyDocument => Str

The resource policy document.


=head2 _request_id => Str


=cut

