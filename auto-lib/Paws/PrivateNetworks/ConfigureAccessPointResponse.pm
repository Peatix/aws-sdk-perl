
package Paws::PrivateNetworks::ConfigureAccessPointResponse;
  use Moose;
  has AccessPoint => (is => 'ro', isa => 'Paws::PrivateNetworks::NetworkResource', traits => ['NameInRequest'], request_name => 'accessPoint', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ConfigureAccessPointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPoint => L<Paws::PrivateNetworks::NetworkResource>

Information about the network resource.


=head2 _request_id => Str


=cut

