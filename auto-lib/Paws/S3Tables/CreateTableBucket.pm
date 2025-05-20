
package Paws::S3Tables::CreateTableBucket;
  use Moose;
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::S3Tables::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTableBucket');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/buckets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Tables::CreateTableBucketResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::CreateTableBucket - Arguments for method CreateTableBucket on L<Paws::S3Tables>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTableBucket on the
L<Amazon S3 Tables|Paws::S3Tables> service. Use the attributes of this class
as arguments to method CreateTableBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTableBucket.

=head1 SYNOPSIS

    my $s3tables = Paws->service('S3Tables');
    my $CreateTableBucketResponse = $s3tables->CreateTableBucket(
      Name                    => 'MyTableBucketName',
      EncryptionConfiguration => {
        SseAlgorithm => 'AES256',    # values: AES256, aws:kms
        KmsKeyArn    => 'MyEncryptionConfigurationKmsKeyArnString'
        ,                            # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateTableBucketResponse->Arn;

    # Returns a L<Paws::S3Tables::CreateTableBucketResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables/CreateTableBucket>

=head1 ATTRIBUTES


=head2 EncryptionConfiguration => L<Paws::S3Tables::EncryptionConfiguration>

The encryption configuration to use for the table bucket. This
configuration specifies the default encryption settings that will be
applied to all tables created in this bucket unless overridden at the
table level. The configuration includes the encryption algorithm and,
if using SSE-KMS, the KMS key to use.



=head2 B<REQUIRED> Name => Str

The name for the table bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTableBucket in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

