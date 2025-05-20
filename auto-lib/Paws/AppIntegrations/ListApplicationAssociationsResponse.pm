
package Paws::AppIntegrations::ListApplicationAssociationsResponse;
  use Moose;
  has ApplicationAssociations => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::ApplicationAssociationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::ListApplicationAssociationsResponse

=head1 ATTRIBUTES


=head2 ApplicationAssociations => ArrayRef[L<Paws::AppIntegrations::ApplicationAssociationSummary>]

List of Application Associations for the Application.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

