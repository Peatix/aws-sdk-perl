
package Paws::Panorama::CreateNodeFromTemplateJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::CreateNodeFromTemplateJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job's ID.


=head2 _request_id => Str


=cut

