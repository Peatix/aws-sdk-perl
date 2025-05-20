
package Paws::EntityResolution::StartMatchingJobOutput;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::StartMatchingJobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID of the job.


=head2 _request_id => Str


=cut

