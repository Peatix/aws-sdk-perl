
package Paws::EKS::UpdateAccessEntry;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has KubernetesGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'kubernetesGroups');
  has PrincipalArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'principalArn', required => 1);
  has Username => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'username');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccessEntry');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/access-entries/{principalArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::UpdateAccessEntryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateAccessEntry - Arguments for method UpdateAccessEntry on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccessEntry on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdateAccessEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccessEntry.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdateAccessEntryResponse = $eks->UpdateAccessEntry(
      ClusterName        => 'MyString',
      PrincipalArn       => 'MyString',
      ClientRequestToken => 'MyString',             # OPTIONAL
      KubernetesGroups   => [ 'MyString', ... ],    # OPTIONAL
      Username           => 'MyString',             # OPTIONAL
    );

    # Results:
    my $AccessEntry = $UpdateAccessEntryResponse->AccessEntry;

    # Returns a L<Paws::EKS::UpdateAccessEntryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdateAccessEntry>

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

The ARN of the IAM principal for the C<AccessEntry>.



=head2 Username => Str

The username to authenticate to Kubernetes with. We recommend not
specifying a username and letting Amazon EKS specify it for you. For
more information about the value Amazon EKS specifies for you, or
constraints before specifying your own username, see Creating access
entries
(https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries)
in the I<Amazon EKS User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccessEntry in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

