
package Paws::Resiliencehub::ListAppsResponse;
  use Moose;
  has AppSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::AppSummary]', traits => ['NameInRequest'], request_name => 'appSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppSummaries => ArrayRef[L<Paws::Resiliencehub::AppSummary>]

Summaries for the Resilience Hub application.


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

