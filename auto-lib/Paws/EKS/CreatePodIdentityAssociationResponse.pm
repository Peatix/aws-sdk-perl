
package Paws::EKS::CreatePodIdentityAssociationResponse;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EKS::PodIdentityAssociation', traits => ['NameInRequest'], request_name => 'association');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreatePodIdentityAssociationResponse

=head1 ATTRIBUTES


=head2 Association => L<Paws::EKS::PodIdentityAssociation>

The full description of your new association.

The description includes an ID for the association. Use the ID of the
association in further actions to manage the association.


=head2 _request_id => Str


=cut

