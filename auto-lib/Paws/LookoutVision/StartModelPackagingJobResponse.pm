
package Paws::LookoutVision::StartModelPackagingJobResponse;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::StartModelPackagingJobResponse

=head1 ATTRIBUTES


=head2 JobName => Str

The job name for the model packaging job. If you don't supply a job
name in the C<JobName> input parameter, the service creates a job name
for you.


=head2 _request_id => Str


=cut

