
package Paws::EKS::UpdatePodIdentityAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'associationId', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePodIdentityAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/pod-identity-associations/{associationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::UpdatePodIdentityAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdatePodIdentityAssociation - Arguments for method UpdatePodIdentityAssociation on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePodIdentityAssociation on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdatePodIdentityAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePodIdentityAssociation.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdatePodIdentityAssociationResponse =
      $eks->UpdatePodIdentityAssociation(
      AssociationId      => 'MyString',
      ClusterName        => 'MyString',
      ClientRequestToken => 'MyString',    # OPTIONAL
      RoleArn            => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Association = $UpdatePodIdentityAssociationResponse->Association;

    # Returns a L<Paws::EKS::UpdatePodIdentityAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdatePodIdentityAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The ID of the association to be updated.



=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster that you want to update the association in.



=head2 RoleArn => Str

The new IAM role to change the




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePodIdentityAssociation in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

