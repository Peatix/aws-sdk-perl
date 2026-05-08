package Paws::Notifications;
  use Moose;
  sub service { 'notifications' }
  sub signing_name { 'notifications' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::AssociateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateManagedNotificationAccountContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::AssociateManagedNotificationAccountContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateManagedNotificationAdditionalChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::AssociateManagedNotificationAdditionalChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::CreateEventRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::CreateNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::DeleteEventRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::DeleteNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterNotificationHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::DeregisterNotificationHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableNotificationsAccessForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::DisableNotificationsAccessForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::DisassociateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateManagedNotificationAccountContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::DisassociateManagedNotificationAccountContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateManagedNotificationAdditionalChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::DisassociateManagedNotificationAdditionalChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableNotificationsAccessForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::EnableNotificationsAccessForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::GetEventRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedNotificationChildEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::GetManagedNotificationChildEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::GetManagedNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedNotificationEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::GetManagedNotificationEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::GetNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNotificationEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::GetNotificationEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNotificationsAccessForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::GetNotificationsAccessForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListEventRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedNotificationChannelAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListManagedNotificationChannelAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedNotificationChildEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListManagedNotificationChildEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedNotificationConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListManagedNotificationConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedNotificationEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListManagedNotificationEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotificationConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListNotificationConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotificationEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListNotificationEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotificationHubs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListNotificationHubs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterNotificationHub {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::RegisterNotificationHub', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::UpdateEventRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Notifications::UpdateNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListChannels(@_, nextToken => $next_result->nextToken);
        push @{ $result->channels }, @{ $next_result->channels };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'channels') foreach (@{ $result->channels });
        $result = $self->ListChannels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'channels') foreach (@{ $result->channels });
    }

    return undef
  }
  sub ListAllEventRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEventRules(@_, nextToken => $next_result->nextToken);
        push @{ $result->eventRules }, @{ $next_result->eventRules };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'eventRules') foreach (@{ $result->eventRules });
        $result = $self->ListEventRules(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'eventRules') foreach (@{ $result->eventRules });
    }

    return undef
  }
  sub ListAllManagedNotificationChannelAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedNotificationChannelAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListManagedNotificationChannelAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->channelAssociations }, @{ $next_result->channelAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'channelAssociations') foreach (@{ $result->channelAssociations });
        $result = $self->ListManagedNotificationChannelAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'channelAssociations') foreach (@{ $result->channelAssociations });
    }

    return undef
  }
  sub ListAllManagedNotificationChildEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedNotificationChildEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListManagedNotificationChildEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->managedNotificationChildEvents }, @{ $next_result->managedNotificationChildEvents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'managedNotificationChildEvents') foreach (@{ $result->managedNotificationChildEvents });
        $result = $self->ListManagedNotificationChildEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'managedNotificationChildEvents') foreach (@{ $result->managedNotificationChildEvents });
    }

    return undef
  }
  sub ListAllManagedNotificationConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedNotificationConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListManagedNotificationConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->managedNotificationConfigurations }, @{ $next_result->managedNotificationConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'managedNotificationConfigurations') foreach (@{ $result->managedNotificationConfigurations });
        $result = $self->ListManagedNotificationConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'managedNotificationConfigurations') foreach (@{ $result->managedNotificationConfigurations });
    }

    return undef
  }
  sub ListAllManagedNotificationEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedNotificationEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListManagedNotificationEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->managedNotificationEvents }, @{ $next_result->managedNotificationEvents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'managedNotificationEvents') foreach (@{ $result->managedNotificationEvents });
        $result = $self->ListManagedNotificationEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'managedNotificationEvents') foreach (@{ $result->managedNotificationEvents });
    }

    return undef
  }
  sub ListAllNotificationConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotificationConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNotificationConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->notificationConfigurations }, @{ $next_result->notificationConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'notificationConfigurations') foreach (@{ $result->notificationConfigurations });
        $result = $self->ListNotificationConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'notificationConfigurations') foreach (@{ $result->notificationConfigurations });
    }

    return undef
  }
  sub ListAllNotificationEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotificationEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNotificationEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->notificationEvents }, @{ $next_result->notificationEvents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'notificationEvents') foreach (@{ $result->notificationEvents });
        $result = $self->ListNotificationEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'notificationEvents') foreach (@{ $result->notificationEvents });
    }

    return undef
  }
  sub ListAllNotificationHubs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotificationHubs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNotificationHubs(@_, nextToken => $next_result->nextToken);
        push @{ $result->notificationHubs }, @{ $next_result->notificationHubs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'notificationHubs') foreach (@{ $result->notificationHubs });
        $result = $self->ListNotificationHubs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'notificationHubs') foreach (@{ $result->notificationHubs });
    }

    return undef
  }


  sub operations { qw/AssociateChannel AssociateManagedNotificationAccountContact AssociateManagedNotificationAdditionalChannel CreateEventRule CreateNotificationConfiguration DeleteEventRule DeleteNotificationConfiguration DeregisterNotificationHub DisableNotificationsAccessForOrganization DisassociateChannel DisassociateManagedNotificationAccountContact DisassociateManagedNotificationAdditionalChannel EnableNotificationsAccessForOrganization GetEventRule GetManagedNotificationChildEvent GetManagedNotificationConfiguration GetManagedNotificationEvent GetNotificationConfiguration GetNotificationEvent GetNotificationsAccessForOrganization ListChannels ListEventRules ListManagedNotificationChannelAssociations ListManagedNotificationChildEvents ListManagedNotificationConfigurations ListManagedNotificationEvents ListNotificationConfigurations ListNotificationEvents ListNotificationHubs ListTagsForResource RegisterNotificationHub TagResource UntagResource UpdateEventRule UpdateNotificationConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications - Perl Interface to AWS AWS User Notifications

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Notifications');
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

The I<Amazon Web Services User Notifications API Reference> provides
descriptions, API request parameters, and the JSON response for each of
the User Notification API actions.

User Notification control plane APIs are currently available in US East
(Virginia) - C<us-east-1>.

GetNotificationEvent
(https://docs.aws.amazon.com/notifications/latest/APIReference/API_GetNotificationEvent.html)
and ListNotificationEvents
(https://docs.aws.amazon.com/notifications/latest/APIReference/API_ListNotificationEvents.html)
APIs are currently available in commercial partition Regions
(https://docs.aws.amazon.com/notifications/latest/userguide/supported-regions.html)
and only return notifications stored in the same Region in which
they're called.

The User Notifications console can only be used in US East (Virginia).
Your data however, is stored in each Region chosen as a notification
hub
(https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html)
in addition to US East (Virginia).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateChannel

=over

=item Arn => Str

=item NotificationConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::AssociateChannel>

Returns: a L<Paws::Notifications::AssociateChannelResponse> instance

Associates a delivery Channel
(https://docs.aws.amazon.com/notifications/latest/userguide/managing-delivery-channels.html)
with a particular C<NotificationConfiguration>. Supported Channels
include Chatbot, the Console Mobile Application, and emails
(notifications-contacts).


=head2 AssociateManagedNotificationAccountContact

=over

=item ContactIdentifier => Str

=item ManagedNotificationConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::AssociateManagedNotificationAccountContact>

Returns: a L<Paws::Notifications::AssociateManagedNotificationAccountContactResponse> instance

Associates an Account Contact with a particular
C<ManagedNotificationConfiguration>.


=head2 AssociateManagedNotificationAdditionalChannel

=over

=item ChannelArn => Str

=item ManagedNotificationConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::AssociateManagedNotificationAdditionalChannel>

Returns: a L<Paws::Notifications::AssociateManagedNotificationAdditionalChannelResponse> instance

Associates an additional Channel with a particular
C<ManagedNotificationConfiguration>.

Supported Channels include Chatbot, the Console Mobile Application, and
emails (notifications-contacts).


=head2 CreateEventRule

=over

=item EventType => Str

=item NotificationConfigurationArn => Str

=item Regions => ArrayRef[Str|Undef]

=item Source => Str

=item [EventPattern => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::CreateEventRule>

Returns: a L<Paws::Notifications::CreateEventRuleResponse> instance

Creates an C<EventRule>
(https://docs.aws.amazon.com/notifications/latest/userguide/glossary.html)
that is associated with a specified C<NotificationConfiguration>.


=head2 CreateNotificationConfiguration

=over

=item Description => Str

=item Name => Str

=item [AggregationDuration => Str]

=item [Tags => L<Paws::Notifications::TagMap>]


=back

Each argument is described in detail in: L<Paws::Notifications::CreateNotificationConfiguration>

Returns: a L<Paws::Notifications::CreateNotificationConfigurationResponse> instance

Creates a new C<NotificationConfiguration>.


=head2 DeleteEventRule

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::DeleteEventRule>

Returns: a L<Paws::Notifications::DeleteEventRuleResponse> instance

Deletes an C<EventRule>.


=head2 DeleteNotificationConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::DeleteNotificationConfiguration>

Returns: a L<Paws::Notifications::DeleteNotificationConfigurationResponse> instance

Deletes a C<NotificationConfiguration>.


=head2 DeregisterNotificationHub

=over

=item NotificationHubRegion => Str


=back

Each argument is described in detail in: L<Paws::Notifications::DeregisterNotificationHub>

Returns: a L<Paws::Notifications::DeregisterNotificationHubResponse> instance

Deregisters a C<NotificationConfiguration> in the specified Region.

You can't deregister the last C<NotificationHub> in the account.
C<NotificationEvents> stored in the deregistered
C<NotificationConfiguration> are no longer be visible. Recreating a new
C<NotificationConfiguration> in the same Region restores access to
those C<NotificationEvents>.


=head2 DisableNotificationsAccessForOrganization






Each argument is described in detail in: L<Paws::Notifications::DisableNotificationsAccessForOrganization>

Returns: a L<Paws::Notifications::DisableNotificationsAccessForOrganizationResponse> instance

Disables service trust between User Notifications and Amazon Web
Services Organizations.


=head2 DisassociateChannel

=over

=item Arn => Str

=item NotificationConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::DisassociateChannel>

Returns: a L<Paws::Notifications::DisassociateChannelResponse> instance

Disassociates a Channel from a specified C<NotificationConfiguration>.
Supported Channels include Chatbot, the Console Mobile Application, and
emails (notifications-contacts).


=head2 DisassociateManagedNotificationAccountContact

=over

=item ContactIdentifier => Str

=item ManagedNotificationConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::DisassociateManagedNotificationAccountContact>

Returns: a L<Paws::Notifications::DisassociateManagedNotificationAccountContactResponse> instance

Disassociates an Account Contact with a particular
C<ManagedNotificationConfiguration>.


=head2 DisassociateManagedNotificationAdditionalChannel

=over

=item ChannelArn => Str

=item ManagedNotificationConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::DisassociateManagedNotificationAdditionalChannel>

Returns: a L<Paws::Notifications::DisassociateManagedNotificationAdditionalChannelResponse> instance

Disassociates an additional Channel from a particular
C<ManagedNotificationConfiguration>.

Supported Channels include Chatbot, the Console Mobile Application, and
emails (notifications-contacts).


=head2 EnableNotificationsAccessForOrganization






Each argument is described in detail in: L<Paws::Notifications::EnableNotificationsAccessForOrganization>

Returns: a L<Paws::Notifications::EnableNotificationsAccessForOrganizationResponse> instance

Enables service trust between User Notifications and Amazon Web
Services Organizations.


=head2 GetEventRule

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::GetEventRule>

Returns: a L<Paws::Notifications::GetEventRuleResponse> instance

Returns a specified C<EventRule>.


=head2 GetManagedNotificationChildEvent

=over

=item Arn => Str

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::GetManagedNotificationChildEvent>

Returns: a L<Paws::Notifications::GetManagedNotificationChildEventResponse> instance

Returns the child event of a specific given
C<ManagedNotificationEvent>.


=head2 GetManagedNotificationConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::GetManagedNotificationConfiguration>

Returns: a L<Paws::Notifications::GetManagedNotificationConfigurationResponse> instance

Returns a specified C<ManagedNotificationConfiguration>.


=head2 GetManagedNotificationEvent

=over

=item Arn => Str

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::GetManagedNotificationEvent>

Returns: a L<Paws::Notifications::GetManagedNotificationEventResponse> instance

Returns a specified C<ManagedNotificationEvent>.


=head2 GetNotificationConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::GetNotificationConfiguration>

Returns: a L<Paws::Notifications::GetNotificationConfigurationResponse> instance

Returns a specified C<NotificationConfiguration>.


=head2 GetNotificationEvent

=over

=item Arn => Str

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::GetNotificationEvent>

Returns: a L<Paws::Notifications::GetNotificationEventResponse> instance

Returns a specified C<NotificationEvent>.

User Notifications stores notifications in the individual Regions you
register as notification hubs and the Region of the source event rule.
C<GetNotificationEvent> only returns notifications stored in the same
Region in which the action is called. User Notifications doesn't
backfill notifications to new Regions selected as notification hubs.
For this reason, we recommend that you make calls in your oldest
registered notification hub. For more information, see Notification
hubs
(https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html)
in the I<Amazon Web Services User Notifications User Guide>.


=head2 GetNotificationsAccessForOrganization






Each argument is described in detail in: L<Paws::Notifications::GetNotificationsAccessForOrganization>

Returns: a L<Paws::Notifications::GetNotificationsAccessForOrganizationResponse> instance

Returns the AccessStatus of Service Trust Enablement for User
Notifications and Amazon Web Services Organizations.


=head2 ListChannels

=over

=item NotificationConfigurationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::ListChannels>

Returns: a L<Paws::Notifications::ListChannelsResponse> instance

Returns a list of Channels for a C<NotificationConfiguration>.


=head2 ListEventRules

=over

=item NotificationConfigurationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::ListEventRules>

Returns: a L<Paws::Notifications::ListEventRulesResponse> instance

Returns a list of C<EventRules> according to specified filters, in
reverse chronological order (newest first).


=head2 ListManagedNotificationChannelAssociations

=over

=item ManagedNotificationConfigurationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::ListManagedNotificationChannelAssociations>

Returns: a L<Paws::Notifications::ListManagedNotificationChannelAssociationsResponse> instance

Returns a list of Account contacts and Channels associated with a
C<ManagedNotificationConfiguration>, in paginated format.


=head2 ListManagedNotificationChildEvents

=over

=item AggregateManagedNotificationEventArn => Str

=item [EndTime => Str]

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OrganizationalUnitId => Str]

=item [RelatedAccount => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::ListManagedNotificationChildEvents>

Returns: a L<Paws::Notifications::ListManagedNotificationChildEventsResponse> instance

Returns a list of C<ManagedNotificationChildEvents> for a specified
aggregate C<ManagedNotificationEvent>, ordered by creation time in
reverse chronological order (newest first).


=head2 ListManagedNotificationConfigurations

=over

=item [ChannelIdentifier => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::ListManagedNotificationConfigurations>

Returns: a L<Paws::Notifications::ListManagedNotificationConfigurationsResponse> instance

Returns a list of Managed Notification Configurations according to
specified filters, ordered by creation time in reverse chronological
order (newest first).


=head2 ListManagedNotificationEvents

=over

=item [EndTime => Str]

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OrganizationalUnitId => Str]

=item [RelatedAccount => Str]

=item [Source => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::ListManagedNotificationEvents>

Returns: a L<Paws::Notifications::ListManagedNotificationEventsResponse> instance

Returns a list of Managed Notification Events according to specified
filters, ordered by creation time in reverse chronological order
(newest first).


=head2 ListNotificationConfigurations

=over

=item [ChannelArn => Str]

=item [EventRuleSource => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::ListNotificationConfigurations>

Returns: a L<Paws::Notifications::ListNotificationConfigurationsResponse> instance

Returns a list of abbreviated C<NotificationConfigurations> according
to specified filters, in reverse chronological order (newest first).


=head2 ListNotificationEvents

=over

=item [AggregateNotificationEventArn => Str]

=item [EndTime => Str]

=item [IncludeChildEvents => Bool]

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Source => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::ListNotificationEvents>

Returns: a L<Paws::Notifications::ListNotificationEventsResponse> instance

Returns a list of C<NotificationEvents> according to specified filters,
in reverse chronological order (newest first).

User Notifications stores notifications in the individual Regions you
register as notification hubs and the Region of the source event rule.
ListNotificationEvents only returns notifications stored in the same
Region in which the action is called. User Notifications doesn't
backfill notifications to new Regions selected as notification hubs.
For this reason, we recommend that you make calls in your oldest
registered notification hub. For more information, see Notification
hubs
(https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html)
in the I<Amazon Web Services User Notifications User Guide>.


=head2 ListNotificationHubs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::ListNotificationHubs>

Returns: a L<Paws::Notifications::ListNotificationHubsResponse> instance

Returns a list of C<NotificationHubs>.


=head2 ListTagsForResource

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Notifications::ListTagsForResource>

Returns: a L<Paws::Notifications::ListTagsForResourceResponse> instance

Returns a list of tags for a specified Amazon Resource Name (ARN).

For more information, see Tagging your Amazon Web Services resources
(https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
in the I<Tagging Amazon Web Services Resources User Guide>.

This is only supported for C<NotificationConfigurations>.


=head2 RegisterNotificationHub

=over

=item NotificationHubRegion => Str


=back

Each argument is described in detail in: L<Paws::Notifications::RegisterNotificationHub>

Returns: a L<Paws::Notifications::RegisterNotificationHubResponse> instance

Registers a C<NotificationConfiguration> in the specified Region.

There is a maximum of one C<NotificationConfiguration> per Region. You
can have a maximum of 3 C<NotificationHub> resources at a time.


=head2 TagResource

=over

=item Arn => Str

=item Tags => L<Paws::Notifications::TagMap>


=back

Each argument is described in detail in: L<Paws::Notifications::TagResource>

Returns: a L<Paws::Notifications::TagResourceResponse> instance

Tags the resource with a tag key and value.

For more information, see Tagging your Amazon Web Services resources
(https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
in the I<Tagging Amazon Web Services Resources User Guide>.

This is only supported for C<NotificationConfigurations>.


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Notifications::UntagResource>

Returns: a L<Paws::Notifications::UntagResourceResponse> instance

Untags a resource with a specified Amazon Resource Name (ARN).

For more information, see Tagging your Amazon Web Services resources
(https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
in the I<Tagging Amazon Web Services Resources User Guide>.


=head2 UpdateEventRule

=over

=item Arn => Str

=item [EventPattern => Str]

=item [Regions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Notifications::UpdateEventRule>

Returns: a L<Paws::Notifications::UpdateEventRuleResponse> instance

Updates an existing C<EventRule>.


=head2 UpdateNotificationConfiguration

=over

=item Arn => Str

=item [AggregationDuration => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Notifications::UpdateNotificationConfiguration>

Returns: a L<Paws::Notifications::UpdateNotificationConfigurationResponse> instance

Updates a C<NotificationConfiguration>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllChannels(sub { },NotificationConfigurationArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllChannels(NotificationConfigurationArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - channels, passing the object as the first parameter, and the string 'channels' as the second parameter 

If not, it will return a a L<Paws::Notifications::ListChannelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventRules(sub { },NotificationConfigurationArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEventRules(NotificationConfigurationArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - eventRules, passing the object as the first parameter, and the string 'eventRules' as the second parameter 

If not, it will return a a L<Paws::Notifications::ListEventRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedNotificationChannelAssociations(sub { },ManagedNotificationConfigurationArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllManagedNotificationChannelAssociations(ManagedNotificationConfigurationArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - channelAssociations, passing the object as the first parameter, and the string 'channelAssociations' as the second parameter 

If not, it will return a a L<Paws::Notifications::ListManagedNotificationChannelAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedNotificationChildEvents(sub { },AggregateManagedNotificationEventArn => Str, [EndTime => Str, Locale => Str, MaxResults => Int, NextToken => Str, OrganizationalUnitId => Str, RelatedAccount => Str, StartTime => Str])

=head2 ListAllManagedNotificationChildEvents(AggregateManagedNotificationEventArn => Str, [EndTime => Str, Locale => Str, MaxResults => Int, NextToken => Str, OrganizationalUnitId => Str, RelatedAccount => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - managedNotificationChildEvents, passing the object as the first parameter, and the string 'managedNotificationChildEvents' as the second parameter 

If not, it will return a a L<Paws::Notifications::ListManagedNotificationChildEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedNotificationConfigurations(sub { },[ChannelIdentifier => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllManagedNotificationConfigurations([ChannelIdentifier => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - managedNotificationConfigurations, passing the object as the first parameter, and the string 'managedNotificationConfigurations' as the second parameter 

If not, it will return a a L<Paws::Notifications::ListManagedNotificationConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedNotificationEvents(sub { },[EndTime => Str, Locale => Str, MaxResults => Int, NextToken => Str, OrganizationalUnitId => Str, RelatedAccount => Str, Source => Str, StartTime => Str])

=head2 ListAllManagedNotificationEvents([EndTime => Str, Locale => Str, MaxResults => Int, NextToken => Str, OrganizationalUnitId => Str, RelatedAccount => Str, Source => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - managedNotificationEvents, passing the object as the first parameter, and the string 'managedNotificationEvents' as the second parameter 

If not, it will return a a L<Paws::Notifications::ListManagedNotificationEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotificationConfigurations(sub { },[ChannelArn => Str, EventRuleSource => Str, MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllNotificationConfigurations([ChannelArn => Str, EventRuleSource => Str, MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - notificationConfigurations, passing the object as the first parameter, and the string 'notificationConfigurations' as the second parameter 

If not, it will return a a L<Paws::Notifications::ListNotificationConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotificationEvents(sub { },[AggregateNotificationEventArn => Str, EndTime => Str, IncludeChildEvents => Bool, Locale => Str, MaxResults => Int, NextToken => Str, Source => Str, StartTime => Str])

=head2 ListAllNotificationEvents([AggregateNotificationEventArn => Str, EndTime => Str, IncludeChildEvents => Bool, Locale => Str, MaxResults => Int, NextToken => Str, Source => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - notificationEvents, passing the object as the first parameter, and the string 'notificationEvents' as the second parameter 

If not, it will return a a L<Paws::Notifications::ListNotificationEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotificationHubs(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllNotificationHubs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - notificationHubs, passing the object as the first parameter, and the string 'notificationHubs' as the second parameter 

If not, it will return a a L<Paws::Notifications::ListNotificationHubsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

