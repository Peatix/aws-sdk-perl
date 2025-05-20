
package Paws::EC2::EnableAwsNetworkPerformanceMetricSubscriptionResult;
  use Moose;
  has Output => (is => 'ro', isa => 'Bool', request_name => 'output', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableAwsNetworkPerformanceMetricSubscriptionResult

=head1 ATTRIBUTES


=head2 Output => Bool

Indicates whether the subscribe action was successful.


=head2 _request_id => Str


=cut

