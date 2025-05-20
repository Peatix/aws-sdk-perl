
package Paws::Lightsail::CreateBucket;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName' , required => 1);
  has BundleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bundleId' , required => 1);
  has EnableObjectVersioning => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableObjectVersioning' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBucket');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateBucketResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateBucket - Arguments for method CreateBucket on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBucket on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBucket.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateBucketResult = $lightsail->CreateBucket(
      BucketName             => 'MyBucketName',
      BundleId               => 'MyNonEmptyString',
      EnableObjectVersioning => 1,                    # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Bucket     = $CreateBucketResult->Bucket;
    my $Operations = $CreateBucketResult->Operations;

    # Returns a L<Paws::Lightsail::CreateBucketResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateBucket>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

The name for the bucket.

For more information about bucket names, see Bucket naming rules in
Amazon Lightsail
(https://docs.aws.amazon.com/lightsail/latest/userguide/bucket-naming-rules-in-amazon-lightsail)
in the I<Amazon Lightsail Developer Guide>.



=head2 B<REQUIRED> BundleId => Str

The ID of the bundle to use for the bucket.

A bucket bundle specifies the monthly cost, storage space, and data
transfer quota for a bucket.

Use the GetBucketBundles
(https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketBundles.html)
action to get a list of bundle IDs that you can specify.

Use the UpdateBucketBundle
(https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html)
action to change the bundle after the bucket is created.



=head2 EnableObjectVersioning => Bool

A Boolean value that indicates whether to enable versioning of objects
in the bucket.

For more information about versioning, see Enabling and suspending
object versioning in a bucket in Amazon Lightsail
(https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-managing-bucket-object-versioning)
in the I<Amazon Lightsail Developer Guide>.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the bucket during creation.

Use the TagResource
(https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_TagResource.html)
action to tag the bucket after it's created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBucket in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

