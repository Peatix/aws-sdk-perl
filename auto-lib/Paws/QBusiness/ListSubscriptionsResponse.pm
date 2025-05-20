
package Paws::QBusiness::ListSubscriptionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Subscription]', traits => ['NameInRequest'], request_name => 'subscriptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListSubscriptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token. You
can use this token in a subsequent request to retrieve the next set of
subscriptions.


=head2 Subscriptions => ArrayRef[L<Paws::QBusiness::Subscription>]

An array of summary information on the subscriptions configured for an
Amazon Q Business application.


=head2 _request_id => Str


=cut

