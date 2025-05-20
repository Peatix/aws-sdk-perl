
package Paws::IoTFleetWise::ListDecoderManifestNetworkInterfacesResponse;
  use Moose;
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::NetworkInterface]', traits => ['NameInRequest'], request_name => 'networkInterfaces' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListDecoderManifestNetworkInterfacesResponse

=head1 ATTRIBUTES


=head2 NetworkInterfaces => ArrayRef[L<Paws::IoTFleetWise::NetworkInterface>]

A list of information about network interfaces.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

1;