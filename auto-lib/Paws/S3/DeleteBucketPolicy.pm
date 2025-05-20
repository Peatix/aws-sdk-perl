
package Paws::S3::DeleteBucketPolicy;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucketPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteBucketPolicy - Arguments for method DeleteBucketPolicy on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBucketPolicy on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteBucketPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBucketPolicy.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To delete bucket policy
    # The following example deletes bucket policy on the specified bucket.
    $s3->DeleteBucketPolicy( 'Bucket' => 'examplebucket' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteBucketPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name.

B<Directory buckets > - When you use this operation with a directory
bucket, you must use path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. Directory bucket
names must be unique in the chosen Zone (Availability Zone or Local
Zone). Bucket names must also follow the format C<
I<bucket-base-name>--I<zone-id>--x-s3> (for example, C<
I<DOC-EXAMPLE-BUCKET>--I<usw2-az1>--x-s3>). For information about
bucket naming restrictions, see Directory bucket naming rules
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html)
in the I<Amazon S3 User Guide>



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).

For directory buckets, this header is not supported in this API
operation. If you specify this header, the request fails with the HTTP
status code C<501 Not Implemented>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBucketPolicy in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

