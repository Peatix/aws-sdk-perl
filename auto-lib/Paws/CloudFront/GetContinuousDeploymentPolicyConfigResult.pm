
package Paws::CloudFront::GetContinuousDeploymentPolicyConfigResult;
  use Moose;
  has ContinuousDeploymentPolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::ContinuousDeploymentPolicyConfig', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetContinuousDeploymentPolicyConfigResult

=head1 ATTRIBUTES


=head2 ContinuousDeploymentPolicyConfig => L<Paws::CloudFront::ContinuousDeploymentPolicyConfig>





=head2 ETag => Str

The version identifier for the current version of the continuous
deployment policy.




=cut

