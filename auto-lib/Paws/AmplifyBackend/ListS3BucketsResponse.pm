
package Paws::AmplifyBackend::ListS3BucketsResponse;
  use Moose;
  has Buckets => (is => 'ro', isa => 'ArrayRef[Paws::AmplifyBackend::S3BucketInfo]', traits => ['NameInRequest'], request_name => 'buckets');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::ListS3BucketsResponse

=head1 ATTRIBUTES


=head2 Buckets => ArrayRef[L<Paws::AmplifyBackend::S3BucketInfo>]

The list of S3 buckets.


=head2 NextToken => Str

Reserved for future use.


=head2 _request_id => Str


=cut

