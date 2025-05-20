
package Paws::Braket::CancelJobResponse;
  use Moose;
  has CancellationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cancellationStatus', required => 1);
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::CancelJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CancellationStatus => Str

The status of the job cancellation request.

Valid values are: C<"CANCELLING">, C<"CANCELLED">
=head2 B<REQUIRED> JobArn => Str

The ARN of the Amazon Braket job.


=head2 _request_id => Str


=cut

