
package Paws::WellArchitected::GetConsolidatedReportOutput;
  use Moose;
  has Base64String => (is => 'ro', isa => 'Str');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::ConsolidatedReportMetric]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetConsolidatedReportOutput

=head1 ATTRIBUTES


=head2 Base64String => Str




=head2 Metrics => ArrayRef[L<Paws::WellArchitected::ConsolidatedReportMetric>]

The metrics that make up the consolidated report.

Only returned when C<JSON> format is requested.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

