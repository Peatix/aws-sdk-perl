
package Paws::EKS::DescribePodIdentityAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'associationId', required => 1);
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePodIdentityAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/pod-identity-associations/{associationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DescribePodIdentityAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribePodIdentityAssociation - Arguments for method DescribePodIdentityAssociation on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePodIdentityAssociation on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DescribePodIdentityAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePodIdentityAssociation.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DescribePodIdentityAssociationResponse =
      $eks->DescribePodIdentityAssociation(
      AssociationId => 'MyString',
      ClusterName   => 'MyString',

      );

    # Results:
    my $Association = $DescribePodIdentityAssociationResponse->Association;

    # Returns a L<Paws::EKS::DescribePodIdentityAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DescribePodIdentityAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The ID of the association that you want the description of.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster that the association is in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePodIdentityAssociation in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

