
package Paws::EMRServerless::GetJobRunResponse;
  use Moose;
  has JobRun => (is => 'ro', isa => 'Paws::EMRServerless::JobRun', traits => ['NameInRequest'], request_name => 'jobRun', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::GetJobRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobRun => L<Paws::EMRServerless::JobRun>

The output displays information about the job run.


=head2 _request_id => Str


=cut

