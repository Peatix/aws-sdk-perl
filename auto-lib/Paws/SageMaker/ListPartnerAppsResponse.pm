
package Paws::SageMaker::ListPartnerAppsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::PartnerAppSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListPartnerAppsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 Summaries => ArrayRef[L<Paws::SageMaker::PartnerAppSummary>]

The information related to each of the SageMaker Partner AI Apps in an
account.


=head2 _request_id => Str


=cut

1;