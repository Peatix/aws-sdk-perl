
package Paws::S3Outposts::ListSharedEndpointsResult;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::S3Outposts::Endpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts::ListSharedEndpointsResult

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[L<Paws::S3Outposts::Endpoint>]

The list of endpoints associated with the specified Outpost that have
been shared by Amazon Web Services Resource Access Manager (RAM).


=head2 NextToken => Str

If the number of endpoints associated with the specified Outpost
exceeds C<MaxResults>, you can include this value in subsequent calls
to this operation to retrieve more results.


=head2 _request_id => Str


=cut

