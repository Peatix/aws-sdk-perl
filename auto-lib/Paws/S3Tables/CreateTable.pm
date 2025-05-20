
package Paws::S3Tables::CreateTable;
  use Moose;
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::S3Tables::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::S3Tables::TableMetadata', traits => ['NameInRequest'], request_name => 'metadata');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'namespace', required => 1);
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableBucketARN', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTable');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tables/{tableBucketARN}/{namespace}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Tables::CreateTableResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::CreateTable - Arguments for method CreateTable on L<Paws::S3Tables>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTable on the
L<Amazon S3 Tables|Paws::S3Tables> service. Use the attributes of this class
as arguments to method CreateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTable.

=head1 SYNOPSIS

    my $s3tables = Paws->service('S3Tables');
    my $CreateTableResponse = $s3tables->CreateTable(
      Format                  => 'ICEBERG',
      Name                    => 'MyTableName',
      Namespace               => 'MyNamespaceName',
      TableBucketARN          => 'MyTableBucketARN',
      EncryptionConfiguration => {
        SseAlgorithm => 'AES256',    # values: AES256, aws:kms
        KmsKeyArn    => 'MyEncryptionConfigurationKmsKeyArnString'
        ,                            # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      Metadata => {
        Iceberg => {
          Schema => {
            Fields => [
              {
                Name     => 'MyString',
                Type     => 'MyString',
                Required => 1,            # OPTIONAL
              },
              ...
            ],

          },

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $TableARN     = $CreateTableResponse->TableARN;
    my $VersionToken = $CreateTableResponse->VersionToken;

    # Returns a L<Paws::S3Tables::CreateTableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables/CreateTable>

=head1 ATTRIBUTES


=head2 EncryptionConfiguration => L<Paws::S3Tables::EncryptionConfiguration>

The encryption configuration to use for the table. This configuration
specifies the encryption algorithm and, if using SSE-KMS, the KMS key
to use for encrypting the table.

If you choose SSE-KMS encryption you must grant the S3 Tables
maintenance principal access to your KMS key. For more information, see
Permissions requirements for S3 Tables SSE-KMS encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html).



=head2 B<REQUIRED> Format => Str

The format for the table.

Valid values are: C<"ICEBERG">

=head2 Metadata => L<Paws::S3Tables::TableMetadata>

The metadata for the table.



=head2 B<REQUIRED> Name => Str

The name for the table.



=head2 B<REQUIRED> Namespace => Str

The namespace to associated with the table.



=head2 B<REQUIRED> TableBucketARN => Str

The Amazon Resource Name (ARN) of the table bucket to create the table
in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTable in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

