
package Paws::IoTData::Publish;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'contentType');
  has CorrelationData => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-mqtt5-correlation-data');
  has MessageExpiry => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'messageExpiry');
  has Payload => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payload');
  has PayloadFormatIndicator => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-mqtt5-payload-format-indicator');
  has Qos => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'qos');
  has ResponseTopic => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'responseTopic');
  has Retain => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'retain');
  has Topic => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'topic', required => 1);
  has UserProperties => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-mqtt5-user-properties');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Publish');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/topics/{topic}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::Publish - Arguments for method Publish on L<Paws::IoTData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Publish on the
L<AWS IoT Data Plane|Paws::IoTData> service. Use the attributes of this class
as arguments to method Publish.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Publish.

=head1 SYNOPSIS

    my $data-ats.iot = Paws->service('IoTData');
    $data -ats . iot->Publish(
      Topic                  => 'MyTopic',
      ContentType            => 'MyContentType',        # OPTIONAL
      CorrelationData        => 'MyCorrelationData',    # OPTIONAL
      MessageExpiry          => 1,                      # OPTIONAL
      Payload                => 'BlobPayload',          # OPTIONAL
      PayloadFormatIndicator => 'UNSPECIFIED_BYTES',    # OPTIONAL
      Qos                    => 1,                      # OPTIONAL
      ResponseTopic          => 'MyResponseTopic',      # OPTIONAL
      Retain                 => 1,                      # OPTIONAL
      UserProperties         => 'MyUserProperties',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data-ats.iot/Publish>

=head1 ATTRIBUTES


=head2 ContentType => Str

A UTF-8 encoded string that describes the content of the publishing
message.



=head2 CorrelationData => Str

The base64-encoded binary data used by the sender of the request
message to identify which request the response message is for when it's
received. C<correlationData> is an HTTP header value in the API.



=head2 MessageExpiry => Int

A user-defined integer value that represents the message expiry
interval in seconds. If absent, the message doesn't expire. For more
information about the limits of C<messageExpiry>, see Amazon Web
Services IoT Core message broker and protocol limits and quotas
(https://docs.aws.amazon.com/general/latest/gr/iot-core.html#message-broker-limits)
from the Amazon Web Services Reference Guide.



=head2 Payload => Str

The message body. MQTT accepts text, binary, and empty (null) message
payloads.

Publishing an empty (null) payload with B<retain> = C<true> deletes the
retained message identified by B<topic> from Amazon Web Services IoT
Core.



=head2 PayloadFormatIndicator => Str

An C<Enum> string value that indicates whether the payload is formatted
as UTF-8. C<payloadFormatIndicator> is an HTTP header value in the API.

Valid values are: C<"UNSPECIFIED_BYTES">, C<"UTF8_DATA">

=head2 Qos => Int

The Quality of Service (QoS) level. The default QoS level is 0.



=head2 ResponseTopic => Str

A UTF-8 encoded string that's used as the topic name for a response
message. The response topic is used to describe the topic which the
receiver should publish to as part of the request-response flow. The
topic must not contain wildcard characters.



=head2 Retain => Bool

A Boolean value that determines whether to set the RETAIN flag when the
message is published.

Setting the RETAIN flag causes the message to be retained and sent to
new subscribers to the topic.

Valid values: C<true> | C<false>

Default value: C<false>



=head2 B<REQUIRED> Topic => Str

The name of the MQTT topic.



=head2 UserProperties => Str

A JSON string that contains an array of JSON objects. If you
donE<rsquo>t use Amazon Web Services SDK or CLI, you must encode the
JSON string to base64 format before adding it to the HTTP header.
C<userProperties> is an HTTP header value in the API.

The following example C<userProperties> parameter is a JSON string
which represents two User Properties. Note that it needs to be
base64-encoded:

C<[{"deviceName": "alpha"}, {"deviceCnt": "45"}]>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Publish in L<Paws::IoTData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

