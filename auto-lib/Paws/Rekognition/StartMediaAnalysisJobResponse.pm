
package Paws::Rekognition::StartMediaAnalysisJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartMediaAnalysisJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

Identifier for the created job.


=head2 _request_id => Str


=cut

1;