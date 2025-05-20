
package Paws::IoTData::GetRetainedMessageResponse;
  use Moose;
  has LastModifiedTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has Payload => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payload');
  has Qos => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'qos');
  has Topic => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'topic');
  has UserProperties => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userProperties');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::GetRetainedMessageResponse

=head1 ATTRIBUTES


=head2 LastModifiedTime => Int

The Epoch date and time, in milliseconds, when the retained message was
stored by IoT.


=head2 Payload => Str

The Base64-encoded message payload of the retained message body.


=head2 Qos => Int

The quality of service (QoS) level used to publish the retained
message.


=head2 Topic => Str

The topic name to which the retained message was published.


=head2 UserProperties => Str

A base64-encoded JSON string that includes an array of JSON objects, or
null if the retained message doesn't include any user properties.

The following example C<userProperties> parameter is a JSON string that
represents two user properties. Note that it will be base64-encoded:

C<[{"deviceName": "alpha"}, {"deviceCnt": "45"}]>


=head2 _request_id => Str


=cut

