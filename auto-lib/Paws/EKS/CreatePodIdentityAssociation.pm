
package Paws::EKS::CreatePodIdentityAssociation;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has ServiceAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceAccount', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePodIdentityAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/pod-identity-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::CreatePodIdentityAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreatePodIdentityAssociation - Arguments for method CreatePodIdentityAssociation on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePodIdentityAssociation on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method CreatePodIdentityAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePodIdentityAssociation.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $CreatePodIdentityAssociationResponse =
      $eks->CreatePodIdentityAssociation(
      ClusterName        => 'MyString',
      Namespace          => 'MyString',
      RoleArn            => 'MyString',
      ServiceAccount     => 'MyString',
      ClientRequestToken => 'MyString',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Association = $CreatePodIdentityAssociationResponse->Association;

    # Returns a L<Paws::EKS::CreatePodIdentityAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreatePodIdentityAssociation>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster to create the association in.



=head2 B<REQUIRED> Namespace => Str

The name of the Kubernetes namespace inside the cluster to create the
association in. The service account and the pods that use the service
account must be in this namespace.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to associate with the
service account. The EKS Pod Identity agent manages credentials to
assume this role for applications in the containers in the pods that
use this service account.



=head2 B<REQUIRED> ServiceAccount => Str

The name of the Kubernetes service account inside the cluster to
associate the IAM credentials with.



=head2 Tags => L<Paws::EKS::TagMap>

Metadata that assists with categorization and organization. Each tag
consists of a key and an optional value. You define both. Tags don't
propagate to any other cluster or Amazon Web Services resources.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource E<ndash> 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length E<ndash> 128 Unicode characters in UTF-8

=item *

Maximum value length E<ndash> 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys or values with
this prefix. Tags with this prefix do not count against your tags per
resource limit.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePodIdentityAssociation in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

