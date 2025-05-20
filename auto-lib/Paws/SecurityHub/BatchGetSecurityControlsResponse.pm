
package Paws::SecurityHub::BatchGetSecurityControlsResponse;
  use Moose;
  has SecurityControls => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::SecurityControl]', required => 1);
  has UnprocessedIds => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::UnprocessedSecurityControl]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchGetSecurityControlsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityControls => ArrayRef[L<Paws::SecurityHub::SecurityControl>]

An array that returns the identifier, Amazon Resource Name (ARN), and
other details about a security control. The same information is
returned whether the request includes C<SecurityControlId> or
C<SecurityControlArn>.


=head2 UnprocessedIds => ArrayRef[L<Paws::SecurityHub::UnprocessedSecurityControl>]

A security control (identified with C<SecurityControlId>,
C<SecurityControlArn>, or a mix of both parameters) for which details
cannot be returned.


=head2 _request_id => Str


=cut

