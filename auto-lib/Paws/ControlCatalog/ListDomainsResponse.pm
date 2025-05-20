
package Paws::ControlCatalog::ListDomainsResponse;
  use Moose;
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::ControlCatalog::DomainSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlCatalog::ListDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domains => ArrayRef[L<Paws::ControlCatalog::DomainSummary>]

The list of domains that the C<ListDomains> API returns.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

