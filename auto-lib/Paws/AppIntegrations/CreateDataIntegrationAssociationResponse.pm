
package Paws::AppIntegrations::CreateDataIntegrationAssociationResponse;
  use Moose;
  has DataIntegrationArn => (is => 'ro', isa => 'Str');
  has DataIntegrationAssociationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::CreateDataIntegrationAssociationResponse

=head1 ATTRIBUTES


=head2 DataIntegrationArn => Str

The Amazon Resource Name (ARN) for the DataIntegration.


=head2 DataIntegrationAssociationId => Str

A unique identifier. for the DataIntegrationAssociation.


=head2 _request_id => Str


=cut

