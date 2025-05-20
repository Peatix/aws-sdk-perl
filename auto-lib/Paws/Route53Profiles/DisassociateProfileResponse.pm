
package Paws::Route53Profiles::DisassociateProfileResponse;
  use Moose;
  has ProfileAssociation => (is => 'ro', isa => 'Paws::Route53Profiles::ProfileAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::DisassociateProfileResponse

=head1 ATTRIBUTES


=head2 ProfileAssociation => L<Paws::Route53Profiles::ProfileAssociation>

Information about the C<DisassociateProfile> request.


=head2 _request_id => Str


=cut

