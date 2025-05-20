
package Paws::IoTWireless::StartMulticastGroupSession;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANMulticastSession', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMulticastGroupSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/multicast-groups/{Id}/session');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::StartMulticastGroupSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::StartMulticastGroupSession - Arguments for method StartMulticastGroupSession on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMulticastGroupSession on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method StartMulticastGroupSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMulticastGroupSession.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $StartMulticastGroupSessionResponse =
      $api . iotwireless->StartMulticastGroupSession(
      Id      => 'MyMulticastGroupId',
      LoRaWAN => {
        DlDr             => 1,    # max: 15; OPTIONAL
        DlFreq           => 1,    # min: 100000000, max: 1000000000; OPTIONAL
        PingSlotPeriod   => 1,    # min: 32, max: 4096; OPTIONAL
        SessionStartTime => '1970-01-01T01:00:00',    # OPTIONAL
        SessionTimeout   => 1,    # min: 60, max: 172800; OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/StartMulticastGroupSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str





=head2 B<REQUIRED> LoRaWAN => L<Paws::IoTWireless::LoRaWANMulticastSession>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMulticastGroupSession in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

