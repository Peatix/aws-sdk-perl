
package Paws::PrivateNetworks::StartNetworkResourceUpdateResponse;
  use Moose;
  has NetworkResource => (is => 'ro', isa => 'Paws::PrivateNetworks::NetworkResource', traits => ['NameInRequest'], request_name => 'networkResource');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::StartNetworkResourceUpdateResponse

=head1 ATTRIBUTES


=head2 NetworkResource => L<Paws::PrivateNetworks::NetworkResource>

The network resource.


=head2 _request_id => Str


=cut

