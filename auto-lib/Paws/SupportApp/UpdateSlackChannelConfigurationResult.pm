
package Paws::SupportApp::UpdateSlackChannelConfigurationResult;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelId');
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelName');
  has ChannelRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelRoleArn');
  has NotifyOnAddCorrespondenceToCase => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notifyOnAddCorrespondenceToCase');
  has NotifyOnCaseSeverity => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notifyOnCaseSeverity');
  has NotifyOnCreateOrReopenCase => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notifyOnCreateOrReopenCase');
  has NotifyOnResolveCase => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notifyOnResolveCase');
  has TeamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'teamId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::UpdateSlackChannelConfigurationResult

=head1 ATTRIBUTES


=head2 ChannelId => Str

The channel ID in Slack. This ID identifies a channel within a Slack
workspace.


=head2 ChannelName => Str

The name of the Slack channel that you configure for the Amazon Web
Services Support App.


=head2 ChannelRoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that you want to use to
perform operations on Amazon Web Services. For more information, see
Managing access to the Amazon Web Services Support App
(https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html)
in the I<Amazon Web Services Support User Guide>.


=head2 NotifyOnAddCorrespondenceToCase => Bool

Whether you want to get notified when a support case has a new
correspondence.


=head2 NotifyOnCaseSeverity => Str

The case severity for a support case that you want to receive
notifications.

Valid values are: C<"none">, C<"all">, C<"high">
=head2 NotifyOnCreateOrReopenCase => Bool

Whether you want to get notified when a support case is created or
reopened.


=head2 NotifyOnResolveCase => Bool

Whether you want to get notified when a support case is resolved.


=head2 TeamId => Str

The team ID in Slack. This ID uniquely identifies a Slack workspace,
such as C<T012ABCDEFG>.


=head2 _request_id => Str


=cut

