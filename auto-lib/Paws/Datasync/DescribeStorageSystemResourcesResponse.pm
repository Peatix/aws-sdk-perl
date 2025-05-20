
package Paws::Datasync::DescribeStorageSystemResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceDetails => (is => 'ro', isa => 'Paws::Datasync::ResourceDetails');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeStorageSystemResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The opaque string that indicates the position to begin the next list of
results in the response.


=head2 ResourceDetails => L<Paws::Datasync::ResourceDetails>

The information collected about your storage system's resources. A
response can also include Amazon Web Services storage service
recommendations.

For more information, see storage resource information
(https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-findings.html)
collected by and recommendations
(https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html)
provided by DataSync Discovery.


=head2 _request_id => Str


=cut

1;