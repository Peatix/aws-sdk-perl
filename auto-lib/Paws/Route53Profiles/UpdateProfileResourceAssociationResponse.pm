
package Paws::Route53Profiles::UpdateProfileResourceAssociationResponse;
  use Moose;
  has ProfileResourceAssociation => (is => 'ro', isa => 'Paws::Route53Profiles::ProfileResourceAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::UpdateProfileResourceAssociationResponse

=head1 ATTRIBUTES


=head2 ProfileResourceAssociation => L<Paws::Route53Profiles::ProfileResourceAssociation>

Information about the C<UpdateProfileResourceAssociation> request,
including a status message.


=head2 _request_id => Str


=cut

