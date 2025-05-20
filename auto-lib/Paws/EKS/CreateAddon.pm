
package Paws::EKS::CreateAddon;
  use Moose;
  has AddonName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'addonName', required => 1);
  has AddonVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'addonVersion');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has ConfigurationValues => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationValues');
  has PodIdentityAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EKS::AddonPodIdentityAssociations]', traits => ['NameInRequest'], request_name => 'podIdentityAssociations');
  has ResolveConflicts => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolveConflicts');
  has ServiceAccountRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceAccountRoleArn');
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAddon');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/addons');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::CreateAddonResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreateAddon - Arguments for method CreateAddon on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAddon on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method CreateAddon.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAddon.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $CreateAddonResponse = $eks->CreateAddon(
      AddonName               => 'MyString',
      ClusterName             => 'MyClusterName',
      AddonVersion            => 'MyString',        # OPTIONAL
      ClientRequestToken      => 'MyString',        # OPTIONAL
      ConfigurationValues     => 'MyString',        # OPTIONAL
      PodIdentityAssociations => [
        {
          RoleArn        => 'MyString',
          ServiceAccount => 'MyString',

        },
        ...
      ],                                            # OPTIONAL
      ResolveConflicts      => 'OVERWRITE',         # OPTIONAL
      ServiceAccountRoleArn => 'MyRoleArn',         # OPTIONAL
      Tags                  => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Addon = $CreateAddonResponse->Addon;

    # Returns a L<Paws::EKS::CreateAddonResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreateAddon>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddonName => Str

The name of the add-on. The name must match one of the names returned
by C<DescribeAddonVersions>.



=head2 AddonVersion => Str

The version of the add-on. The version must match one of the versions
returned by C<DescribeAddonVersions>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html).



=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of your cluster.



=head2 ConfigurationValues => Str

The set of configuration values for the add-on that's created. The
values that you provide are validated against the schema returned by
C<DescribeAddonConfiguration>.



=head2 PodIdentityAssociations => ArrayRef[L<Paws::EKS::AddonPodIdentityAssociations>]

An array of Pod Identity Assocations to be created. Each EKS Pod
Identity association maps a Kubernetes service account to an IAM Role.

For more information, see Attach an IAM Role to an Amazon EKS add-on
using Pod Identity
(https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html) in
the I<Amazon EKS User Guide>.



=head2 ResolveConflicts => Str

How to resolve field value conflicts for an Amazon EKS add-on.
Conflicts are handled based on the value you choose:

=over

=item *

B<None> E<ndash> If the self-managed version of the add-on is installed
on your cluster, Amazon EKS doesn't change the value. Creation of the
add-on might fail.

=item *

B<Overwrite> E<ndash> If the self-managed version of the add-on is
installed on your cluster and the Amazon EKS default value is different
than the existing value, Amazon EKS changes the value to the Amazon EKS
default value.

=item *

B<Preserve> E<ndash> This is similar to the NONE option. If the
self-managed version of the add-on is installed on your cluster Amazon
EKS doesn't change the add-on resource properties. Creation of the
add-on might fail if conflicts are detected. This option works
differently during the update operation. For more information, see
C<UpdateAddon>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html).

=back

If you don't currently have the self-managed version of the add-on
installed on your cluster, the Amazon EKS add-on is installed. Amazon
EKS sets all values to default values, regardless of the option that
you specify.

Valid values are: C<"OVERWRITE">, C<"NONE">, C<"PRESERVE">

=head2 ServiceAccountRoleArn => Str

The Amazon Resource Name (ARN) of an existing IAM role to bind to the
add-on's service account. The role must be assigned the IAM permissions
required by the add-on. If you don't specify an existing IAM role, then
the add-on uses the permissions assigned to the node IAM role. For more
information, see Amazon EKS node IAM role
(https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html)
in the I<Amazon EKS User Guide>.

To specify an existing IAM role, you must have an IAM OpenID Connect
(OIDC) provider created for your cluster. For more information, see
Enabling IAM roles for service accounts on your cluster
(https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html)
in the I<Amazon EKS User Guide>.



=head2 Tags => L<Paws::EKS::TagMap>

Metadata that assists with categorization and organization. Each tag
consists of a key and an optional value. You define both. Tags don't
propagate to any other cluster or Amazon Web Services resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAddon in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

