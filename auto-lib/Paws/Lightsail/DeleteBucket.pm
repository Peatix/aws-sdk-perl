
package Paws::Lightsail::DeleteBucket;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName' , required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceDelete' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBucket');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteBucketResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteBucket - Arguments for method DeleteBucket on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBucket on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBucket.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteBucketResult = $lightsail->DeleteBucket(
      BucketName  => 'MyBucketName',
      ForceDelete => 1,                # OPTIONAL
    );

    # Results:
    my $Operations = $DeleteBucketResult->Operations;

    # Returns a L<Paws::Lightsail::DeleteBucketResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteBucket>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

The name of the bucket to delete.

Use the GetBuckets
(https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBuckets.html)
action to get a list of bucket names that you can specify.



=head2 ForceDelete => Bool

A Boolean value that indicates whether to force delete the bucket.

You must force delete the bucket if it has one of the following
conditions:

=over

=item *

The bucket is the origin of a distribution.

=item *

The bucket has instances that were granted access to it using the
SetResourceAccessForBucket
(https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html)
action.

=item *

The bucket has objects.

=item *

The bucket has access keys.

=back

Force deleting a bucket might impact other resources that rely on the
bucket, such as instances, distributions, or software that use the
issued access keys.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBucket in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

