
package Paws::SupportApp::UpdateSlackChannelConfiguration;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelId', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelName');
  has ChannelRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelRoleArn');
  has NotifyOnAddCorrespondenceToCase => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notifyOnAddCorrespondenceToCase');
  has NotifyOnCaseSeverity => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notifyOnCaseSeverity');
  has NotifyOnCreateOrReopenCase => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notifyOnCreateOrReopenCase');
  has NotifyOnResolveCase => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notifyOnResolveCase');
  has TeamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'teamId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSlackChannelConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/control/update-slack-channel-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupportApp::UpdateSlackChannelConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::UpdateSlackChannelConfiguration - Arguments for method UpdateSlackChannelConfiguration on L<Paws::SupportApp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSlackChannelConfiguration on the
L<AWS Support App|Paws::SupportApp> service. Use the attributes of this class
as arguments to method UpdateSlackChannelConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSlackChannelConfiguration.

=head1 SYNOPSIS

    my $supportapp = Paws->service('SupportApp');
    my $UpdateSlackChannelConfigurationResult =
      $supportapp->UpdateSlackChannelConfiguration(
      ChannelId                       => 'MychannelId',
      TeamId                          => 'MyteamId',
      ChannelName                     => 'MychannelName',    # OPTIONAL
      ChannelRoleArn                  => 'MyroleArn',        # OPTIONAL
      NotifyOnAddCorrespondenceToCase => 1,                  # OPTIONAL
      NotifyOnCaseSeverity            => 'none',             # OPTIONAL
      NotifyOnCreateOrReopenCase      => 1,                  # OPTIONAL
      NotifyOnResolveCase             => 1,                  # OPTIONAL
      );

    # Results:
    my $ChannelId      = $UpdateSlackChannelConfigurationResult->ChannelId;
    my $ChannelName    = $UpdateSlackChannelConfigurationResult->ChannelName;
    my $ChannelRoleArn = $UpdateSlackChannelConfigurationResult->ChannelRoleArn;
    my $NotifyOnAddCorrespondenceToCase =
      $UpdateSlackChannelConfigurationResult->NotifyOnAddCorrespondenceToCase;
    my $NotifyOnCaseSeverity =
      $UpdateSlackChannelConfigurationResult->NotifyOnCaseSeverity;
    my $NotifyOnCreateOrReopenCase =
      $UpdateSlackChannelConfigurationResult->NotifyOnCreateOrReopenCase;
    my $NotifyOnResolveCase =
      $UpdateSlackChannelConfigurationResult->NotifyOnResolveCase;
    my $TeamId = $UpdateSlackChannelConfigurationResult->TeamId;

  # Returns a L<Paws::SupportApp::UpdateSlackChannelConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/supportapp/UpdateSlackChannelConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

The channel ID in Slack. This ID identifies a channel within a Slack
workspace.



=head2 ChannelName => Str

The Slack channel name that you want to update.



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

If you specify C<high> or C<all>, at least one of the following
parameters must be C<true>:

=over

=item *

C<notifyOnAddCorrespondenceToCase>

=item *

C<notifyOnCreateOrReopenCase>

=item *

C<notifyOnResolveCase>

=back

If you specify C<none>, any of the following parameters that you
specify in your request must be C<false>:

=over

=item *

C<notifyOnAddCorrespondenceToCase>

=item *

C<notifyOnCreateOrReopenCase>

=item *

C<notifyOnResolveCase>

=back

If you don't specify these parameters in your request, the Amazon Web
Services Support App uses the current values by default.

Valid values are: C<"none">, C<"all">, C<"high">

=head2 NotifyOnCreateOrReopenCase => Bool

Whether you want to get notified when a support case is created or
reopened.



=head2 NotifyOnResolveCase => Bool

Whether you want to get notified when a support case is resolved.



=head2 B<REQUIRED> TeamId => Str

The team ID in Slack. This ID uniquely identifies a Slack workspace,
such as C<T012ABCDEFG>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSlackChannelConfiguration in L<Paws::SupportApp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

