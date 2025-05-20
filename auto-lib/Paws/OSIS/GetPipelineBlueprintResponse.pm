
package Paws::OSIS::GetPipelineBlueprintResponse;
  use Moose;
  has Blueprint => (is => 'ro', isa => 'Paws::OSIS::PipelineBlueprint');
  has Format => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::GetPipelineBlueprintResponse

=head1 ATTRIBUTES


=head2 Blueprint => L<Paws::OSIS::PipelineBlueprint>

The requested blueprint in YAML format.


=head2 Format => Str

The format of the blueprint.


=head2 _request_id => Str


=cut

