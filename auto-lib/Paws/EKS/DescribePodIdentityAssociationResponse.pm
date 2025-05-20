
package Paws::EKS::DescribePodIdentityAssociationResponse;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EKS::PodIdentityAssociation', traits => ['NameInRequest'], request_name => 'association');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribePodIdentityAssociationResponse

=head1 ATTRIBUTES


=head2 Association => L<Paws::EKS::PodIdentityAssociation>

The full description of the EKS Pod Identity association.


=head2 _request_id => Str


=cut

