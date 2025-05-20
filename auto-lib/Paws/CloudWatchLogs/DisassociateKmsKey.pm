
package Paws::CloudWatchLogs::DisassociateKmsKey;
  use Moose;
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' );
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceIdentifier' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateKmsKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DisassociateKmsKey - Arguments for method DisassociateKmsKey on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateKmsKey on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DisassociateKmsKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateKmsKey.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->DisassociateKmsKey(
      LogGroupName       => 'MyLogGroupName',          # OPTIONAL
      ResourceIdentifier => 'MyResourceIdentifier',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DisassociateKmsKey>

=head1 ATTRIBUTES


=head2 LogGroupName => Str

The name of the log group.

In your C<DisassociateKmsKey> operation, you must specify either the
C<resourceIdentifier> parameter or the C<logGroup> parameter, but you
can't specify both.



=head2 ResourceIdentifier => Str

Specifies the target for this operation. You must specify one of the
following:

=over

=item *

Specify the ARN of a log group to stop having CloudWatch Logs use the
KMS key to encrypt log events that are ingested and stored by that log
group. After you run this operation, CloudWatch Logs encrypts ingested
log events with the default CloudWatch Logs method. The log group ARN
must be in the following format. Replace I<REGION> and I<ACCOUNT_ID>
with your Region and account ID.

C<arn:aws:logs:I<REGION>:I<ACCOUNT_ID>:log-group:I<LOG_GROUP_NAME>>

=item *

Specify the following ARN to stop using this key to encrypt the results
of future StartQuery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html)
operations in this account. Replace I<REGION> and I<ACCOUNT_ID> with
your Region and account ID.

C<arn:aws:logs:I<REGION>:I<ACCOUNT_ID>:query-result:*>

=back

In your C<DisssociateKmsKey> operation, you must specify either the
C<resourceIdentifier> parameter or the C<logGroup> parameter, but you
can't specify both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateKmsKey in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

