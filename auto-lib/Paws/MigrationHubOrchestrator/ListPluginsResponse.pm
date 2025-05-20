
package Paws::MigrationHubOrchestrator::ListPluginsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Plugins => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::PluginSummary]', traits => ['NameInRequest'], request_name => 'plugins');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListPluginsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 Plugins => ArrayRef[L<Paws::MigrationHubOrchestrator::PluginSummary>]

Migration Hub Orchestrator plugins.


=head2 _request_id => Str


=cut

