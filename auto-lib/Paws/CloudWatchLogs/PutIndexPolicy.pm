
package Paws::CloudWatchLogs::PutIndexPolicy;
  use Moose;
  has LogGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupIdentifier' , required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIndexPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutIndexPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutIndexPolicy - Arguments for method PutIndexPolicy on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIndexPolicy on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutIndexPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIndexPolicy.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $PutIndexPolicyResponse = $logs->PutIndexPolicy(
      LogGroupIdentifier => 'MyLogGroupIdentifier',
      PolicyDocument     => 'MyPolicyDocument',

    );

    # Results:
    my $IndexPolicy = $PutIndexPolicyResponse->IndexPolicy;

    # Returns a L<Paws::CloudWatchLogs::PutIndexPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutIndexPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupIdentifier => Str

Specify either the log group name or log group ARN to apply this field
index policy to. If you specify an ARN, use the format
arn:aws:logs:I<region>:I<account-id>:log-group:I<log_group_name> Don't
include an * at the end.



=head2 B<REQUIRED> PolicyDocument => Str

The index policy document, in JSON format. The following is an example
of an index policy document that creates two indexes, C<RequestId> and
C<TransactionId>.

C<"policyDocument": "{ "Fields": [ "RequestId", "TransactionId" ] }">

The policy document must include at least one field index. For more
information about the fields that can be included and other
restrictions, see Field index syntax and quotas
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing-Syntax.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIndexPolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

