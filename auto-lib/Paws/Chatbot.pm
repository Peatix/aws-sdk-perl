package Paws::Chatbot;
  use Moose;
  sub service { 'chatbot' }
  sub signing_name { 'chatbot' }
  sub version { '2017-10-11' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateToConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::AssociateToConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChimeWebhookConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::CreateChimeWebhookConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::CreateCustomAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMicrosoftTeamsChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::CreateMicrosoftTeamsChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSlackChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::CreateSlackChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChimeWebhookConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DeleteChimeWebhookConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DeleteCustomAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMicrosoftTeamsChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DeleteMicrosoftTeamsChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMicrosoftTeamsConfiguredTeam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DeleteMicrosoftTeamsConfiguredTeam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMicrosoftTeamsUserIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DeleteMicrosoftTeamsUserIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlackChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DeleteSlackChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlackUserIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DeleteSlackUserIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSlackWorkspaceAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DeleteSlackWorkspaceAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChimeWebhookConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DescribeChimeWebhookConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSlackChannelConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DescribeSlackChannelConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSlackUserIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DescribeSlackUserIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSlackWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DescribeSlackWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFromConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::DisassociateFromConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::GetAccountPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::GetCustomAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMicrosoftTeamsChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::GetMicrosoftTeamsChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::ListAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::ListCustomActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMicrosoftTeamsChannelConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::ListMicrosoftTeamsChannelConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMicrosoftTeamsConfiguredTeams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::ListMicrosoftTeamsConfiguredTeams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMicrosoftTeamsUserIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::ListMicrosoftTeamsUserIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::UpdateAccountPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChimeWebhookConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::UpdateChimeWebhookConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCustomAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::UpdateCustomAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMicrosoftTeamsChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::UpdateMicrosoftTeamsChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSlackChannelConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chatbot::UpdateSlackChannelConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllChimeWebhookConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeChimeWebhookConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeChimeWebhookConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->WebhookConfigurations }, @{ $next_result->WebhookConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'WebhookConfigurations') foreach (@{ $result->WebhookConfigurations });
        $result = $self->DescribeChimeWebhookConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'WebhookConfigurations') foreach (@{ $result->WebhookConfigurations });
    }

    return undef
  }
  sub DescribeAllSlackChannelConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSlackChannelConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSlackChannelConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->SlackChannelConfigurations }, @{ $next_result->SlackChannelConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SlackChannelConfigurations') foreach (@{ $result->SlackChannelConfigurations });
        $result = $self->DescribeSlackChannelConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SlackChannelConfigurations') foreach (@{ $result->SlackChannelConfigurations });
    }

    return undef
  }
  sub DescribeAllSlackUserIdentities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSlackUserIdentities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSlackUserIdentities(@_, NextToken => $next_result->NextToken);
        push @{ $result->SlackUserIdentities }, @{ $next_result->SlackUserIdentities };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SlackUserIdentities') foreach (@{ $result->SlackUserIdentities });
        $result = $self->DescribeSlackUserIdentities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SlackUserIdentities') foreach (@{ $result->SlackUserIdentities });
    }

    return undef
  }
  sub DescribeAllSlackWorkspaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSlackWorkspaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSlackWorkspaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->SlackWorkspaces }, @{ $next_result->SlackWorkspaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SlackWorkspaces') foreach (@{ $result->SlackWorkspaces });
        $result = $self->DescribeSlackWorkspaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SlackWorkspaces') foreach (@{ $result->SlackWorkspaces });
    }

    return undef
  }
  sub ListAllAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Associations }, @{ $next_result->Associations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Associations') foreach (@{ $result->Associations });
        $result = $self->ListAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Associations') foreach (@{ $result->Associations });
    }

    return undef
  }
  sub ListAllCustomActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCustomActions(@_, NextToken => $next_result->NextToken);
        push @{ $result->CustomActions }, @{ $next_result->CustomActions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CustomActions') foreach (@{ $result->CustomActions });
        $result = $self->ListCustomActions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CustomActions') foreach (@{ $result->CustomActions });
    }

    return undef
  }
  sub ListAllMicrosoftTeamsChannelConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMicrosoftTeamsChannelConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMicrosoftTeamsChannelConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TeamChannelConfigurations }, @{ $next_result->TeamChannelConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TeamChannelConfigurations') foreach (@{ $result->TeamChannelConfigurations });
        $result = $self->ListMicrosoftTeamsChannelConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TeamChannelConfigurations') foreach (@{ $result->TeamChannelConfigurations });
    }

    return undef
  }
  sub ListAllMicrosoftTeamsConfiguredTeams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMicrosoftTeamsConfiguredTeams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMicrosoftTeamsConfiguredTeams(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConfiguredTeams }, @{ $next_result->ConfiguredTeams };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfiguredTeams') foreach (@{ $result->ConfiguredTeams });
        $result = $self->ListMicrosoftTeamsConfiguredTeams(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConfiguredTeams') foreach (@{ $result->ConfiguredTeams });
    }

    return undef
  }
  sub ListAllMicrosoftTeamsUserIdentities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMicrosoftTeamsUserIdentities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMicrosoftTeamsUserIdentities(@_, NextToken => $next_result->NextToken);
        push @{ $result->TeamsUserIdentities }, @{ $next_result->TeamsUserIdentities };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TeamsUserIdentities') foreach (@{ $result->TeamsUserIdentities });
        $result = $self->ListMicrosoftTeamsUserIdentities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TeamsUserIdentities') foreach (@{ $result->TeamsUserIdentities });
    }

    return undef
  }


  sub operations { qw/AssociateToConfiguration CreateChimeWebhookConfiguration CreateCustomAction CreateMicrosoftTeamsChannelConfiguration CreateSlackChannelConfiguration DeleteChimeWebhookConfiguration DeleteCustomAction DeleteMicrosoftTeamsChannelConfiguration DeleteMicrosoftTeamsConfiguredTeam DeleteMicrosoftTeamsUserIdentity DeleteSlackChannelConfiguration DeleteSlackUserIdentity DeleteSlackWorkspaceAuthorization DescribeChimeWebhookConfigurations DescribeSlackChannelConfigurations DescribeSlackUserIdentities DescribeSlackWorkspaces DisassociateFromConfiguration GetAccountPreferences GetCustomAction GetMicrosoftTeamsChannelConfiguration ListAssociations ListCustomActions ListMicrosoftTeamsChannelConfigurations ListMicrosoftTeamsConfiguredTeams ListMicrosoftTeamsUserIdentities ListTagsForResource TagResource UntagResource UpdateAccountPreferences UpdateChimeWebhookConfiguration UpdateCustomAction UpdateMicrosoftTeamsChannelConfiguration UpdateSlackChannelConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot - Perl Interface to AWS AWS Chatbot

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Chatbot');
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

The I<AWS Chatbot API Reference> provides descriptions, API request
parameters, and the XML response for each of the AWS Chatbot API
actions.

AWS Chatbot APIs are currently available in the following Regions:

=over

=item *

US East (Ohio) - C<us-east-2>

=item *

US West (Oregon) - C<us-west-2>

=item *

Asia Pacific (Singapore) - C<ap-southeast-1>

=item *

Europe (Ireland) - C<eu-west-1>

=back

The AWS Chatbot console can only be used in US East (Ohio). Your
configuration data however, is stored in each of the relevant available
Regions.

Your AWS CloudTrail events are logged in whatever Region you call from,
not US East (N. Virginia) by default.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateToConfiguration

=over

=item ChatConfiguration => Str

=item Resource => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::AssociateToConfiguration>

Returns: a L<Paws::Chatbot::AssociateToConfigurationResult> instance

Links a resource (for example, a custom action) to a channel
configuration.


=head2 CreateChimeWebhookConfiguration

=over

=item ConfigurationName => Str

=item IamRoleArn => Str

=item SnsTopicArns => ArrayRef[Str|Undef]

=item WebhookDescription => Str

=item WebhookUrl => Str

=item [LoggingLevel => Str]

=item [Tags => ArrayRef[L<Paws::Chatbot::Tag>]]


=back

Each argument is described in detail in: L<Paws::Chatbot::CreateChimeWebhookConfiguration>

Returns: a L<Paws::Chatbot::CreateChimeWebhookConfigurationResult> instance

Creates an AWS Chatbot configuration for Amazon Chime.


=head2 CreateCustomAction

=over

=item ActionName => Str

=item Definition => L<Paws::Chatbot::CustomActionDefinition>

=item [AliasName => Str]

=item [Attachments => ArrayRef[L<Paws::Chatbot::CustomActionAttachment>]]

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::Chatbot::Tag>]]


