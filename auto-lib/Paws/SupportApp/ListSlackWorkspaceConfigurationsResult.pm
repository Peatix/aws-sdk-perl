
package Paws::SupportApp::ListSlackWorkspaceConfigurationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SlackWorkspaceConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SupportApp::SlackWorkspaceConfiguration]', traits => ['NameInRequest'], request_name => 'slackWorkspaceConfigurations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::ListSlackWorkspaceConfigurationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The point where pagination should resume when the response returns only
partial results.


=head2 SlackWorkspaceConfigurations => ArrayRef[L<Paws::SupportApp::SlackWorkspaceConfiguration>]

The configurations for a Slack workspace.


=head2 _request_id => Str


=cut

