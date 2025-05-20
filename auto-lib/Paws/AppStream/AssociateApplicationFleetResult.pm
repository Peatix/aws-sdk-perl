
package Paws::AppStream::AssociateApplicationFleetResult;
  use Moose;
  has ApplicationFleetAssociation => (is => 'ro', isa => 'Paws::AppStream::ApplicationFleetAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::AssociateApplicationFleetResult

=head1 ATTRIBUTES


=head2 ApplicationFleetAssociation => L<Paws::AppStream::ApplicationFleetAssociation>

If fleet name is specified, this returns the list of applications that
are associated to it. If application ARN is specified, this returns the
list of fleets to which it is associated.


=head2 _request_id => Str


=cut

1;