
package Paws::ApplicationInsights::DescribeProblemResponse;
  use Moose;
  has Problem => (is => 'ro', isa => 'Paws::ApplicationInsights::Problem');
  has SNSNotificationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeProblemResponse

=head1 ATTRIBUTES


=head2 Problem => L<Paws::ApplicationInsights::Problem>

Information about the problem.


=head2 SNSNotificationArn => Str

The SNS notification topic ARN of the problem.


=head2 _request_id => Str


=cut

1;