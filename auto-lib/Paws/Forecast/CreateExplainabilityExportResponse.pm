
package Paws::Forecast::CreateExplainabilityExportResponse;
  use Moose;
  has ExplainabilityExportArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateExplainabilityExportResponse

=head1 ATTRIBUTES


=head2 ExplainabilityExportArn => Str

The Amazon Resource Name (ARN) of the export.


=head2 _request_id => Str


=cut

1;