
package Paws::IoTWireless::ListFuotaTasksResponse;
  use Moose;
  has FuotaTaskList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::FuotaTask]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListFuotaTasksResponse

=head1 ATTRIBUTES


=head2 FuotaTaskList => ArrayRef[L<Paws::IoTWireless::FuotaTask>]




=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise B<null> to receive the first set of
results.


=head2 _request_id => Str


=cut

