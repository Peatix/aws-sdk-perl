
package Paws::QBusiness::ListGroupsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::GroupSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListGroupsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::QBusiness::GroupSummary>]

Summary information for list of groups that are mapped to users.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token that
you can use in the subsequent request to retrieve the next set of
groups that are mapped to users.


=head2 _request_id => Str


=cut

