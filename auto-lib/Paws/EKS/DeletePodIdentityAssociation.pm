
package Paws::EKS::DeletePodIdentityAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'associationId', required => 1);
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePodIdentityAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/pod-identity-associations/{associationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DeletePodIdentityAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DeletePodIdentityAssociation - Arguments for method DeletePodIdentityAssociation on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePodIdentityAssociation on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DeletePodIdentityAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePodIdentityAssociation.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DeletePodIdentityAssociationResponse =
      $eks->DeletePodIdentityAssociation(
      AssociationId => 'MyString',
      ClusterName   => 'MyString',

      );

    # Results:
    my $Association = $DeletePodIdentityAssociationResponse->Association;

    # Returns a L<Paws::EKS::DeletePodIdentityAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DeletePodIdentityAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The ID of the association to be deleted.



=head2 B<REQUIRED> ClusterName => Str

The cluster name that




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePodIdentityAssociation in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

