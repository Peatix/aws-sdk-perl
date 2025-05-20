
package Paws::CleanRooms::UpdateProtectedJobOutput;
  use Moose;
  has ProtectedJob => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedJob', traits => ['NameInRequest'], request_name => 'protectedJob', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateProtectedJobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProtectedJob => L<Paws::CleanRooms::ProtectedJob>

The protected job output.


=head2 _request_id => Str


=cut

