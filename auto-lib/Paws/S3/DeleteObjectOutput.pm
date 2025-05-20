
package Paws::S3::DeleteObjectOutput;
  use Moose;
  has DeleteMarker => (is => 'ro', isa => 'Bool', header_name => 'x-amz-delete-marker', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectOutput

=head1 ATTRIBUTES


=head2 DeleteMarker => Bool

Indicates whether the specified object version that was permanently
deleted was (true) or was not (false) a delete marker before deletion.
In a simple DELETE, this header indicates whether (true) or not (false)
the current version of the object is a delete marker. To learn more
about delete markers, see Working with delete markers
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeleteMarker.html).

This functionality is not supported for directory buckets.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 VersionId => Str

Returns the version ID of the delete marker created as a result of the
DELETE operation.

This functionality is not supported for directory buckets.




=cut

