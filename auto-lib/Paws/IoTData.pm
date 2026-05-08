package Paws::IoTData;
  use Moose;
  sub service { 'data-ats.iot' }
  sub signing_name { 'iotdata' }
  sub version { '2015-05-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteThingShadow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::DeleteThingShadow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRetainedMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::GetRetainedMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetThingShadow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::GetThingShadow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNamedShadowsForThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::ListNamedShadowsForThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRetainedMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::ListRetainedMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Publish {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::Publish', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThingShadow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::UpdateThingShadow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllRetainedMessages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRetainedMessages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRetainedMessages(@_, nextToken => $next_result->nextToken);
        push @{ $result->retainedTopics }, @{ $next_result->retainedTopics };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'retainedTopics') foreach (@{ $result->retainedTopics });
        $result = $self->ListRetainedMessages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'retainedTopics') foreach (@{ $result->retainedTopics });
    }

    return undef
  }


  sub operations { qw/DeleteThingShadow GetRetainedMessage GetThingShadow ListNamedShadowsForThing ListRetainedMessages Publish UpdateThingShadow / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData - Perl Interface to AWS AWS IoT Data Plane

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTData');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

IoT data

IoT data enables secure, bi-directional communication between
Internet-connected things (such as sensors, actuators, embedded
devices, or smart appliances) and the Amazon Web Services cloud. It
implements a broker for applications and things to publish messages
over HTTP (Publish) and retrieve, update, and delete shadows. A shadow
is a persistent representation of your things and their state in the
Amazon Web Services cloud.

Find the endpoint address for actions in IoT data by running this CLI
command:

C<aws iot describe-endpoint --endpoint-type iot:Data-ATS>

The service name used by Amazon Web ServicesSignature Version 4
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
to sign requests is: I<iotdevicegateway>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data-ats.iot-2015-05-28>


=head1 METHODS

=head2 DeleteThingShadow

=over

=item ThingName => Str

=item [ShadowName => Str]


=back

Each argument is described in detail in: L<Paws::IoTData::DeleteThingShadow>

Returns: a L<Paws::IoTData::DeleteThingShadowResponse> instance

Deletes the shadow for the specified thing.

Requires permission to access the DeleteThingShadow
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.

For more information, see DeleteThingShadow
(http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html)
in the IoT Developer Guide.


=head2 GetRetainedMessage

=over

=item Topic => Str


=back

Each argument is described in detail in: L<Paws::IoTData::GetRetainedMessage>

Returns: a L<Paws::IoTData::GetRetainedMessageResponse> instance

Gets the details of a single retained message for the specified topic.

This action returns the message payload of the retained message, which
can incur messaging costs. To list only the topic names of the retained
messages, call ListRetainedMessages
(https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_ListRetainedMessages.html).

Requires permission to access the GetRetainedMessage
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions)
action.

For more information about messaging costs, see Amazon Web Services IoT
Core pricing - Messaging
(http://aws.amazon.com/iot-core/pricing/#Messaging).


=head2 GetThingShadow

=over

=item ThingName => Str

=item [ShadowName => Str]


=back

Each argument is described in detail in: L<Paws::IoTData::GetThingShadow>

Returns: a L<Paws::IoTData::GetThingShadowResponse> instance

Gets the shadow for the specified thing.

Requires permission to access the GetThingShadow
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.

For more information, see GetThingShadow
(http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html)
in the IoT Developer Guide.


=head2 ListNamedShadowsForThing

=over

=item ThingName => Str

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoTData::ListNamedShadowsForThing>

Returns: a L<Paws::IoTData::ListNamedShadowsForThingResponse> instance

Lists the shadows for the specified thing.

Requires permission to access the ListNamedShadowsForThing
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.


=head2 ListRetainedMessages

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTData::ListRetainedMessages>

Returns: a L<Paws::IoTData::ListRetainedMessagesResponse> instance

Lists summary information about the retained messages stored for the
account.

This action returns only the topic names of the retained messages. It
doesn't return any message payloads. Although this action doesn't
return a message payload, it can still incur messaging costs.

To get the message payload of a retained message, call
GetRetainedMessage
(https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_GetRetainedMessage.html)
with the topic name of the retained message.

Requires permission to access the ListRetainedMessages
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions)
action.

For more information about messaging costs, see Amazon Web Services IoT
Core pricing - Messaging
(http://aws.amazon.com/iot-core/pricing/#Messaging).


=head2 Publish

=over

=item Topic => Str

=item [ContentType => Str]

=item [CorrelationData => Str]

=item [MessageExpiry => Int]

=item [Payload => Str]

=item [PayloadFormatIndicator => Str]

=item [Qos => Int]

=item [ResponseTopic => Str]

=item [Retain => Bool]

=item [UserProperties => Str]


=back

Each argument is described in detail in: L<Paws::IoTData::Publish>

Returns: nothing

Publishes an MQTT message.

Requires permission to access the Publish
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.

For more information about MQTT messages, see MQTT Protocol
(http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html) in the
IoT Developer Guide.

For more information about messaging costs, see Amazon Web Services IoT
Core pricing - Messaging
(http://aws.amazon.com/iot-core/pricing/#Messaging).


=head2 UpdateThingShadow

=over

=item Payload => Str

=item ThingName => Str

=item [ShadowName => Str]


=back

Each argument is described in detail in: L<Paws::IoTData::UpdateThingShadow>

Returns: a L<Paws::IoTData::UpdateThingShadowResponse> instance

Updates the shadow for the specified thing.

Requires permission to access the UpdateThingShadow
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.

For more information, see UpdateThingShadow
(http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html)
in the IoT Developer Guide.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllRetainedMessages(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRetainedMessages([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - retainedTopics, passing the object as the first parameter, and the string 'retainedTopics' as the second parameter 

If not, it will return a a L<Paws::IoTData::ListRetainedMessagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

