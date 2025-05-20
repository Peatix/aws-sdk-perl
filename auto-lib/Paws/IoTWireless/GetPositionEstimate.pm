
package Paws::IoTWireless::GetPositionEstimate;
  use Moose;
  has CellTowers => (is => 'ro', isa => 'Paws::IoTWireless::CellTowers');
  has Gnss => (is => 'ro', isa => 'Paws::IoTWireless::Gnss');
  has Ip => (is => 'ro', isa => 'Paws::IoTWireless::Ip');
  has Timestamp => (is => 'ro', isa => 'Str');
  has WiFiAccessPoints => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::WiFiAccessPoint]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPositionEstimate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/position-estimate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetPositionEstimateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetPositionEstimate - Arguments for method GetPositionEstimate on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPositionEstimate on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetPositionEstimate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPositionEstimate.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetPositionEstimateResponse = $api . iotwireless->GetPositionEstimate(
      CellTowers => {
        Cdma => [
          {
            BaseStationId => 1,      # max: 65535
            NetworkId     => 1,      # max: 65535
            SystemId      => 1,      # min: 1, max: 32767
            BaseLat       => 1.0,    # min: -90, max: 90; OPTIONAL
            BaseLng       => 1.0,    # min: -180, max: 180; OPTIONAL
            CdmaLocalId   => {
              CdmaChannel => 1,      # max: 4095
              PnOffset    => 1,      # max: 511

            },    # OPTIONAL
            CdmaNmr => [
              {
                CdmaChannel   => 1,    # max: 4095
                PnOffset      => 1,    # max: 511
                BaseStationId => 1,    # max: 65535
                PilotPower    => 1,    # min: -142, max: -49; OPTIONAL
              },
              ...
            ],    # min: 1, max: 32; OPTIONAL
            PilotPower       => 1,    # min: -142, max: -49; OPTIONAL
            RegistrationZone => 1,    # max: 4095; OPTIONAL
          },
          ...
        ],    # min: 1, max: 16; OPTIONAL
        Gsm => [
          {
            GeranCid   => 1,    # max: 65535
            Lac        => 1,    # min: 1, max: 65535
            Mcc        => 1,    # min: 200, max: 999
            Mnc        => 1,    # max: 999
            GsmLocalId => {
              Bcch => 1,        # max: 1023
              Bsic => 1,        # max: 63

            },    # OPTIONAL
            GsmNmr => [
              {
                Bcch           => 1,    # max: 1023
                Bsic           => 1,    # max: 63
                GlobalIdentity => {
                  GeranCid => 1,        # max: 65535
                  Lac      => 1,        # min: 1, max: 65535

                },    # OPTIONAL
                RxLevel => 1,    # min: -110, max: -25; OPTIONAL
              },
              ...
            ],    # min: 1, max: 32; OPTIONAL
            GsmTimingAdvance => 1,    # max: 63; OPTIONAL
            RxLevel          => 1,    # min: -110, max: -25; OPTIONAL
          },
          ...
        ],    # min: 1, max: 16; OPTIONAL
        Lte => [
          {
            EutranCid  => 1,    # max: 268435455
            Mcc        => 1,    # min: 200, max: 999
            Mnc        => 1,    # max: 999
            LteLocalId => {
              Earfcn => 1,      # max: 262143
              Pci    => 1,      # max: 503

            },    # OPTIONAL
            LteNmr => [
              {
                Earfcn    => 1,      # max: 262143
                Pci       => 1,      # max: 503
                EutranCid => 1,      # max: 268435455
                Rsrp      => 1,      # min: -140, max: -44; OPTIONAL
                Rsrq      => 1.0,    # min: -19.5, max: -3; OPTIONAL
              },
              ...
            ],    # min: 1, max: 32; OPTIONAL
            LteTimingAdvance => 1,      # max: 1282; OPTIONAL
            NrCapable        => 1,      # OPTIONAL
            Rsrp             => 1,      # min: -140, max: -44; OPTIONAL
            Rsrq             => 1.0,    # min: -19.5, max: -3; OPTIONAL
            Tac              => 1,      # max: 65535; OPTIONAL
          },
          ...
        ],    # min: 1, max: 16; OPTIONAL
        Tdscdma => [
          {
            Mcc            => 1,    # min: 200, max: 999
            Mnc            => 1,    # max: 999
            UtranCid       => 1,    # max: 268435455
            Lac            => 1,    # min: 1, max: 65535
            PathLoss       => 1,    # min: 46, max: 158; OPTIONAL
            Rscp           => 1,    # min: -120, max: -25; OPTIONAL
            TdscdmaLocalId => {
              CellParams => 1,      # max: 127
              Uarfcn     => 1,      # max: 16383

            },    # OPTIONAL
            TdscdmaNmr => [
              {
                CellParams => 1,    # max: 127
                Uarfcn     => 1,    # max: 16383
                PathLoss   => 1,    # min: 46, max: 158; OPTIONAL
                Rscp       => 1,    # min: -120, max: -25; OPTIONAL
                UtranCid   => 1,    # max: 268435455
              },
              ...
            ],    # min: 1, max: 32; OPTIONAL
            TdscdmaTimingAdvance => 1,    # max: 1530; OPTIONAL
          },
          ...
        ],    # min: 1, max: 16; OPTIONAL
        Wcdma => [
          {
            Mcc          => 1,    # min: 200, max: 999
            Mnc          => 1,    # max: 999
            UtranCid     => 1,    # max: 268435455
            Lac          => 1,    # min: 1, max: 65535
            PathLoss     => 1,    # min: 46, max: 158; OPTIONAL
            Rscp         => 1,    # min: -120, max: -25; OPTIONAL
            WcdmaLocalId => {
              Psc      => 1,      # max: 511
              Uarfcndl => 1,      # max: 16383

            },    # OPTIONAL
            WcdmaNmr => [
              {
                Psc      => 1,    # max: 511
                Uarfcndl => 1,    # max: 16383
                UtranCid => 1,    # max: 268435455
                PathLoss => 1,    # min: 46, max: 158; OPTIONAL
                Rscp     => 1,    # min: -120, max: -25; OPTIONAL
              },
              ...
            ],    # min: 1, max: 32; OPTIONAL
          },
          ...
        ],    # min: 1, max: 16; OPTIONAL
      },    # OPTIONAL
      Gnss => {
        Payload        => 'MyGnssNav',    # max: 2048
        AssistAltitude => 1.0,            # OPTIONAL
        AssistPosition => [
          1.0, ...                        # OPTIONAL
        ],    # min: 2, max: 2; OPTIONAL
        CaptureTime         => 1.0,    # OPTIONAL
        CaptureTimeAccuracy => 1.0,    # OPTIONAL
        Use2DSolver         => 1,      # OPTIONAL
      },    # OPTIONAL
      Ip => {
        IpAddress => 'MyIPAddress',

      },    # OPTIONAL
      Timestamp        => '1970-01-01T01:00:00',    # OPTIONAL
      WiFiAccessPoints => [
        {
          MacAddress => 'MyMacAddress',    # min: 12, max: 17
          Rss        => 1,                 # min: -128

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $GeoJsonPayload = $GetPositionEstimateResponse->GeoJsonPayload;

    # Returns a L<Paws::IoTWireless::GetPositionEstimateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetPositionEstimate>

=head1 ATTRIBUTES


=head2 CellTowers => L<Paws::IoTWireless::CellTowers>

Retrieves an estimated device position by resolving measurement data
from cellular radio towers. The position is resolved using HERE's
cellular-based solver.



=head2 Gnss => L<Paws::IoTWireless::Gnss>

Retrieves an estimated device position by resolving the global
navigation satellite system (GNSS) scan data. The position is resolved
using the GNSS solver powered by LoRa Cloud.



=head2 Ip => L<Paws::IoTWireless::Ip>

Retrieves an estimated device position by resolving the IP address
information from the device. The position is resolved using MaxMind's
IP-based solver.



=head2 Timestamp => Str

Optional information that specifies the time when the position
information will be resolved. It uses the Unix timestamp format. If not
specified, the time at which the request was received will be used.



=head2 WiFiAccessPoints => ArrayRef[L<Paws::IoTWireless::WiFiAccessPoint>]

Retrieves an estimated device position by resolving WLAN measurement
data. The position is resolved using HERE's Wi-Fi based solver.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPositionEstimate in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