=back

Each argument is described in detail in: L<Paws::Chatbot::CreateCustomAction>

Returns: a L<Paws::Chatbot::CreateCustomActionResult> instance

Creates a custom action that can be invoked as an alias or as a button
on a notification.


=head2 CreateMicrosoftTeamsChannelConfiguration

=over

=item ChannelId => Str

=item ConfigurationName => Str

=item IamRoleArn => Str

=item TeamId => Str

=item TenantId => Str

=item [ChannelName => Str]

=item [GuardrailPolicyArns => ArrayRef[Str|Undef]]

=item [LoggingLevel => Str]

=item [SnsTopicArns => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Chatbot::Tag>]]

=item [TeamName => Str]

=item [UserAuthorizationRequired => Bool]


=back

Each argument is described in detail in: L<Paws::Chatbot::CreateMicrosoftTeamsChannelConfiguration>

Returns: a L<Paws::Chatbot::CreateTeamsChannelConfigurationResult> instance

Creates an AWS Chatbot configuration for Microsoft Teams.


=head2 CreateSlackChannelConfiguration

=over

=item ConfigurationName => Str

=item IamRoleArn => Str

=item SlackChannelId => Str

=item SlackTeamId => Str

=item [GuardrailPolicyArns => ArrayRef[Str|Undef]]

