
package Paws::SecurityIR::CreateMembershipResponse;
  use Moose;
  has MembershipId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::CreateMembershipResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipId => Str

Response element for CreateMembership providing the newly created
membership ID.


=head2 _request_id => Str


=cut

