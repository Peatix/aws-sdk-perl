
package Paws::IoTWireless::DeleteQueuedMessages;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'messageId', required => 1);
  has WirelessDeviceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'WirelessDeviceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQueuedMessages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-devices/{Id}/data');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::DeleteQueuedMessagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::DeleteQueuedMessages - Arguments for method DeleteQueuedMessages on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteQueuedMessages on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method DeleteQueuedMessages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteQueuedMessages.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $DeleteQueuedMessagesResponse = $api . iotwireless->DeleteQueuedMessages(
      Id                 => 'MyWirelessDeviceId',
      MessageId          => 'MyMessageId',
      WirelessDeviceType => 'Sidewalk',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/DeleteQueuedMessages>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of a given wireless device for which downlink messages will be
deleted.



=head2 B<REQUIRED> MessageId => Str

If message ID is C<"*">, it cleares the entire downlink queue for a
given device, specified by the wireless device ID. Otherwise, the
downlink message with the specified message ID will be deleted.



=head2 WirelessDeviceType => Str

The wireless device type, which can be either Sidewalk or LoRaWAN.

Valid values are: C<"Sidewalk">, C<"LoRaWAN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteQueuedMessages in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

