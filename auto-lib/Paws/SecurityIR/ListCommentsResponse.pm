
package Paws::SecurityIR::ListCommentsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ListCommentsItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Total => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'total');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::ListCommentsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::SecurityIR::ListCommentsItem>]

Response element for ListComments providing the body, commentID,
createDate, creator, lastUpdatedBy and lastUpdatedDate for each
response.


=head2 NextToken => Str

Optional request elements.


=head2 Total => Int

Response element for ListComments identifying the number of responses.


=head2 _request_id => Str


=cut

