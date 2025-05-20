
package Paws::CleanRooms::UpdateMembershipOutput;
  use Moose;
  has Membership => (is => 'ro', isa => 'Paws::CleanRooms::Membership', traits => ['NameInRequest'], request_name => 'membership', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateMembershipOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Membership => L<Paws::CleanRooms::Membership>




=head2 _request_id => Str


=cut

