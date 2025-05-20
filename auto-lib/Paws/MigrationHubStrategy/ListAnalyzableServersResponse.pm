
package Paws::MigrationHubStrategy::ListAnalyzableServersResponse;
  use Moose;
  has AnalyzableServers => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::AnalyzableServerSummary]', traits => ['NameInRequest'], request_name => 'analyzableServers');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::ListAnalyzableServersResponse

=head1 ATTRIBUTES


=head2 AnalyzableServers => ArrayRef[L<Paws::MigrationHubStrategy::AnalyzableServerSummary>]

The list of analyzable servers with summary information about each
server.


=head2 NextToken => Str

The token you use to retrieve the next set of results, or null if there
are no more results.


=head2 _request_id => Str


=cut

