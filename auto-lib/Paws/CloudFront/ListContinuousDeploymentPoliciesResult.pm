
package Paws::CloudFront::ListContinuousDeploymentPoliciesResult;
  use Moose;
  has ContinuousDeploymentPolicyList => (is => 'ro', isa => 'Paws::CloudFront::ContinuousDeploymentPolicyList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListContinuousDeploymentPoliciesResult

=head1 ATTRIBUTES


=head2 ContinuousDeploymentPolicyList => L<Paws::CloudFront::ContinuousDeploymentPolicyList>

A list of continuous deployment policies.




=cut

