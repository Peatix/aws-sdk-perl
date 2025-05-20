
package Paws::EMRContainers::DeleteJobTemplateResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DeleteJobTemplateResponse

=head1 ATTRIBUTES


=head2 Id => Str

This output contains the ID of the job template that was deleted.


=head2 _request_id => Str


=cut

