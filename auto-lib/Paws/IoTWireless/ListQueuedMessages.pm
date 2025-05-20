
package Paws::IoTWireless::ListQueuedMessages;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has WirelessDeviceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'WirelessDeviceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueuedMessages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-devices/{Id}/data');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::ListQueuedMessagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListQueuedMessages - Arguments for method ListQueuedMessages on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQueuedMessages on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method ListQueuedMessages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQueuedMessages.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $ListQueuedMessagesResponse = $api . iotwireless->ListQueuedMessages(
      Id                 => 'MyWirelessDeviceId',
      MaxResults         => 1,                      # OPTIONAL
      NextToken          => 'MyNextToken',          # OPTIONAL
      WirelessDeviceType => 'Sidewalk',             # OPTIONAL
    );

    # Results:
    my $DownlinkQueueMessagesList =
      $ListQueuedMessagesResponse->DownlinkQueueMessagesList;
    my $NextToken = $ListQueuedMessagesResponse->NextToken;

    # Returns a L<Paws::IoTWireless::ListQueuedMessagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/ListQueuedMessages>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of a given wireless device which the downlink message packets
are being sent.



=head2 MaxResults => Int

The maximum number of results to return in this operation.



=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise B<null> to receive the first set of
results.



=head2 WirelessDeviceType => Str

The wireless device type, whic can be either Sidewalk or LoRaWAN.

Valid values are: C<"Sidewalk">, C<"LoRaWAN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQueuedMessages in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

