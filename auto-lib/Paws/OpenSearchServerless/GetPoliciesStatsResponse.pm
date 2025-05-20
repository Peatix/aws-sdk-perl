
package Paws::OpenSearchServerless::GetPoliciesStatsResponse;
  use Moose;
  has AccessPolicyStats => (is => 'ro', isa => 'Paws::OpenSearchServerless::AccessPolicyStats');
  has LifecyclePolicyStats => (is => 'ro', isa => 'Paws::OpenSearchServerless::LifecyclePolicyStats');
  has SecurityConfigStats => (is => 'ro', isa => 'Paws::OpenSearchServerless::SecurityConfigStats');
  has SecurityPolicyStats => (is => 'ro', isa => 'Paws::OpenSearchServerless::SecurityPolicyStats');
  has TotalPolicyCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::GetPoliciesStatsResponse

=head1 ATTRIBUTES


=head2 AccessPolicyStats => L<Paws::OpenSearchServerless::AccessPolicyStats>

Information about the data access policies in your account.


=head2 LifecyclePolicyStats => L<Paws::OpenSearchServerless::LifecyclePolicyStats>

Information about the lifecycle policies in your account.


=head2 SecurityConfigStats => L<Paws::OpenSearchServerless::SecurityConfigStats>

Information about the security configurations in your account.


=head2 SecurityPolicyStats => L<Paws::OpenSearchServerless::SecurityPolicyStats>

Information about the security policies in your account.


=head2 TotalPolicyCount => Int

The total number of OpenSearch Serverless security policies and
configurations in your account.


=head2 _request_id => Str


=cut

1;