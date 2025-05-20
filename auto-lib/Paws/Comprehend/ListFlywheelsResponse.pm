
package Paws::Comprehend::ListFlywheelsResponse;
  use Moose;
  has FlywheelSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::FlywheelSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListFlywheelsResponse

=head1 ATTRIBUTES


=head2 FlywheelSummaryList => ArrayRef[L<Paws::Comprehend::FlywheelSummary>]

A list of flywheel properties retrieved by the service in response to
the request.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;