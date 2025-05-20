
package Paws::DMS::RunFleetAdvisorLsaAnalysisResponse;
  use Moose;
  has LsaAnalysisId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::RunFleetAdvisorLsaAnalysisResponse

=head1 ATTRIBUTES


=head2 LsaAnalysisId => Str

The ID of the LSA analysis run.


=head2 Status => Str

The status of the LSA analysis, for example C<COMPLETED>.


=head2 _request_id => Str


=cut

1;