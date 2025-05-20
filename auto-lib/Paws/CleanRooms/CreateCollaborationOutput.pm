
package Paws::CleanRooms::CreateCollaborationOutput;
  use Moose;
  has Collaboration => (is => 'ro', isa => 'Paws::CleanRooms::Collaboration', traits => ['NameInRequest'], request_name => 'collaboration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateCollaborationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Collaboration => L<Paws::CleanRooms::Collaboration>

The collaboration.


=head2 _request_id => Str


=cut

