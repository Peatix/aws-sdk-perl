
package Paws::CloudWatchLogs::GetLogEvents;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'endTime' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupIdentifier' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' );
  has LogStreamName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logStreamName' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has StartFromHead => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'startFromHead' );
  has StartTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'startTime' );
  has Unmask => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'unmask' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::GetLogEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogEvents - Arguments for method GetLogEvents on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLogEvents on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method GetLogEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLogEvents.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $GetLogEventsResponse = $logs->GetLogEvents(
      LogStreamName      => 'MyLogStreamName',
      EndTime            => 1,                         # OPTIONAL
      Limit              => 1,                         # OPTIONAL
      LogGroupIdentifier => 'MyLogGroupIdentifier',    # OPTIONAL
      LogGroupName       => 'MyLogGroupName',          # OPTIONAL
      NextToken          => 'MyNextToken',             # OPTIONAL
      StartFromHead      => 1,                         # OPTIONAL
      StartTime          => 1,                         # OPTIONAL
      Unmask             => 1,                         # OPTIONAL
    );

    # Results:
    my $Events            = $GetLogEventsResponse->Events;
    my $NextBackwardToken = $GetLogEventsResponse->NextBackwardToken;
    my $NextForwardToken  = $GetLogEventsResponse->NextForwardToken;

    # Returns a L<Paws::CloudWatchLogs::GetLogEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/GetLogEvents>

=head1 ATTRIBUTES


=head2 EndTime => Int

The end of the time range, expressed as the number of milliseconds
after C<Jan 1, 1970 00:00:00 UTC>. Events with a timestamp equal to or
later than this time are not included.



=head2 Limit => Int

The maximum number of log events returned. If you don't specify a
limit, the default is as many log events as can fit in a response size
of 1 MB (up to 10,000 log events).



=head2 LogGroupIdentifier => Str

Specify either the name or ARN of the log group to view events from. If
the log group is in a source account and you are using a monitoring
account, you must use the log group ARN.

You must include either C<logGroupIdentifier> or C<logGroupName>, but
not both.



=head2 LogGroupName => Str

The name of the log group.

You must include either C<logGroupIdentifier> or C<logGroupName>, but
not both.



=head2 B<REQUIRED> LogStreamName => Str

The name of the log stream.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 StartFromHead => Bool

If the value is true, the earliest log events are returned first. If
the value is false, the latest log events are returned first. The
default value is false.

If you are using a previous C<nextForwardToken> value as the
C<nextToken> in this operation, you must specify C<true> for
C<startFromHead>.



=head2 StartTime => Int

The start of the time range, expressed as the number of milliseconds
after C<Jan 1, 1970 00:00:00 UTC>. Events with a timestamp equal to
this time or later than this time are included. Events with a timestamp
earlier than this time are not included.



=head2 Unmask => Bool

Specify C<true> to display the log event fields with all sensitive data
unmasked and visible. The default is C<false>.

To use this operation with this parameter, you must be signed into an
account with the C<logs:Unmask> permission.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLogEvents in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

