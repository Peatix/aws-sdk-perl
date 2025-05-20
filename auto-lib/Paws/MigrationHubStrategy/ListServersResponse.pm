
package Paws::MigrationHubStrategy::ListServersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ServerInfos => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::ServerDetail]', traits => ['NameInRequest'], request_name => 'serverInfos');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::ListServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token you use to retrieve the next set of results, or null if there
are no more results.


=head2 ServerInfos => ArrayRef[L<Paws::MigrationHubStrategy::ServerDetail>]

The list of servers with detailed information about each server.


=head2 _request_id => Str


=cut