=item [LoggingLevel => Str]

=item [SlackChannelName => Str]

=item [SnsTopicArns => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Chatbot::Tag>]]

=item [UserAuthorizationRequired => Bool]


=back

Each argument is described in detail in: L<Paws::Chatbot::CreateSlackChannelConfiguration>

Returns: a L<Paws::Chatbot::CreateSlackChannelConfigurationResult> instance

Creates an AWS Chatbot confugration for Slack.


=head2 DeleteChimeWebhookConfiguration

=over

=item ChatConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::DeleteChimeWebhookConfiguration>

Returns: a L<Paws::Chatbot::DeleteChimeWebhookConfigurationResult> instance

Deletes a Amazon Chime webhook configuration for AWS Chatbot.


=head2 DeleteCustomAction

=over

=item CustomActionArn => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::DeleteCustomAction>

Returns: a L<Paws::Chatbot::DeleteCustomActionResult> instance

Deletes a custom action.


=head2 DeleteMicrosoftTeamsChannelConfiguration

=over

=item ChatConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::DeleteMicrosoftTeamsChannelConfiguration>

Returns: a L<Paws::Chatbot::DeleteTeamsChannelConfigurationResult> instance

Deletes a Microsoft Teams channel configuration for AWS Chatbot


=head2 DeleteMicrosoftTeamsConfiguredTeam

=over

=item TeamId => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::DeleteMicrosoftTeamsConfiguredTeam>

Returns: a L<Paws::Chatbot::DeleteTeamsConfiguredTeamResult> instance

Deletes the Microsoft Teams team authorization allowing for channels to
be configured in that Microsoft Teams team. Note that the Microsoft
Teams team must have no channels configured to remove it.


=head2 DeleteMicrosoftTeamsUserIdentity

=over

=item ChatConfigurationArn => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::DeleteMicrosoftTeamsUserIdentity>

Returns: a L<Paws::Chatbot::DeleteMicrosoftTeamsUserIdentityResult> instance

Identifes a user level permission for a channel configuration.


=head2 DeleteSlackChannelConfiguration

=over

=item ChatConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::DeleteSlackChannelConfiguration>

Returns: a L<Paws::Chatbot::DeleteSlackChannelConfigurationResult> instance

Deletes a Slack channel configuration for AWS Chatbot


=head2 DeleteSlackUserIdentity

=over

=item ChatConfigurationArn => Str

=item SlackTeamId => Str

=item SlackUserId => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::DeleteSlackUserIdentity>

Returns: a L<Paws::Chatbot::DeleteSlackUserIdentityResult> instance

Deletes a user level permission for a Slack channel configuration.


=head2 DeleteSlackWorkspaceAuthorization

=over

=item SlackTeamId => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::DeleteSlackWorkspaceAuthorization>

Returns: a L<Paws::Chatbot::DeleteSlackWorkspaceAuthorizationResult> instance

Deletes the Slack workspace authorization that allows channels to be
configured in that workspace. This requires all configured channels in
the workspace to be deleted.


=head2 DescribeChimeWebhookConfigurations

=over

