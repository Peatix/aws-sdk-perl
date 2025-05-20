
package Paws::Outposts::StartConnection;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', required => 1);
  has ClientPublicKey => (is => 'ro', isa => 'Str', required => 1);
  has DeviceSerialNumber => (is => 'ro', isa => 'Str');
  has NetworkInterfaceDeviceIndex => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/connections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::StartConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::StartConnection - Arguments for method StartConnection on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartConnection on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method StartConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartConnection.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $StartConnectionResponse = $outposts->StartConnection(
      AssetId                     => 'MyAssetId',
      ClientPublicKey             => 'MyWireGuardPublicKey',
      NetworkInterfaceDeviceIndex => 1,
      DeviceSerialNumber          => 'MyDeviceSerialNumber',    # OPTIONAL
    );

    # Results:
    my $ConnectionId      = $StartConnectionResponse->ConnectionId;
    my $UnderlayIpAddress = $StartConnectionResponse->UnderlayIpAddress;

    # Returns a L<Paws::Outposts::StartConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/StartConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the Outpost server.



=head2 B<REQUIRED> ClientPublicKey => Str

The public key of the client.



=head2 DeviceSerialNumber => Str

The serial number of the dongle.



=head2 B<REQUIRED> NetworkInterfaceDeviceIndex => Int

The device index of the network interface on the Outpost server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartConnection in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

