
package Paws::IoT::DeleteCommandResponse;
  use Moose;
  has StatusCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteCommandResponse

=head1 ATTRIBUTES


=head2 StatusCode => Int

The status code for the command deletion request. The status code is in
the 200 range for a successful request.

=over

=item *

If the command hasn't been deprecated, or has been deprecated for a
duration that is shorter than the maximum time out duration of 12
hours, when calling the C<DeleteCommand> request, the deletion will be
scheduled and a 202 status code will be returned. While the command is
being deleted, it will be in a C<pendingDeletion> state. Once the time
out duration has been reached, the command will be permanently removed
from your account.

=item *

If the command has been deprecated for a duration that is longer than
the maximum time out duration of 12 hours, when calling the
C<DeleteCommand> request, the command will be deleted immediately and a
204 status code will be returned.

=back



=head2 _request_id => Str


=cut

