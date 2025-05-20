
package Paws::ConnectCases::ListDomainsResponse;
  use Moose;
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::DomainSummary]', traits => ['NameInRequest'], request_name => 'domains', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domains => ArrayRef[L<Paws::ConnectCases::DomainSummary>]

The Cases domain.


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 _request_id => Str


=cut

