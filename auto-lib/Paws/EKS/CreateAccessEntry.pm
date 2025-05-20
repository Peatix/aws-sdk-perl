
package Paws::EKS::CreateAccessEntry;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has KubernetesGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'kubernetesGroups');
  has PrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has Username => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'username');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessEntry');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/access-entries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::CreateAccessEntryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreateAccessEntry - Arguments for method CreateAccessEntry on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessEntry on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method CreateAccessEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessEntry.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $CreateAccessEntryResponse = $eks->CreateAccessEntry(
      ClusterName        => 'MyString',
      PrincipalArn       => 'MyString',
      ClientRequestToken => 'MyString',             # OPTIONAL
      KubernetesGroups   => [ 'MyString', ... ],    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Type     => 'MyString',    # OPTIONAL
      Username => 'MyString',    # OPTIONAL
    );

    # Results:
    my $AccessEntry = $CreateAccessEntryResponse->AccessEntry;

    # Returns a L<Paws::EKS::CreateAccessEntryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreateAccessEntry>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of your cluster.



=head2 KubernetesGroups => ArrayRef[Str|Undef]

The value for C<name> that you've specified for C<kind: Group> as a
C<subject> in a Kubernetes C<RoleBinding> or C<ClusterRoleBinding>
object. Amazon EKS doesn't confirm that the value for C<name> exists in
any bindings on your cluster. You can specify one or more names.

Kubernetes authorizes the C<principalArn> of the access entry to access
any cluster objects that you've specified in a Kubernetes C<Role> or
C<ClusterRole> object that is also specified in a binding's C<roleRef>.
For more information about creating Kubernetes C<RoleBinding>,
C<ClusterRoleBinding>, C<Role>, or C<ClusterRole> objects, see Using
RBAC Authorization in the Kubernetes documentation
(https://kubernetes.io/docs/reference/access-authn-authz/rbac/).

If you want Amazon EKS to authorize the C<principalArn> (instead of, or
in addition to Kubernetes authorizing the C<principalArn>), you can
associate one or more access policies to the access entry using
C<AssociateAccessPolicy>. If you associate any access policies, the
C<principalARN> has all permissions assigned in the associated access
policies and all permissions in any Kubernetes C<Role> or
C<ClusterRole> objects that the group names are bound to.



=head2 B<REQUIRED> PrincipalArn => Str

The ARN of the IAM principal for the C<AccessEntry>. You can specify
one ARN for each access entry. You can't specify the same ARN in more
than one access entry. This value can't be changed after access entry
creation.

The valid principals differ depending on the type of the access entry
in the C<type> field. For C<STANDARD> access entries, you can use every
IAM principal type. For nodes (C<EC2> (for EKS Auto Mode),
C<EC2_LINUX>, C<EC2_WINDOWS>, C<FARGATE_LINUX>, and C<HYBRID_LINUX>),
the only valid ARN is IAM roles. You can't use the STS session
principal type with access entries because this is a temporary
principal for each session and not a permanent identity that can be
assigned permissions.

IAM best practices
(https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#bp-users-federation-idp)
recommend using IAM roles with temporary credentials, rather than IAM
users with long-term credentials.



=head2 Tags => L<Paws::EKS::TagMap>

Metadata that assists with categorization and organization. Each tag
consists of a key and an optional value. You define both. Tags don't
propagate to any other cluster or Amazon Web Services resources.



=head2 Type => Str

The type of the new access entry. Valid values are C<STANDARD>,
C<FARGATE_LINUX>, C<EC2_LINUX>, C<EC2_WINDOWS>, C<EC2> (for EKS Auto
Mode), C<HYBRID_LINUX>, and C<HYPERPOD_LINUX>.

If the C<principalArn> is for an IAM role that's used for self-managed
Amazon EC2 nodes, specify C<EC2_LINUX> or C<EC2_WINDOWS>. Amazon EKS
grants the necessary permissions to the node for you. If the
C<principalArn> is for any other purpose, specify C<STANDARD>. If you
don't specify a value, Amazon EKS sets the value to C<STANDARD>. If you
have the access mode of the cluster set to C<API_AND_CONFIG_MAP>, it's
unnecessary to create access entries for IAM roles used with Fargate
profiles or managed Amazon EC2 nodes, because Amazon EKS creates
entries in the C<aws-auth> C<ConfigMap> for the roles. You can't change
this value once you've created the access entry.

If you set the value to C<EC2_LINUX> or C<EC2_WINDOWS>, you can't
specify values for C<kubernetesGroups>, or associate an C<AccessPolicy>
to the access entry.



=head2 Username => Str

The username to authenticate to Kubernetes with. We recommend not
specifying a username and letting Amazon EKS specify it for you. For
more information about the value Amazon EKS specifies for you, or
constraints before specifying your own username, see Creating access
entries
(https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries)
in the I<Amazon EKS User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessEntry in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

