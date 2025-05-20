
package Paws::OSIS::GetPipelineResponse;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::OSIS::Pipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::GetPipelineResponse

=head1 ATTRIBUTES


=head2 Pipeline => L<Paws::OSIS::Pipeline>

Detailed information about the requested pipeline.


=head2 _request_id => Str


=cut

