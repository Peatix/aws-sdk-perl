
package Paws::Detective::StartInvestigationResponse;
  use Moose;
  has InvestigationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::StartInvestigationResponse

=head1 ATTRIBUTES


=head2 InvestigationId => Str

The investigation ID of the investigation report.


=head2 _request_id => Str


=cut

