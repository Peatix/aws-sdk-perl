
package Paws::RDS::StartActivityStream;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has EngineNativeAuditFieldsIncluded => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Mode => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartActivityStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::StartActivityStreamResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartActivityStreamResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::StartActivityStream - Arguments for method StartActivityStream on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartActivityStream on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method StartActivityStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartActivityStream.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $StartActivityStreamResponse = $rds->StartActivityStream(
      KmsKeyId                        => 'MyString',
      Mode                            => 'sync',
      ResourceArn                     => 'MyString',
      ApplyImmediately                => 1,            # OPTIONAL
      EngineNativeAuditFieldsIncluded => 1,            # OPTIONAL
    );

    # Results:
    my $ApplyImmediately = $StartActivityStreamResponse->ApplyImmediately;
    my $EngineNativeAuditFieldsIncluded =
      $StartActivityStreamResponse->EngineNativeAuditFieldsIncluded;
    my $KinesisStreamName = $StartActivityStreamResponse->KinesisStreamName;
    my $KmsKeyId          = $StartActivityStreamResponse->KmsKeyId;
    my $Mode              = $StartActivityStreamResponse->Mode;
    my $Status            = $StartActivityStreamResponse->Status;

    # Returns a L<Paws::RDS::StartActivityStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StartActivityStream>

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

Specifies whether or not the database activity stream is to start as
soon as possible, regardless of the maintenance window for the
database.



=head2 EngineNativeAuditFieldsIncluded => Bool

Specifies whether the database activity stream includes engine-native
audit fields. This option applies to an Oracle or Microsoft SQL Server
DB instance. By default, no engine-native audit fields are included.



=head2 B<REQUIRED> KmsKeyId => Str

The Amazon Web Services KMS key identifier for encrypting messages in
the database activity stream. The Amazon Web Services KMS key
identifier is the key ARN, key ID, alias ARN, or alias name for the KMS
key.



=head2 B<REQUIRED> Mode => Str

Specifies the mode of the database activity stream. Database events
such as a change or access generate an activity stream event. The
database session can handle these events either synchronously or
asynchronously.

Valid values are: C<"sync">, C<"async">

=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the DB cluster, for example,
C<arn:aws:rds:us-east-1:12345667890:cluster:das-cluster>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartActivityStream in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

