
package Paws::S3::DeleteBucketMetadataTableConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketMetadataTableConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?metadataTable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteBucketMetadataTableConfiguration - Arguments for method DeleteBucketMetadataTableConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBucketMetadataTableConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteBucketMetadataTableConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBucketMetadataTableConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->DeleteBucketMetadataTableConfiguration(
      Bucket              => 'MyBucketName',
      ExpectedBucketOwner => 'MyAccountId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteBucketMetadataTableConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The general purpose bucket that you want to remove the metadata table
configuration from.



=head2 ExpectedBucketOwner => Str

The expected bucket owner of the general purpose bucket that you want
to remove the metadata table configuration from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBucketMetadataTableConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

