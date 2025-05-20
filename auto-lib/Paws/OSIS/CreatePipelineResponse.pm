
package Paws::OSIS::CreatePipelineResponse;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::OSIS::Pipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::CreatePipelineResponse

=head1 ATTRIBUTES


=head2 Pipeline => L<Paws::OSIS::Pipeline>

Container for information about the created pipeline.


=head2 _request_id => Str


=cut

