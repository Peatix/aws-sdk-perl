package Paws::EC2::FlowLog;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DeliverCrossAccountRole => (is => 'ro', isa => 'Str', request_name => 'deliverCrossAccountRole', traits => ['NameInRequest']);
  has DeliverLogsErrorMessage => (is => 'ro', isa => 'Str', request_name => 'deliverLogsErrorMessage', traits => ['NameInRequest']);
  has DeliverLogsPermissionArn => (is => 'ro', isa => 'Str', request_name => 'deliverLogsPermissionArn', traits => ['NameInRequest']);
  has DeliverLogsStatus => (is => 'ro', isa => 'Str', request_name => 'deliverLogsStatus', traits => ['NameInRequest']);
  has DestinationOptions => (is => 'ro', isa => 'Paws::EC2::DestinationOptionsResponse', request_name => 'destinationOptions', traits => ['NameInRequest']);
  has FlowLogId => (is => 'ro', isa => 'Str', request_name => 'flowLogId', traits => ['NameInRequest']);
  has FlowLogStatus => (is => 'ro', isa => 'Str', request_name => 'flowLogStatus', traits => ['NameInRequest']);
  has LogDestination => (is => 'ro', isa => 'Str', request_name => 'logDestination', traits => ['NameInRequest']);
  has LogDestinationType => (is => 'ro', isa => 'Str', request_name => 'logDestinationType', traits => ['NameInRequest']);
  has LogFormat => (is => 'ro', isa => 'Str', request_name => 'logFormat', traits => ['NameInRequest']);
  has LogGroupName => (is => 'ro', isa => 'Str', request_name => 'logGroupName', traits => ['NameInRequest']);
  has MaxAggregationInterval => (is => 'ro', isa => 'Int', request_name => 'maxAggregationInterval', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TrafficType => (is => 'ro', isa => 'Str', request_name => 'trafficType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FlowLog

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FlowLog object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TrafficType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FlowLog object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

The date and time the flow log was created.


=head2 DeliverCrossAccountRole => Str

The ARN of the IAM role that allows the service to publish flow logs
across accounts.


=head2 DeliverLogsErrorMessage => Str

Information about the error that occurred. C<Rate limited> indicates
that CloudWatch Logs throttling has been applied for one or more
network interfaces, or that you've reached the limit on the number of
log groups that you can create. C<Access error> indicates that the IAM
role associated with the flow log does not have sufficient permissions
to publish to CloudWatch Logs. C<Unknown error> indicates an internal
error.


=head2 DeliverLogsPermissionArn => Str

The ARN of the IAM role allows the service to publish logs to
CloudWatch Logs.


=head2 DeliverLogsStatus => Str

The status of the logs delivery (C<SUCCESS> | C<FAILED>).


=head2 DestinationOptions => L<Paws::EC2::DestinationOptionsResponse>

The destination options.


=head2 FlowLogId => Str

The ID of the flow log.


=head2 FlowLogStatus => Str

The status of the flow log (C<ACTIVE>).


=head2 LogDestination => Str

The Amazon Resource Name (ARN) of the destination for the flow log
data.


=head2 LogDestinationType => Str

The type of destination for the flow log data.


=head2 LogFormat => Str

The format of the flow log record.


=head2 LogGroupName => Str

The name of the flow log group.


=head2 MaxAggregationInterval => Int

The maximum interval of time, in seconds, during which a flow of
packets is captured and aggregated into a flow log record.

When a network interface is attached to a Nitro-based instance
(https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-nitro-instances.html),
the aggregation interval is always 60 seconds (1 minute) or less,
regardless of the specified value.

Valid Values: C<60> | C<600>


=head2 ResourceId => Str

The ID of the resource being monitored.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags for the flow log.


=head2 TrafficType => Str

The type of traffic captured for the flow log.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
