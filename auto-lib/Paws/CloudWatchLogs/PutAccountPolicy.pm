
package Paws::CloudWatchLogs::PutAccountPolicy;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument' , required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyName' , required => 1);
  has PolicyType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyType' , required => 1);
  has Scope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scope' );
  has SelectionCriteria => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'selectionCriteria' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccountPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutAccountPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutAccountPolicy - Arguments for method PutAccountPolicy on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountPolicy on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutAccountPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountPolicy.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $PutAccountPolicyResponse = $logs->PutAccountPolicy(
      PolicyDocument    => 'MyAccountPolicyDocument',
      PolicyName        => 'MyPolicyName',
      PolicyType        => 'DATA_PROTECTION_POLICY',
      Scope             => 'ALL',                       # OPTIONAL
      SelectionCriteria => 'MySelectionCriteria',       # OPTIONAL
    );

    # Results:
    my $AccountPolicy = $PutAccountPolicyResponse->AccountPolicy;

    # Returns a L<Paws::CloudWatchLogs::PutAccountPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutAccountPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyDocument => Str

Specify the policy, in JSON.

B<Data protection policy>

A data protection policy must include two JSON blocks:

=over

=item *

The first block must include both a C<DataIdentifer> array and an
C<Operation> property with an C<Audit> action. The C<DataIdentifer>
array lists the types of sensitive data that you want to mask. For more
information about the available options, see Types of data that you can
mask
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html).

The C<Operation> property with an C<Audit> action is required to find
the sensitive data terms. This C<Audit> action must contain a
C<FindingsDestination> object. You can optionally use that
C<FindingsDestination> object to list one or more destinations to send
audit findings to. If you specify destinations such as log groups,
Firehose streams, and S3 buckets, they must already exist.

=item *

The second block must include both a C<DataIdentifer> array and an
C<Operation> property with an C<Deidentify> action. The
C<DataIdentifer> array must exactly match the C<DataIdentifer> array in
the first block of the policy.

The C<Operation> property with the C<Deidentify> action is what
actually masks the data, and it must contain the C< "MaskConfig": {}>
object. The C< "MaskConfig": {}> object must be empty.

=back

For an example data protection policy, see the B<Examples> section on
this page.

The contents of the two C<DataIdentifer> arrays must match exactly.

In addition to the two JSON blocks, the C<policyDocument> can also
include C<Name>, C<Description>, and C<Version> fields. The C<Name> is
different than the operation's C<policyName> parameter, and is used as
a dimension when CloudWatch Logs reports audit findings metrics to
CloudWatch.

The JSON specified in C<policyDocument> can be up to 30,720 characters
long.

B<Subscription filter policy>

A subscription filter policy can include the following attributes in a
JSON block:

=over

=item *

B<DestinationArn> The ARN of the destination to deliver log events to.
Supported destinations are:

=over

=item *

An Kinesis Data Streams data stream in the same account as the
subscription policy, for same-account delivery.

=item *

An Firehose data stream in the same account as the subscription policy,
for same-account delivery.

=item *

A Lambda function in the same account as the subscription policy, for
same-account delivery.

=item *

A logical destination in a different account created with
PutDestination
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html),
for cross-account delivery. Kinesis Data Streams and Firehose are
supported as logical destinations.

=back

=item *

B<RoleArn> The ARN of an IAM role that grants CloudWatch Logs
permissions to deliver ingested log events to the destination stream.
You don't need to provide the ARN when you are working with a logical
destination for cross-account delivery.

=item *

B<FilterPattern> A filter pattern for subscribing to a filtered stream
of log events.

=item *

B<Distribution> The method used to distribute log data to the
destination. By default, log data is grouped by log stream, but the
grouping can be set to C<Random> for a more even distribution. This
property is only applicable when the destination is an Kinesis Data
Streams data stream.

=back

B<Transformer policy>

A transformer policy must include one JSON block with the array of
processors and their configurations. For more information about
available processors, see Processors that you can use
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors).

B<Field index policy>

A field index filter policy can include the following attribute in a
JSON block:

=over

=item *

B<Fields> The array of field indexes to create.

=back

It must contain at least one field index.

The following is an example of an index policy document that creates
two indexes, C<RequestId> and C<TransactionId>.

C<"policyDocument": "{ \"Fields\": [ \"RequestId\", \"TransactionId\" ]
}">



=head2 B<REQUIRED> PolicyName => Str

A name for the policy. This must be unique within the account.



=head2 B<REQUIRED> PolicyType => Str

The type of policy that you're creating or updating.

Valid values are: C<"DATA_PROTECTION_POLICY">, C<"SUBSCRIPTION_FILTER_POLICY">, C<"FIELD_INDEX_POLICY">, C<"TRANSFORMER_POLICY">

=head2 Scope => Str

Currently the only valid value for this parameter is C<ALL>, which
specifies that the data protection policy applies to all log groups in
the account. If you omit this parameter, the default of C<ALL> is used.

Valid values are: C<"ALL">

=head2 SelectionCriteria => Str

Use this parameter to apply the new policy to a subset of log groups in
the account.

Specifing C<selectionCriteria> is valid only when you specify
C<SUBSCRIPTION_FILTER_POLICY>, C<FIELD_INDEX_POLICY> or
C<TRANSFORMER_POLICY>for C<policyType>.

If C<policyType> is C<SUBSCRIPTION_FILTER_POLICY>, the only supported
C<selectionCriteria> filter is C<LogGroupName NOT IN []>

If C<policyType> is C<FIELD_INDEX_POLICY> or C<TRANSFORMER_POLICY>, the
only supported C<selectionCriteria> filter is C<LogGroupNamePrefix>

The C<selectionCriteria> string can be up to 25KB in length. The length
is determined by using its UTF-8 bytes.

Using the C<selectionCriteria> parameter with
C<SUBSCRIPTION_FILTER_POLICY> is useful to help prevent infinite loops.
For more information, see Log recursion prevention
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions-recursion-prevention.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountPolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

