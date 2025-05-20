
package Paws::EMRServerless::StartJobRunResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId', required => 1);
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has JobRunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobRunId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::StartJobRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

This output displays the application ID on which the job run was
submitted.


=head2 B<REQUIRED> Arn => Str

This output displays the ARN of the job run..


=head2 B<REQUIRED> JobRunId => Str

The output contains the ID of the started job run.


=head2 _request_id => Str


=cut

