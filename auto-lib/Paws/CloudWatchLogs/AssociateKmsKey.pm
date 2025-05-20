
package Paws::CloudWatchLogs::AssociateKmsKey;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' , required => 1);
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' );
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceIdentifier' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateKmsKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::AssociateKmsKey - Arguments for method AssociateKmsKey on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateKmsKey on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method AssociateKmsKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateKmsKey.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->AssociateKmsKey(
      KmsKeyId           => 'MyKmsKeyId',
      LogGroupName       => 'MyLogGroupName',          # OPTIONAL
      ResourceIdentifier => 'MyResourceIdentifier',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/AssociateKmsKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KmsKeyId => Str

The Amazon Resource Name (ARN) of the KMS key to use when encrypting
log data. This must be a symmetric KMS key. For more information, see
Amazon Resource Names
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms)
and Using Symmetric and Asymmetric Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html).



=head2 LogGroupName => Str

The name of the log group.

In your C<AssociateKmsKey> operation, you must specify either the
C<resourceIdentifier> parameter or the C<logGroup> parameter, but you
can't specify both.



=head2 ResourceIdentifier => Str

Specifies the target for this operation. You must specify one of the
following:

=over

=item *

Specify the following ARN to have future GetQueryResults
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html)
operations in this account encrypt the results with the specified KMS
key. Replace I<REGION> and I<ACCOUNT_ID> with your Region and account
ID.

C<arn:aws:logs:I<REGION>:I<ACCOUNT_ID>:query-result:*>

=item *

Specify the ARN of a log group to have CloudWatch Logs use the KMS key
to encrypt log events that are ingested and stored by that log group.
The log group ARN must be in the following format. Replace I<REGION>
and I<ACCOUNT_ID> with your Region and account ID.

C<arn:aws:logs:I<REGION>:I<ACCOUNT_ID>:log-group:I<LOG_GROUP_NAME>>

=back

In your C<AssociateKmsKey> operation, you must specify either the
C<resourceIdentifier> parameter or the C<logGroup> parameter, but you
can't specify both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateKmsKey in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

