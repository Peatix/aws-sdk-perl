
package Paws::NetworkManager::UpdateNetworkResourceMetadataResponse;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::NetworkManager::NetworkResourceMetadataMap');
  has ResourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateNetworkResourceMetadataResponse

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::NetworkManager::NetworkResourceMetadataMap>

The updated resource metadata.


=head2 ResourceArn => Str

The ARN of the resource.


=head2 _request_id => Str


=cut

