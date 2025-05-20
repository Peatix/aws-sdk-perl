
package Paws::CloudWatchLogs::StartLiveTail;
  use Moose;
  has LogEventFilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logEventFilterPattern' );
  has LogGroupIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logGroupIdentifiers' , required => 1);
  has LogStreamNamePrefixes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logStreamNamePrefixes' );
  has LogStreamNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logStreamNames' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartLiveTail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::StartLiveTailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::StartLiveTail - Arguments for method StartLiveTail on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartLiveTail on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method StartLiveTail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartLiveTail.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $StartLiveTailResponse = $logs->StartLiveTail(
      LogGroupIdentifiers => [
        'MyLogGroupIdentifier', ...    # min: 1, max: 2048
      ],
      LogEventFilterPattern => 'MyFilterPattern',    # OPTIONAL
      LogStreamNamePrefixes => [
        'MyLogStreamName', ...                       # min: 1, max: 512
      ],    # OPTIONAL
      LogStreamNames => [
        'MyLogStreamName', ...    # min: 1, max: 512
      ],    # OPTIONAL
    );

    # Results:
    my $ResponseStream = $StartLiveTailResponse->ResponseStream;

    # Returns a L<Paws::CloudWatchLogs::StartLiveTailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/StartLiveTail>

=head1 ATTRIBUTES


=head2 LogEventFilterPattern => Str

An optional pattern to use to filter the results to include only log
events that match the pattern. For example, a filter pattern of C<error
404> causes only log events that include both C<error> and C<404> to be
included in the Live Tail stream.

Regular expression filter patterns are supported.

For more information about filter pattern syntax, see Filter and
Pattern Syntax
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).



=head2 B<REQUIRED> LogGroupIdentifiers => ArrayRef[Str|Undef]

An array where each item in the array is a log group to include in the
Live Tail session.

Specify each log group by its ARN.

If you specify an ARN, the ARN can't end with an asterisk (*).

You can include up to 10 log groups.



=head2 LogStreamNamePrefixes => ArrayRef[Str|Undef]

If you specify this parameter, then only log events in the log streams
that have names that start with the prefixes that you specify here are
included in the Live Tail session.

If you specify this field, you can't also specify the C<logStreamNames>
field.

You can specify this parameter only if you specify only one log group
in C<logGroupIdentifiers>.



=head2 LogStreamNames => ArrayRef[Str|Undef]

If you specify this parameter, then only log events in the log streams
that you specify here are included in the Live Tail session.

If you specify this field, you can't also specify the
C<logStreamNamePrefixes> field.

You can specify this parameter only if you specify only one log group
in C<logGroupIdentifiers>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartLiveTail in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

