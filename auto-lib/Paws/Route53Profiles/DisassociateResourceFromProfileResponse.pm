
package Paws::Route53Profiles::DisassociateResourceFromProfileResponse;
  use Moose;
  has ProfileResourceAssociation => (is => 'ro', isa => 'Paws::Route53Profiles::ProfileResourceAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::DisassociateResourceFromProfileResponse

=head1 ATTRIBUTES


=head2 ProfileResourceAssociation => L<Paws::Route53Profiles::ProfileResourceAssociation>

Information about the C<DisassociateResourceFromProfile> request,
including the status of the request.


=head2 _request_id => Str


=cut

