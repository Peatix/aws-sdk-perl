
package Paws::SupportApp::CreateSlackChannelConfiguration;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelId', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelName');
  has ChannelRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelRoleArn', required => 1);
  has NotifyOnAddCorrespondenceToCase => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notifyOnAddCorrespondenceToCase');
  has NotifyOnCaseSeverity => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notifyOnCaseSeverity', required => 1);
  has NotifyOnCreateOrReopenCase => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notifyOnCreateOrReopenCase');
  has NotifyOnResolveCase => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notifyOnResolveCase');
  has TeamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'teamId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSlackChannelConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/control/create-slack-channel-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupportApp::CreateSlackChannelConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::CreateSlackChannelConfiguration - Arguments for method CreateSlackChannelConfiguration on L<Paws::SupportApp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSlackChannelConfiguration on the
L<AWS Support App|Paws::SupportApp> service. Use the attributes of this class
as arguments to method CreateSlackChannelConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSlackChannelConfiguration.

=head1 SYNOPSIS

    my $supportapp = Paws->service('SupportApp');
    my $CreateSlackChannelConfigurationResult =
      $supportapp->CreateSlackChannelConfiguration(
      ChannelId                       => 'MychannelId',
      ChannelRoleArn                  => 'MyroleArn',
      NotifyOnCaseSeverity            => 'none',
      TeamId                          => 'MyteamId',
      ChannelName                     => 'MychannelName',    # OPTIONAL
      NotifyOnAddCorrespondenceToCase => 1,                  # OPTIONAL
      NotifyOnCreateOrReopenCase      => 1,                  # OPTIONAL
      NotifyOnResolveCase             => 1,                  # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/supportapp/CreateSlackChannelConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

The channel ID in Slack. This ID identifies a channel within a Slack
workspace.



=head2 ChannelName => Str

The name of the Slack channel that you configure for the Amazon Web
Services Support App.



=head2 B<REQUIRED> ChannelRoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that you want to use to
perform operations on Amazon Web Services. For more information, see
Managing access to the Amazon Web Services Support App
(https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html)
in the I<Amazon Web Services Support User Guide>.



=head2 NotifyOnAddCorrespondenceToCase => Bool

Whether you want to get notified when a support case has a new
correspondence.



=head2 B<REQUIRED> NotifyOnCaseSeverity => Str

The case severity for a support case that you want to receive
notifications.

If you specify C<high> or C<all>, you must specify C<true> for at least
one of the following parameters:

=over

=item *

C<notifyOnAddCorrespondenceToCase>

=item *

C<notifyOnCreateOrReopenCase>

=item *

C<notifyOnResolveCase>

=back

If you specify C<none>, the following parameters must be null or
C<false>:

=over

=item *

C<notifyOnAddCorrespondenceToCase>

=item *

C<notifyOnCreateOrReopenCase>

=item *

C<notifyOnResolveCase>

=back

If you don't specify these parameters in your request, they default to
C<false>.

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

This class forms part of L<Paws>, documenting arguments for method CreateSlackChannelConfiguration in L<Paws::SupportApp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

