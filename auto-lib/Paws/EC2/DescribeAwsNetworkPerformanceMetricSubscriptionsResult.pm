
package Paws::EC2::DescribeAwsNetworkPerformanceMetricSubscriptionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Subscription]', request_name => 'subscriptionSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAwsNetworkPerformanceMetricSubscriptionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Subscriptions => ArrayRef[L<Paws::EC2::Subscription>]

Describes the current Infrastructure Performance subscriptions.


=head2 _request_id => Str


=cut

