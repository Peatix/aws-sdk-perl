
package Paws::Batch::ListConsumableResourcesResponse;
  use Moose;
  has ConsumableResources => (is => 'ro', isa => 'ArrayRef[Paws::Batch::ConsumableResourceSummary]', traits => ['NameInRequest'], request_name => 'consumableResources', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListConsumableResourcesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumableResources => ArrayRef[L<Paws::Batch::ConsumableResourceSummary>]

A list of consumable resources that match the request.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<ListConsumableResources> request. When the results of a
C<ListConsumableResources> request exceed C<maxResults>, this value can
be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

