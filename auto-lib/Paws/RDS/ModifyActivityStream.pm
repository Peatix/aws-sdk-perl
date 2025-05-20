
package Paws::RDS::ModifyActivityStream;
  use Moose;
  has AuditPolicyState => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyActivityStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyActivityStreamResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyActivityStreamResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyActivityStream - Arguments for method ModifyActivityStream on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyActivityStream on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyActivityStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyActivityStream.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ModifyActivityStreamResponse = $rds->ModifyActivityStream(
      AuditPolicyState => 'locked',      # OPTIONAL
      ResourceArn      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EngineNativeAuditFieldsIncluded =
      $ModifyActivityStreamResponse->EngineNativeAuditFieldsIncluded;
    my $KinesisStreamName = $ModifyActivityStreamResponse->KinesisStreamName;
    my $KmsKeyId          = $ModifyActivityStreamResponse->KmsKeyId;
    my $Mode              = $ModifyActivityStreamResponse->Mode;
    my $PolicyStatus      = $ModifyActivityStreamResponse->PolicyStatus;
    my $Status            = $ModifyActivityStreamResponse->Status;

    # Returns a L<Paws::RDS::ModifyActivityStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyActivityStream>

=head1 ATTRIBUTES


=head2 AuditPolicyState => Str

The audit policy state. When a policy is unlocked, it is read/write.
When it is locked, it is read-only. You can edit your audit policy only
when the activity stream is unlocked or stopped.

Valid values are: C<"locked">, C<"unlocked">

=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the RDS for Oracle or Microsoft SQL
Server DB instance. For example,
C<arn:aws:rds:us-east-1:12345667890:db:my-orcl-db>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyActivityStream in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

