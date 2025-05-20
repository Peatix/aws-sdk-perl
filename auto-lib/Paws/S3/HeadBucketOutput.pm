
package Paws::S3::HeadBucketOutput;
  use Moose;
  has AccessPointAlias => (is => 'ro', isa => 'Bool', header_name => 'x-amz-access-point-alias', traits => ['ParamInHeader']);
  has BucketLocationName => (is => 'ro', isa => 'Str', header_name => 'x-amz-bucket-location-name', traits => ['ParamInHeader']);
  has BucketLocationType => (is => 'ro', isa => 'Str', header_name => 'x-amz-bucket-location-type', traits => ['ParamInHeader']);
  has BucketRegion => (is => 'ro', isa => 'Str', header_name => 'x-amz-bucket-region', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::HeadBucketOutput

=head1 ATTRIBUTES


=head2 AccessPointAlias => Bool

Indicates whether the bucket name used in the request is an access
point alias.

For directory buckets, the value of this field is C<false>.



=head2 BucketLocationName => Str

The name of the location where the bucket will be created.

For directory buckets, the Zone ID of the Availability Zone or the
Local Zone where the bucket is created. An example Zone ID value for an
Availability Zone is C<usw2-az1>.

This functionality is only supported by directory buckets.



=head2 BucketLocationType => Str

The type of location where the bucket is created.

This functionality is only supported by directory buckets.

Valid values are: C<"AvailabilityZone">, C<"LocalZone">

=head2 BucketRegion => Str

The Region that the bucket is located.




=cut

