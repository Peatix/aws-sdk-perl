
package Paws::AppIntegrations::ListDataIntegrationAssociationsResponse;
  use Moose;
  has DataIntegrationAssociations => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::DataIntegrationAssociationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::ListDataIntegrationAssociationsResponse

=head1 ATTRIBUTES


=head2 DataIntegrationAssociations => ArrayRef[L<Paws::AppIntegrations::DataIntegrationAssociationSummary>]

The Amazon Resource Name (ARN) and unique ID of the DataIntegration
association.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

