
package Paws::CloudWatchLogs::DescribeLogGroups;
  use Moose;
  has AccountIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIdentifiers' );
  has IncludeLinkedAccounts => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeLinkedAccounts' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupClass => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupClass' );
  has LogGroupIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logGroupIdentifiers' );
  has LogGroupNamePattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupNamePattern' );
  has LogGroupNamePrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupNamePrefix' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLogGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeLogGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeLogGroups - Arguments for method DescribeLogGroups on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLogGroups on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeLogGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLogGroups.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeLogGroupsResponse = $logs->DescribeLogGroups(
      AccountIdentifiers => [
        'MyAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      IncludeLinkedAccounts => 1,             # OPTIONAL
      Limit                 => 1,             # OPTIONAL
      LogGroupClass         => 'STANDARD',    # OPTIONAL
      LogGroupIdentifiers   => [
        'MyLogGroupIdentifier', ...           # min: 1, max: 2048
      ],    # OPTIONAL
      LogGroupNamePattern => 'MyLogGroupNamePattern',    # OPTIONAL
      LogGroupNamePrefix  => 'MyLogGroupName',           # OPTIONAL
      NextToken           => 'MyNextToken',              # OPTIONAL
    );

    # Results:
    my $LogGroups = $DescribeLogGroupsResponse->LogGroups;
    my $NextToken = $DescribeLogGroupsResponse->NextToken;

    # Returns a L<Paws::CloudWatchLogs::DescribeLogGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeLogGroups>

=head1 ATTRIBUTES


=head2 AccountIdentifiers => ArrayRef[Str|Undef]

When C<includeLinkedAccounts> is set to C<true>, use this parameter to
specify the list of accounts to search. You can specify as many as 20
account IDs in the array.



=head2 IncludeLinkedAccounts => Bool

If you are using a monitoring account, set this to C<true> to have the
operation return log groups in the accounts listed in
C<accountIdentifiers>.

If this parameter is set to C<true> and C<accountIdentifiers> contains
a null value, the operation returns all log groups in the monitoring
account and all log groups in all source accounts that are linked to
the monitoring account.

The default for this parameter is C<false>.



=head2 Limit => Int

The maximum number of items returned. If you don't specify a value, the
default is up to 50 items.



=head2 LogGroupClass => Str

Use this parameter to limit the results to only those log groups in the
specified log group class. If you omit this parameter, log groups of
all classes can be returned.

Specifies the log group class for this log group. There are three
classes:

=over

=item *

The C<Standard> log class supports all CloudWatch Logs features.

=item *

The C<Infrequent Access> log class supports a subset of CloudWatch Logs
features and incurs lower costs.

=item *

Use the C<Delivery> log class only for delivering Lambda logs to store
in Amazon S3 or Amazon Data Firehose. Log events in log groups in the
Delivery class are kept in CloudWatch Logs for only one day. This log
class doesn't offer rich CloudWatch Logs capabilities such as
CloudWatch Logs Insights queries.

=back

For details about the features supported by each class, see Log classes
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html)

Valid values are: C<"STANDARD">, C<"INFREQUENT_ACCESS">, C<"DELIVERY">

=head2 LogGroupIdentifiers => ArrayRef[Str|Undef]

Use this array to filter the list of log groups returned. If you
specify this parameter, the only other filter that you can choose to
specify is C<includeLinkedAccounts>.

If you are using this operation in a monitoring account, you can
specify the ARNs of log groups in source accounts and in the monitoring
account itself. If you are using this operation in an account that is
not a cross-account monitoring account, you can specify only log group
names in the same account as the operation.



=head2 LogGroupNamePattern => Str

If you specify a string for this parameter, the operation returns only
log groups that have names that match the string based on a
case-sensitive substring search. For example, if you specify C<Foo>,
log groups named C<FooBar>, C<aws/Foo>, and C<GroupFoo> would match,
but C<foo>, C<F/o/o> and C<Froo> would not match.

If you specify C<logGroupNamePattern> in your request, then only
C<arn>, C<creationTime>, and C<logGroupName> are included in the
response.

C<logGroupNamePattern> and C<logGroupNamePrefix> are mutually
exclusive. Only one of these parameters can be passed.



=head2 LogGroupNamePrefix => Str

The prefix to match.

C<logGroupNamePrefix> and C<logGroupNamePattern> are mutually
exclusive. Only one of these parameters can be passed.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLogGroups in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

