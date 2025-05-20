
package Paws::S3::CreateBucket;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has CreateBucketConfiguration => (is => 'ro', isa => 'Paws::S3::CreateBucketConfiguration', traits => ['ParamInBody']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWrite => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
  has ObjectLockEnabledForBucket => (is => 'ro', isa => 'Bool', header_name => 'x-amz-bucket-object-lock-enabled', traits => ['ParamInHeader']);
  has ObjectOwnership => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-ownership', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBucket');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CreateBucketOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucket - Arguments for method CreateBucket on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBucket on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CreateBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBucket.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
   # To create a bucket in a specific region
   # The following example creates a bucket. The request specifies an AWS region
   # where to create the bucket.
    my $CreateBucketOutput = $s3->CreateBucket(
      'Bucket'                    => 'examplebucket',
      'CreateBucketConfiguration' => {
        'LocationConstraint' => 'eu-west-1'
      }
    );

    # Results:
    my $Location = $CreateBucketOutput->Location;

    # Returns a L<Paws::S3::CreateBucketOutput> object.
    # To create a bucket
    # The following example creates a bucket.
    my $CreateBucketOutput = $s3->CreateBucket( 'Bucket' => 'examplebucket' );

    # Results:
    my $Location = $CreateBucketOutput->Location;

    # Returns a L<Paws::S3::CreateBucketOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CreateBucket>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the bucket.

This functionality is not supported for directory buckets.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">

=head2 B<REQUIRED> Bucket => Str

The name of the bucket to create.

B<General purpose buckets> - For information about bucket naming
restrictions, see Bucket naming rules
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html)
in the I<Amazon S3 User Guide>.

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



=head2 CreateBucketConfiguration => L<Paws::S3::CreateBucketConfiguration>

The configuration information for the bucket.



=head2 GrantFullControl => Str

Allows grantee the read, write, read ACP, and write ACP permissions on
the bucket.

This functionality is not supported for directory buckets.



=head2 GrantRead => Str

Allows grantee to list the objects in the bucket.

This functionality is not supported for directory buckets.



=head2 GrantReadACP => Str

Allows grantee to read the bucket ACL.

This functionality is not supported for directory buckets.



=head2 GrantWrite => Str

Allows grantee to create new objects in the bucket.

For the bucket and object owners of existing objects, also allows
deletions and overwrites of those objects.

This functionality is not supported for directory buckets.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable bucket.

This functionality is not supported for directory buckets.



=head2 ObjectLockEnabledForBucket => Bool

Specifies whether you want S3 Object Lock to be enabled for the new
bucket.

This functionality is not supported for directory buckets.



=head2 ObjectOwnership => Str



Valid values are: C<"BucketOwnerPreferred">, C<"ObjectWriter">, C<"BucketOwnerEnforced">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBucket in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

