
package Paws::ConnectCases::SearchRelatedItemsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RelatedItems => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::SearchRelatedItemsResponseItem]', traits => ['NameInRequest'], request_name => 'relatedItems', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::SearchRelatedItemsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 B<REQUIRED> RelatedItems => ArrayRef[L<Paws::ConnectCases::SearchRelatedItemsResponseItem>]

A list of items related to a case.


=head2 _request_id => Str


=cut

