
package Paws::LocationService::VerifyDevicePosition;
  use Moose;
  has DeviceState => (is => 'ro', isa => 'Paws::LocationService::DeviceState', required => 1);
  has DistanceUnit => (is => 'ro', isa => 'Str');
  has TrackerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrackerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDevicePosition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers/{TrackerName}/positions/verify');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::VerifyDevicePositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::VerifyDevicePosition - Arguments for method VerifyDevicePosition on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VerifyDevicePosition on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method VerifyDevicePosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VerifyDevicePosition.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $VerifyDevicePositionResponse = $geo->VerifyDevicePosition(
      DeviceState => {
        DeviceId   => 'MyId',                  # min: 1, max: 100
        Position   => [ 1, ... ],              # min: 2, max: 2
        SampleTime => '1970-01-01T01:00:00',
        Accuracy   => {
          Horizontal => 1,                     # max: 10000000

        },    # OPTIONAL
        CellSignals => {
          LteCellDetails => [
            {
              CellId  => 1,    # max: 268435455
              Mcc     => 1,    # min: 200, max: 999
              Mnc     => 1,    # max: 999
              LocalId => {
                Earfcn => 1,    # max: 262143
                Pci    => 1,    # max: 503

              },    # OPTIONAL
              NetworkMeasurements => [
                {
                  CellId => 1,      # max: 268435455
                  Earfcn => 1,      # max: 262143
                  Pci    => 1,      # max: 503
                  Rsrp   => 1,      # min: -140, max: -44; OPTIONAL
                  Rsrq   => 1.0,    # min: -19.5, max: -3; OPTIONAL
                },
                ...
              ],    # min: 1, max: 32; OPTIONAL
              NrCapable     => 1,      # OPTIONAL
              Rsrp          => 1,      # min: -140, max: -44; OPTIONAL
              Rsrq          => 1.0,    # min: -19.5, max: -3; OPTIONAL
              Tac           => 1,      # max: 65535; OPTIONAL
              TimingAdvance => 1,      # max: 1282; OPTIONAL
            },
            ...
          ],    # min: 1, max: 16

        },    # OPTIONAL
        Ipv4Address      => 'MyDeviceStateIpv4AddressString',    # OPTIONAL
        WiFiAccessPoints => [
          {
            MacAddress =>
              'MyWiFiAccessPointMacAddressString',    # min: 12, max: 17
            Rss => 1,                                 # min: -128

          },
          ...
        ],    # OPTIONAL
      },
      TrackerName  => 'MyResourceName',
      DistanceUnit => 'Kilometers',       # OPTIONAL
    );

    # Results:
    my $DeviceId      = $VerifyDevicePositionResponse->DeviceId;
    my $DistanceUnit  = $VerifyDevicePositionResponse->DistanceUnit;
    my $InferredState = $VerifyDevicePositionResponse->InferredState;
    my $ReceivedTime  = $VerifyDevicePositionResponse->ReceivedTime;
    my $SampleTime    = $VerifyDevicePositionResponse->SampleTime;

    # Returns a L<Paws::LocationService::VerifyDevicePositionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/VerifyDevicePosition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceState => L<Paws::LocationService::DeviceState>

The device's state, including position, IP address, cell signals and
Wi-Fi access points.



=head2 DistanceUnit => Str

The distance unit for the verification request.

Default Value: C<Kilometers>

Valid values are: C<"Kilometers">, C<"Miles">

=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource to be associated with verification
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VerifyDevicePosition in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

