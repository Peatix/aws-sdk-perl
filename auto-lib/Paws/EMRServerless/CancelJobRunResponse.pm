
package Paws::EMRServerless::CancelJobRunResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId', required => 1);
  has JobRunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobRunId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::CancelJobRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The output contains the application ID on which the job run is
cancelled.


=head2 B<REQUIRED> JobRunId => Str

The output contains the ID of the cancelled job run.


=head2 _request_id => Str


=cut

