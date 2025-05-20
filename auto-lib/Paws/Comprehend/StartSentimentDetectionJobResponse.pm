
package Paws::Comprehend::StartSentimentDetectionJobResponse;
  use Moose;
  has JobArn => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartSentimentDetectionJobResponse

=head1 ATTRIBUTES


=head2 JobArn => Str

The Amazon Resource Name (ARN) of the sentiment detection job. It is a
unique, fully qualified identifier for the job. It includes the Amazon
Web Services account, Amazon Web Services Region, and the job ID. The
format of the ARN is as follows:

C<arn:E<lt>partitionE<gt>:comprehend:E<lt>regionE<gt>:E<lt>account-idE<gt>:sentiment-detection-job/E<lt>job-idE<gt>>

The following is an example job ARN:

C<arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab>


=head2 JobId => Str

The identifier generated for the job. To get the status of a job, use
this identifier with the operation.


=head2 JobStatus => Str

The status of the job.

=over

=item *

SUBMITTED - The job has been received and is queued for processing.

=item *

IN_PROGRESS - Amazon Comprehend is processing the job.

=item *

COMPLETED - The job was successfully completed and the output is
available.

=item *

FAILED - The job did not complete. To get details, use the operation.

=back


Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;