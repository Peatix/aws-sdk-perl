
package Paws::EKS::ListEksAnywhereSubscriptionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::EKS::EksAnywhereSubscription]', traits => ['NameInRequest'], request_name => 'subscriptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListEksAnywhereSubscriptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken value to include in a future ListEksAnywhereSubscriptions
request. When the results of a ListEksAnywhereSubscriptions request
exceed maxResults, you can use this value to retrieve the next page of
results. This value is null when there are no more results to return.


=head2 Subscriptions => ArrayRef[L<Paws::EKS::EksAnywhereSubscription>]

A list of all subscription objects in the region, filtered by
includeStatus and paginated by nextToken and maxResults.


=head2 _request_id => Str


=cut

