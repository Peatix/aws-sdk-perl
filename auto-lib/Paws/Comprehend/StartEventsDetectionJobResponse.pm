
package Paws::Comprehend::StartEventsDetectionJobResponse;
  use Moose;
  has JobArn => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartEventsDetectionJobResponse

=head1 ATTRIBUTES


=head2 JobArn => Str

The Amazon Resource Name (ARN) of the events detection job. It is a
unique, fully qualified identifier for the job. It includes the Amazon
Web Services account, Amazon Web Services Region, and the job ID. The
format of the ARN is as follows:

C<arn:E<lt>partitionE<gt>:comprehend:E<lt>regionE<gt>:E<lt>account-idE<gt>:events-detection-job/E<lt>job-idE<gt>>

The following is an example job ARN:

C<arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab>


=head2 JobId => Str

An unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.


=head2 JobStatus => Str

The status of the events detection job.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;