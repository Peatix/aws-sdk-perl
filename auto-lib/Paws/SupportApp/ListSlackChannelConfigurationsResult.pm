
package Paws::SupportApp::ListSlackChannelConfigurationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SlackChannelConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SupportApp::SlackChannelConfiguration]', traits => ['NameInRequest'], request_name => 'slackChannelConfigurations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::ListSlackChannelConfigurationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The point where pagination should resume when the response returns only
partial results.


=head2 B<REQUIRED> SlackChannelConfigurations => ArrayRef[L<Paws::SupportApp::SlackChannelConfiguration>]

The configurations for a Slack channel.


=head2 _request_id => Str


=cut

