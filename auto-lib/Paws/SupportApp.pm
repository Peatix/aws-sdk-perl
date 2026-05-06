package Paws::SupportApp;
  use Moose;
  sub service { 'supportapp' }
  sub signing_name { 'supportapp' }
  sub version { '2021-08-20' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateSlackChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::CreateSlackChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::DeleteAccountAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlackChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::DeleteSlackChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlackWorkspaceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::DeleteSlackWorkspaceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::GetAccountAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSlackChannelConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::ListSlackChannelConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSlackWorkspaceConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::ListSlackWorkspaceConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::PutAccountAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterSlackWorkspaceForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::RegisterSlackWorkspaceForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSlackChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupportApp::UpdateSlackChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateSlackChannelConfiguration DeleteAccountAlias DeleteSlackChannelConfiguration DeleteSlackWorkspaceConfiguration GetAccountAlias ListSlackChannelConfigurations ListSlackWorkspaceConfigurations PutAccountAlias RegisterSlackWorkspaceForOrganization UpdateSlackChannelConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp - Perl Interface to AWS AWS Support App

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SupportApp');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Web Services Support App in Slack

You can use the Amazon Web Services Support App in Slack API to manage
your support cases in Slack for your Amazon Web Services account. After
you configure your Slack workspace and channel with the Amazon Web
Services Support App, you can perform the following tasks directly in
your Slack channel:

=over

=item *

Create, search, update, and resolve your support cases

=item *

Request service quota increases for your account

=item *

Invite Amazon Web Services Support agents to your channel so that you
can chat directly about your support cases

=back

For more information about how to perform these actions in Slack, see
the following documentation in the I<Amazon Web Services Support User
Guide>:

=over

=item *

Amazon Web Services Support App in Slack
(https://docs.aws.amazon.com/awssupport/latest/user/aws-support-app-for-slack.html)

=item *

Joining a live chat session with Amazon Web Services Support
(https://docs.aws.amazon.com/awssupport/latest/user/joining-a-live-chat-session.html)

=item *

Requesting service quota increases
(https://docs.aws.amazon.com/awssupport/latest/user/service-quota-increase.html)

=item *

Amazon Web Services Support App commands in Slack
(https://docs.aws.amazon.com/awssupport/latest/user/support-app-commands.html)

=back

You can also use the Amazon Web Services Management Console instead of
the Amazon Web Services Support App API to manage your Slack
configurations. For more information, see Authorize a Slack workspace
to enable the Amazon Web Services Support App
(https://docs.aws.amazon.com/awssupport/latest/user/authorize-slack-workspace.html).

=over

=item *

You must have a Business or Enterprise Support plan to use the Amazon
Web Services Support App API.

=item *

For more information about the Amazon Web Services Support App
endpoints, see the Amazon Web Services Support App in Slack endpoints
(https://docs.aws.amazon.com/general/latest/gr/awssupport.html#awssupport_app_region)
in the I<Amazon Web Services General Reference>.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateSlackChannelConfiguration

=over

=item ChannelId => Str

=item ChannelRoleArn => Str

=item NotifyOnCaseSeverity => Str

=item TeamId => Str

=item [ChannelName => Str]

=item [NotifyOnAddCorrespondenceToCase => Bool]

=item [NotifyOnCreateOrReopenCase => Bool]

=item [NotifyOnResolveCase => Bool]


=back

Each argument is described in detail in: L<Paws::SupportApp::CreateSlackChannelConfiguration>

Returns: a L<Paws::SupportApp::CreateSlackChannelConfigurationResult> instance

Creates a Slack channel configuration for your Amazon Web Services
account.

=over

=item *

You can add up to 5 Slack workspaces for your account.

=item *

You can add up to 20 Slack channels for your account.

=back

A Slack channel can have up to 100 Amazon Web Services accounts. This
means that only 100 accounts can add the same Slack channel to the
Amazon Web Services Support App. We recommend that you only add the
accounts that you need to manage support cases for your organization.
This can reduce the notifications about case updates that you receive
in the Slack channel.

We recommend that you choose a private Slack channel so that only
members in that channel have read and write access to your support
cases. Anyone in your Slack channel can create, update, or resolve
support cases for your account. Users require an invitation to join
private channels.


=head2 DeleteAccountAlias






Each argument is described in detail in: L<Paws::SupportApp::DeleteAccountAlias>

Returns: a L<Paws::SupportApp::DeleteAccountAliasResult> instance

Deletes an alias for an Amazon Web Services account ID. The alias
appears in the Amazon Web Services Support App page of the Amazon Web
Services Support Center. The alias also appears in Slack messages from
the Amazon Web Services Support App.


=head2 DeleteSlackChannelConfiguration

=over

=item ChannelId => Str

=item TeamId => Str


=back

Each argument is described in detail in: L<Paws::SupportApp::DeleteSlackChannelConfiguration>

Returns: a L<Paws::SupportApp::DeleteSlackChannelConfigurationResult> instance

Deletes a Slack channel configuration from your Amazon Web Services
account. This operation doesn't delete your Slack channel.


=head2 DeleteSlackWorkspaceConfiguration

=over

=item TeamId => Str


=back

Each argument is described in detail in: L<Paws::SupportApp::DeleteSlackWorkspaceConfiguration>

Returns: a L<Paws::SupportApp::DeleteSlackWorkspaceConfigurationResult> instance

Deletes a Slack workspace configuration from your Amazon Web Services
account. This operation doesn't delete your Slack workspace.


=head2 GetAccountAlias






Each argument is described in detail in: L<Paws::SupportApp::GetAccountAlias>

Returns: a L<Paws::SupportApp::GetAccountAliasResult> instance

Retrieves the alias from an Amazon Web Services account ID. The alias
appears in the Amazon Web Services Support App page of the Amazon Web
Services Support Center. The alias also appears in Slack messages from
the Amazon Web Services Support App.


=head2 ListSlackChannelConfigurations

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SupportApp::ListSlackChannelConfigurations>

Returns: a L<Paws::SupportApp::ListSlackChannelConfigurationsResult> instance

Lists the Slack channel configurations for an Amazon Web Services
account.


=head2 ListSlackWorkspaceConfigurations

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SupportApp::ListSlackWorkspaceConfigurations>

Returns: a L<Paws::SupportApp::ListSlackWorkspaceConfigurationsResult> instance

Lists the Slack workspace configurations for an Amazon Web Services
account.


=head2 PutAccountAlias

=over

=item AccountAlias => Str


=back

Each argument is described in detail in: L<Paws::SupportApp::PutAccountAlias>

Returns: a L<Paws::SupportApp::PutAccountAliasResult> instance

Creates or updates an individual alias for each Amazon Web Services
account ID. The alias appears in the Amazon Web Services Support App
page of the Amazon Web Services Support Center. The alias also appears
in Slack messages from the Amazon Web Services Support App.


=head2 RegisterSlackWorkspaceForOrganization

=over

=item TeamId => Str


=back

Each argument is described in detail in: L<Paws::SupportApp::RegisterSlackWorkspaceForOrganization>

Returns: a L<Paws::SupportApp::RegisterSlackWorkspaceForOrganizationResult> instance

Registers a Slack workspace for your Amazon Web Services account. To
call this API, your account must be part of an organization in
Organizations.

If you're the I<management account> and you want to register Slack
workspaces for your organization, you must complete the following
tasks:

=over

=item 1.

Sign in to the Amazon Web Services Support Center
(https://console.aws.amazon.com/support/app) and authorize the Slack
workspaces where you want your organization to have access to. See
Authorize a Slack workspace
(https://docs.aws.amazon.com/awssupport/latest/user/authorize-slack-workspace.html)
in the I<Amazon Web Services Support User Guide>.

=item 2.

Call the C<RegisterSlackWorkspaceForOrganization> API to authorize each
Slack workspace for the organization.

=back

After the management account authorizes the Slack workspace, member
accounts can call this API to authorize the same Slack workspace for
their individual accounts. Member accounts don't need to authorize the
Slack workspace manually through the Amazon Web Services Support Center
(https://console.aws.amazon.com/support/app).

To use the Amazon Web Services Support App, each account must then
complete the following tasks:

=over

=item *

Create an Identity and Access Management (IAM) role with the required
permission. For more information, see Managing access to the Amazon Web
Services Support App
(https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html).

=item *

Configure a Slack channel to use the Amazon Web Services Support App
for support cases for that account. For more information, see
Configuring a Slack channel
(https://docs.aws.amazon.com/awssupport/latest/user/add-your-slack-channel.html).

=back



=head2 UpdateSlackChannelConfiguration

=over

=item ChannelId => Str

=item TeamId => Str

=item [ChannelName => Str]

=item [ChannelRoleArn => Str]

=item [NotifyOnAddCorrespondenceToCase => Bool]

=item [NotifyOnCaseSeverity => Str]

=item [NotifyOnCreateOrReopenCase => Bool]

=item [NotifyOnResolveCase => Bool]


=back

Each argument is described in detail in: L<Paws::SupportApp::UpdateSlackChannelConfiguration>

Returns: a L<Paws::SupportApp::UpdateSlackChannelConfigurationResult> instance

Updates the configuration for a Slack channel, such as case update
notifications.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

