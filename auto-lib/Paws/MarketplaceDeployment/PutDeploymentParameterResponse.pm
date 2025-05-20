
package Paws::MarketplaceDeployment::PutDeploymentParameterResponse;
  use Moose;
  has AgreementId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agreementId', required => 1);
  has DeploymentParameterId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentParameterId', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MarketplaceDeployment::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceDeployment::PutDeploymentParameterResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgreementId => Str

The unique identifier of the agreement.


=head2 B<REQUIRED> DeploymentParameterId => Str

The unique identifier of the deployment parameter.


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) associated with the deployment parameter
resource you want to create or update.


=head2 Tags => L<Paws::MarketplaceDeployment::TagsMap>

A map of key-value pairs, where each pair represents a tag saved to the
resource. Tags will only be applied for create operations, and they'll
be ignored if the resource already exists.


=head2 _request_id => Str


=cut

