
package Paws::Glue::StartBlueprintRunResponse;
  use Moose;
  has RunId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartBlueprintRunResponse

=head1 ATTRIBUTES


=head2 RunId => Str

The run ID for this blueprint run.


=head2 _request_id => Str


=cut

1;