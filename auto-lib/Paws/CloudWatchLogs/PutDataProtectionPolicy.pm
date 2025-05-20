
package Paws::CloudWatchLogs::PutDataProtectionPolicy;
  use Moose;
  has LogGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupIdentifier' , required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDataProtectionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutDataProtectionPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDataProtectionPolicy - Arguments for method PutDataProtectionPolicy on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDataProtectionPolicy on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutDataProtectionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDataProtectionPolicy.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $PutDataProtectionPolicyResponse = $logs->PutDataProtectionPolicy(
      LogGroupIdentifier => 'MyLogGroupIdentifier',
      PolicyDocument     => 'MyDataProtectionPolicyDocument',

    );

    # Results:
    my $LastUpdatedTime = $PutDataProtectionPolicyResponse->LastUpdatedTime;
    my $LogGroupIdentifier =
      $PutDataProtectionPolicyResponse->LogGroupIdentifier;
    my $PolicyDocument = $PutDataProtectionPolicyResponse->PolicyDocument;

    # Returns a L<Paws::CloudWatchLogs::PutDataProtectionPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutDataProtectionPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupIdentifier => Str

Specify either the log group name or log group ARN.



=head2 B<REQUIRED> PolicyDocument => Str

Specify the data protection policy, in JSON.

This policy must include two JSON blocks:

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
used as a dimension when CloudWatch Logs reports audit findings metrics
to CloudWatch.

The JSON specified in C<policyDocument> can be up to 30,720 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDataProtectionPolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

