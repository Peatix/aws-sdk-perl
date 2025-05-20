
package Paws::TrustedAdvisor::ListChecksResponse;
  use Moose;
  has CheckSummaries => (is => 'ro', isa => 'ArrayRef[Paws::TrustedAdvisor::CheckSummary]', traits => ['NameInRequest'], request_name => 'checkSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListChecksResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckSummaries => ArrayRef[L<Paws::TrustedAdvisor::CheckSummary>]

The list of Checks


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

