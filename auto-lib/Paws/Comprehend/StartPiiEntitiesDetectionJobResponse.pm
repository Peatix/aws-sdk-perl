
package Paws::Comprehend::StartPiiEntitiesDetectionJobResponse;
  use Moose;
  has JobArn => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartPiiEntitiesDetectionJobResponse

=head1 ATTRIBUTES


=head2 JobArn => Str

The Amazon Resource Name (ARN) of the PII entity detection job. It is a
unique, fully qualified identifier for the job. It includes the Amazon
Web Services account, Amazon Web Services Region, and the job ID. The
format of the ARN is as follows:

C<arn:E<lt>partitionE<gt>:comprehend:E<lt>regionE<gt>:E<lt>account-idE<gt>:pii-entities-detection-job/E<lt>job-idE<gt>>

The following is an example job ARN:

C<arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab>


=head2 JobId => Str

The identifier generated for the job.


=head2 JobStatus => Str

The status of the job.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;