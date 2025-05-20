
package Paws::OSIS::ListPipelineBlueprintsResponse;
  use Moose;
  has Blueprints => (is => 'ro', isa => 'ArrayRef[Paws::OSIS::PipelineBlueprintSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::ListPipelineBlueprintsResponse

=head1 ATTRIBUTES


=head2 Blueprints => ArrayRef[L<Paws::OSIS::PipelineBlueprintSummary>]

A list of available blueprints for Data Prepper.


=head2 _request_id => Str


=cut

