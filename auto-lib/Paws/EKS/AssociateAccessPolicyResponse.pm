
package Paws::EKS::AssociateAccessPolicyResponse;
  use Moose;
  has AssociatedAccessPolicy => (is => 'ro', isa => 'Paws::EKS::AssociatedAccessPolicy', traits => ['NameInRequest'], request_name => 'associatedAccessPolicy');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName');
  has PrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::AssociateAccessPolicyResponse

=head1 ATTRIBUTES


=head2 AssociatedAccessPolicy => L<Paws::EKS::AssociatedAccessPolicy>

The C<AccessPolicy> and scope associated to the C<AccessEntry>.


=head2 ClusterName => Str

The name of your cluster.


=head2 PrincipalArn => Str

The ARN of the IAM principal for the C<AccessEntry>.


=head2 _request_id => Str


=cut

