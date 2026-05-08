
package Paws::OpenSearch::ListDomainMaintenancesResponse;
  use Moose;
  has DomainMaintenances => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DomainMaintenanceDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListDomainMaintenancesResponse

=head1 ATTRIBUTES


=head2 DomainMaintenances => ArrayRef[L<Paws::OpenSearch::DomainMaintenanceDetails>]

A list of the submitted maintenance actions.


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

