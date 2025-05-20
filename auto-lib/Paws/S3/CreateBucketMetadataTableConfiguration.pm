
package Paws::S3::CreateBucketMetadataTableConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has MetadataTableConfiguration => (is => 'ro', isa => 'Paws::S3::MetadataTableConfiguration', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBucketMetadataTableConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?metadataTable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucketMetadataTableConfiguration - Arguments for method CreateBucketMetadataTableConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBucketMetadataTableConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CreateBucketMetadataTableConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBucketMetadataTableConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->CreateBucketMetadataTableConfiguration(
      Bucket                     => 'MyBucketName',
      MetadataTableConfiguration => {
        S3TablesDestination => {
          TableBucketArn => 'MyS3TablesBucketArn',
          TableName      => 'MyS3TablesName',

        },

      },
      ChecksumAlgorithm   => 'CRC32',           # OPTIONAL
      ContentMD5          => 'MyContentMD5',    # OPTIONAL
      ExpectedBucketOwner => 'MyAccountId',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CreateBucketMetadataTableConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The general purpose bucket that you want to create the metadata table
configuration in.



=head2 ChecksumAlgorithm => Str

The checksum algorithm to use with your metadata table configuration.

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 ContentMD5 => Str

The C<Content-MD5> header for the metadata table configuration.



=head2 ExpectedBucketOwner => Str

The expected owner of the general purpose bucket that contains your
metadata table configuration.



=head2 B<REQUIRED> MetadataTableConfiguration => L<Paws::S3::MetadataTableConfiguration>

The contents of your metadata table configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBucketMetadataTableConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

