
package Paws::CloudFront::CreateContinuousDeploymentPolicyResult;
  use Moose;
  has ContinuousDeploymentPolicy => (is => 'ro', isa => 'Paws::CloudFront::ContinuousDeploymentPolicy', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateContinuousDeploymentPolicyResult

=head1 ATTRIBUTES


=head2 ContinuousDeploymentPolicy => L<Paws::CloudFront::ContinuousDeploymentPolicy>

A continuous deployment policy.



=head2 ETag => Str

The version identifier for the current version of the continuous
deployment policy.



=head2 Location => Str

The location of the continuous deployment policy.




=cut