=item [ChatConfigurationArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::DescribeChimeWebhookConfigurations>

Returns: a L<Paws::Chatbot::DescribeChimeWebhookConfigurationsResult> instance

Lists Amazon Chime webhook configurations optionally filtered by
ChatConfigurationArn


=head2 DescribeSlackChannelConfigurations

=over

=item [ChatConfigurationArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::DescribeSlackChannelConfigurations>

Returns: a L<Paws::Chatbot::DescribeSlackChannelConfigurationsResult> instance

Lists Slack channel configurations optionally filtered by
ChatConfigurationArn


=head2 DescribeSlackUserIdentities

=over

=item [ChatConfigurationArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::DescribeSlackUserIdentities>

Returns: a L<Paws::Chatbot::DescribeSlackUserIdentitiesResult> instance

Lists all Slack user identities with a mapped role.


=head2 DescribeSlackWorkspaces

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::DescribeSlackWorkspaces>

Returns: a L<Paws::Chatbot::DescribeSlackWorkspacesResult> instance

List all authorized Slack workspaces connected to the AWS Account
onboarded with AWS Chatbot.


=head2 DisassociateFromConfiguration

=over

=item ChatConfiguration => Str

=item Resource => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::DisassociateFromConfiguration>

Returns: a L<Paws::Chatbot::DisassociateFromConfigurationResult> instance

Unlink a resource, for example a custom action, from a channel
configuration.


=head2 GetAccountPreferences






Each argument is described in detail in: L<Paws::Chatbot::GetAccountPreferences>

Returns: a L<Paws::Chatbot::GetAccountPreferencesResult> instance

Returns AWS Chatbot account preferences.


=head2 GetCustomAction

=over

=item CustomActionArn => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::GetCustomAction>

Returns: a L<Paws::Chatbot::GetCustomActionResult> instance

Returns a custom action.


=head2 GetMicrosoftTeamsChannelConfiguration

=over

=item ChatConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::GetMicrosoftTeamsChannelConfiguration>

Returns: a L<Paws::Chatbot::GetTeamsChannelConfigurationResult> instance

Returns a Microsoft Teams channel configuration in an AWS account.


=head2 ListAssociations

=over

=item ChatConfiguration => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::ListAssociations>

Returns: a L<Paws::Chatbot::ListAssociationsResult> instance

Lists resources associated with a channel configuration.


=head2 ListCustomActions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::ListCustomActions>

Returns: a L<Paws::Chatbot::ListCustomActionsResult> instance

Lists custom actions defined in this account.


=head2 ListMicrosoftTeamsChannelConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TeamId => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::ListMicrosoftTeamsChannelConfigurations>

Returns: a L<Paws::Chatbot::ListTeamsChannelConfigurationsResult> instance

Lists all AWS Chatbot Microsoft Teams channel configurations in an AWS
account.


=head2 ListMicrosoftTeamsConfiguredTeams

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::ListMicrosoftTeamsConfiguredTeams>

Returns: a L<Paws::Chatbot::ListMicrosoftTeamsConfiguredTeamsResult> instance

Lists all authorized Microsoft Teams for an AWS Account


=head2 ListMicrosoftTeamsUserIdentities

=over

=item [ChatConfigurationArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::ListMicrosoftTeamsUserIdentities>

Returns: a L<Paws::Chatbot::ListMicrosoftTeamsUserIdentitiesResult> instance

A list all Microsoft Teams user identities with a mapped role.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Chatbot::ListTagsForResource>

Returns: a L<Paws::Chatbot::ListTagsForResourceResponse> instance

Lists all of the tags associated with the Amazon Resource Name (ARN)
that you specify. The resource can be a user, server, or role.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::Chatbot::Tag>]


=back

Each argument is described in detail in: L<Paws::Chatbot::TagResource>

Returns: a L<Paws::Chatbot::TagResourceResponse> instance

Attaches a key-value pair to a resource, as identified by its Amazon
Resource Name (ARN). Resources are users, servers, roles, and other
entities.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chatbot::UntagResource>

Returns: a L<Paws::Chatbot::UntagResourceResponse> instance

Detaches a key-value pair from a resource, as identified by its Amazon
Resource Name (ARN). Resources are users, servers, roles, and other
entities.


=head2 UpdateAccountPreferences

=over

=item [TrainingDataCollectionEnabled => Bool]

=item [UserAuthorizationRequired => Bool]


=back

Each argument is described in detail in: L<Paws::Chatbot::UpdateAccountPreferences>

Returns: a L<Paws::Chatbot::UpdateAccountPreferencesResult> instance

Updates AWS Chatbot account preferences.


=head2 UpdateChimeWebhookConfiguration

=over

=item ChatConfigurationArn => Str

=item [IamRoleArn => Str]

=item [LoggingLevel => Str]

=item [SnsTopicArns => ArrayRef[Str|Undef]]

=item [WebhookDescription => Str]

=item [WebhookUrl => Str]


=back

Each argument is described in detail in: L<Paws::Chatbot::UpdateChimeWebhookConfiguration>

Returns: a L<Paws::Chatbot::UpdateChimeWebhookConfigurationResult> instance

Updates a Amazon Chime webhook configuration.


=head2 UpdateCustomAction

=over

=item CustomActionArn => Str

=item Definition => L<Paws::Chatbot::CustomActionDefinition>

=item [AliasName => Str]

=item [Attachments => ArrayRef[L<Paws::Chatbot::CustomActionAttachment>]]


=back

Each argument is described in detail in: L<Paws::Chatbot::UpdateCustomAction>

Returns: a L<Paws::Chatbot::UpdateCustomActionResult> instance

Updates a custom action.


=head2 UpdateMicrosoftTeamsChannelConfiguration

=over

=item ChannelId => Str

=item ChatConfigurationArn => Str

=item [ChannelName => Str]

=item [GuardrailPolicyArns => ArrayRef[Str|Undef]]

=item [IamRoleArn => Str]

=item [LoggingLevel => Str]

=item [SnsTopicArns => ArrayRef[Str|Undef]]

=item [UserAuthorizationRequired => Bool]


=back

Each argument is described in detail in: L<Paws::Chatbot::UpdateMicrosoftTeamsChannelConfiguration>

Returns: a L<Paws::Chatbot::UpdateTeamsChannelConfigurationResult> instance

Updates an Microsoft Teams channel configuration.


=head2 UpdateSlackChannelConfiguration

=over

=item ChatConfigurationArn => Str

=item SlackChannelId => Str

=item [GuardrailPolicyArns => ArrayRef[Str|Undef]]

=item [IamRoleArn => Str]

=item [LoggingLevel => Str]

=item [SlackChannelName => Str]

=item [SnsTopicArns => ArrayRef[Str|Undef]]

=item [UserAuthorizationRequired => Bool]


=back

Each argument is described in detail in: L<Paws::Chatbot::UpdateSlackChannelConfiguration>

Returns: a L<Paws::Chatbot::UpdateSlackChannelConfigurationResult> instance

Updates a Slack channel configuration.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllChimeWebhookConfigurations(sub { },[ChatConfigurationArn => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllChimeWebhookConfigurations([ChatConfigurationArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WebhookConfigurations, passing the object as the first parameter, and the string 'WebhookConfigurations' as the second parameter 

If not, it will return a a L<Paws::Chatbot::DescribeChimeWebhookConfigurationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSlackChannelConfigurations(sub { },[ChatConfigurationArn => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllSlackChannelConfigurations([ChatConfigurationArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SlackChannelConfigurations, passing the object as the first parameter, and the string 'SlackChannelConfigurations' as the second parameter 

If not, it will return a a L<Paws::Chatbot::DescribeSlackChannelConfigurationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSlackUserIdentities(sub { },[ChatConfigurationArn => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllSlackUserIdentities([ChatConfigurationArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SlackUserIdentities, passing the object as the first parameter, and the string 'SlackUserIdentities' as the second parameter 

If not, it will return a a L<Paws::Chatbot::DescribeSlackUserIdentitiesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSlackWorkspaces(sub { },[MaxResults => Int, NextToken => Str])

=head2 DescribeAllSlackWorkspaces([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SlackWorkspaces, passing the object as the first parameter, and the string 'SlackWorkspaces' as the second parameter 

If not, it will return a a L<Paws::Chatbot::DescribeSlackWorkspacesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociations(sub { },ChatConfiguration => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssociations(ChatConfiguration => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Associations, passing the object as the first parameter, and the string 'Associations' as the second parameter 

If not, it will return a a L<Paws::Chatbot::ListAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomActions(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCustomActions([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CustomActions, passing the object as the first parameter, and the string 'CustomActions' as the second parameter 

If not, it will return a a L<Paws::Chatbot::ListCustomActionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMicrosoftTeamsChannelConfigurations(sub { },[MaxResults => Int, NextToken => Str, TeamId => Str])

=head2 ListAllMicrosoftTeamsChannelConfigurations([MaxResults => Int, NextToken => Str, TeamId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TeamChannelConfigurations, passing the object as the first parameter, and the string 'TeamChannelConfigurations' as the second parameter 

If not, it will return a a L<Paws::Chatbot::ListTeamsChannelConfigurationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMicrosoftTeamsConfiguredTeams(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllMicrosoftTeamsConfiguredTeams([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfiguredTeams, passing the object as the first parameter, and the string 'ConfiguredTeams' as the second parameter 

If not, it will return a a L<Paws::Chatbot::ListMicrosoftTeamsConfiguredTeamsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMicrosoftTeamsUserIdentities(sub { },[ChatConfigurationArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllMicrosoftTeamsUserIdentities([ChatConfigurationArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TeamsUserIdentities, passing the object as the first parameter, and the string 'TeamsUserIdentities' as the second parameter 

If not, it will return a a L<Paws::Chatbot::ListMicrosoftTeamsUserIdentitiesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

