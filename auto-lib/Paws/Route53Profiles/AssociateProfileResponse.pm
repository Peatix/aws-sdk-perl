
package Paws::Route53Profiles::AssociateProfileResponse;
  use Moose;
  has ProfileAssociation => (is => 'ro', isa => 'Paws::Route53Profiles::ProfileAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::AssociateProfileResponse

=head1 ATTRIBUTES


=head2 ProfileAssociation => L<Paws::Route53Profiles::ProfileAssociation>

The association that you just created. The association has an ID that
you can use to identify it in other requests, like update and delete.


=head2 _request_id => Str


=cut

