
package Paws::EKS::AssociateAccessPolicy;
  use Moose;
  has AccessScope => (is => 'ro', isa => 'Paws::EKS::AccessScope', traits => ['NameInRequest'], request_name => 'accessScope', required => 1);
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has PolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyArn', required => 1);
  has PrincipalArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'principalArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAccessPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/access-entries/{principalArn}/access-policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::AssociateAccessPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::AssociateAccessPolicy - Arguments for method AssociateAccessPolicy on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateAccessPolicy on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method AssociateAccessPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateAccessPolicy.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $AssociateAccessPolicyResponse = $eks->AssociateAccessPolicy(
      AccessScope => {
        Namespaces => [ 'MyString', ... ],    # OPTIONAL
        Type       => 'cluster',    # values: cluster, namespace; OPTIONAL
      },
      ClusterName  => 'MyString',
      PolicyArn    => 'MyString',
      PrincipalArn => 'MyString',

    );

    # Results:
    my $AssociatedAccessPolicy =
      $AssociateAccessPolicyResponse->AssociatedAccessPolicy;
    my $ClusterName  = $AssociateAccessPolicyResponse->ClusterName;
    my $PrincipalArn = $AssociateAccessPolicyResponse->PrincipalArn;

    # Returns a L<Paws::EKS::AssociateAccessPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/AssociateAccessPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessScope => L<Paws::EKS::AccessScope>

The scope for the C<AccessPolicy>. You can scope access policies to an
entire cluster or to specific Kubernetes namespaces.



=head2 B<REQUIRED> ClusterName => Str

The name of your cluster.



=head2 B<REQUIRED> PolicyArn => Str

The ARN of the C<AccessPolicy> that you're associating. For a list of
ARNs, use C<ListAccessPolicies>.



=head2 B<REQUIRED> PrincipalArn => Str

The Amazon Resource Name (ARN) of the IAM user or role for the
C<AccessEntry> that you're associating the access policy to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateAccessPolicy in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

