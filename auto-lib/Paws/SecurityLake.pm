package Paws::SecurityLake;
  use Moose;
  sub service { 'securitylake' }
  sub signing_name { 'securitylake' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateAwsLogSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::CreateAwsLogSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomLogSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::CreateCustomLogSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataLake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::CreateDataLake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataLakeExceptionSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::CreateDataLakeExceptionSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataLakeOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::CreateDataLakeOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscriber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::CreateSubscriber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscriberNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::CreateSubscriberNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAwsLogSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::DeleteAwsLogSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomLogSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::DeleteCustomLogSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataLake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::DeleteDataLake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataLakeExceptionSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::DeleteDataLakeExceptionSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataLakeOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::DeleteDataLakeOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscriber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::DeleteSubscriber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscriberNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::DeleteSubscriberNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterDataLakeDelegatedAdministrator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::DeregisterDataLakeDelegatedAdministrator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataLakeExceptionSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::GetDataLakeExceptionSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataLakeOrganizationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::GetDataLakeOrganizationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataLakeSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::GetDataLakeSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscriber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::GetSubscriber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataLakeExceptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::ListDataLakeExceptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataLakes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::ListDataLakes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLogSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::ListLogSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscribers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::ListSubscribers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDataLakeDelegatedAdministrator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::RegisterDataLakeDelegatedAdministrator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataLake {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::UpdateDataLake', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataLakeExceptionSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::UpdateDataLakeExceptionSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscriber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::UpdateSubscriber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscriberNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityLake::UpdateSubscriberNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllDataLakeSources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDataLakeSources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetDataLakeSources(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataLakeSources }, @{ $next_result->dataLakeSources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataLakeSources') foreach (@{ $result->dataLakeSources });
        $result = $self->GetDataLakeSources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataLakeSources') foreach (@{ $result->dataLakeSources });
    }

    return undef
  }
  sub ListAllDataLakeExceptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataLakeExceptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataLakeExceptions(@_, nextToken => $next_result->nextToken);
        push @{ $result->exceptions }, @{ $next_result->exceptions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'exceptions') foreach (@{ $result->exceptions });
        $result = $self->ListDataLakeExceptions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'exceptions') foreach (@{ $result->exceptions });
    }

    return undef
  }
  sub ListAllLogSources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLogSources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLogSources(@_, nextToken => $next_result->nextToken);
        push @{ $result->sources }, @{ $next_result->sources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sources') foreach (@{ $result->sources });
        $result = $self->ListLogSources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sources') foreach (@{ $result->sources });
    }

    return undef
  }
  sub ListAllSubscribers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscribers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSubscribers(@_, nextToken => $next_result->nextToken);
        push @{ $result->subscribers }, @{ $next_result->subscribers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'subscribers') foreach (@{ $result->subscribers });
        $result = $self->ListSubscribers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'subscribers') foreach (@{ $result->subscribers });
    }

    return undef
  }


  sub operations { qw/CreateAwsLogSource CreateCustomLogSource CreateDataLake CreateDataLakeExceptionSubscription CreateDataLakeOrganizationConfiguration CreateSubscriber CreateSubscriberNotification DeleteAwsLogSource DeleteCustomLogSource DeleteDataLake DeleteDataLakeExceptionSubscription DeleteDataLakeOrganizationConfiguration DeleteSubscriber DeleteSubscriberNotification DeregisterDataLakeDelegatedAdministrator GetDataLakeExceptionSubscription GetDataLakeOrganizationConfiguration GetDataLakeSources GetSubscriber ListDataLakeExceptions ListDataLakes ListLogSources ListSubscribers ListTagsForResource RegisterDataLakeDelegatedAdministrator TagResource UntagResource UpdateDataLake UpdateDataLakeExceptionSubscription UpdateSubscriber UpdateSubscriberNotification / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake - Perl Interface to AWS Amazon Security Lake

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SecurityLake');
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

Amazon Security Lake is a fully managed security data lake service. You
can use Security Lake to automatically centralize security data from
cloud, on-premises, and custom sources into a data lake that's stored
in your Amazon Web Services account. Amazon Web Services Organizations
is an account management service that lets you consolidate multiple
Amazon Web Services accounts into an organization that you create and
centrally manage. With Organizations, you can create member accounts
and invite existing accounts to join your organization. Security Lake
helps you analyze security data for a more complete understanding of
your security posture across the entire organization. It can also help
you improve the protection of your workloads, applications, and data.

The data lake is backed by Amazon Simple Storage Service (Amazon S3)
buckets, and you retain ownership over your data.

Amazon Security Lake integrates with CloudTrail, a service that
provides a record of actions taken by a user, role, or an Amazon Web
Services service. In Security Lake, CloudTrail captures API calls for
Security Lake as events. The calls captured include calls from the
Security Lake console and code calls to the Security Lake API
operations. If you create a trail, you can enable continuous delivery
of CloudTrail events to an Amazon S3 bucket, including events for
Security Lake. If you don't configure a trail, you can still view the
most recent events in the CloudTrail console in Event history. Using
the information collected by CloudTrail you can determine the request
that was made to Security Lake, the IP address from which the request
was made, who made the request, when it was made, and additional
details. To learn more about Security Lake information in CloudTrail,
see the Amazon Security Lake User Guide
(https://docs.aws.amazon.com/security-lake/latest/userguide/securitylake-cloudtrail.html).

Security Lake automates the collection of security-related log and
event data from integrated Amazon Web Services services and third-party
services. It also helps you manage the lifecycle of data with
customizable retention and replication settings. Security Lake converts
ingested data into Apache Parquet format and a standard open-source
schema called the Open Cybersecurity Schema Framework (OCSF).

Other Amazon Web Services services and third-party services can
subscribe to the data that's stored in Security Lake for incident
response and security data analytics.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateAwsLogSource

=over

=item Sources => ArrayRef[L<Paws::SecurityLake::AwsLogSourceConfiguration>]


=back

Each argument is described in detail in: L<Paws::SecurityLake::CreateAwsLogSource>

Returns: a L<Paws::SecurityLake::CreateAwsLogSourceResponse> instance

Adds a natively supported Amazon Web Services service as an Amazon
Security Lake source. Enables source types for member accounts in
required Amazon Web Services Regions, based on the parameters you
specify. You can choose any source type in any Region for either
accounts that are part of a trusted organization or standalone
accounts. Once you add an Amazon Web Services service as a source,
Security Lake starts collecting logs and events from it.

You can use this API only to enable natively supported Amazon Web
Services services as a source. Use C<CreateCustomLogSource> to enable
data collection from a custom source.


=head2 CreateCustomLogSource

=over

=item Configuration => L<Paws::SecurityLake::CustomLogSourceConfiguration>

=item SourceName => Str

=item [EventClasses => ArrayRef[Str|Undef]]

=item [SourceVersion => Str]


=back

Each argument is described in detail in: L<Paws::SecurityLake::CreateCustomLogSource>

Returns: a L<Paws::SecurityLake::CreateCustomLogSourceResponse> instance

Adds a third-party custom source in Amazon Security Lake, from the
Amazon Web Services Region where you want to create a custom source.
Security Lake can collect logs and events from third-party custom
sources. After creating the appropriate IAM role to invoke Glue
crawler, use this API to add a custom source name in Security Lake.
This operation creates a partition in the Amazon S3 bucket for Security
Lake as the target location for log files from the custom source. In
addition, this operation also creates an associated Glue table and an
Glue crawler.


=head2 CreateDataLake

=over

=item Configurations => ArrayRef[L<Paws::SecurityLake::DataLakeConfiguration>]

=item MetaStoreManagerRoleArn => Str

=item [Tags => ArrayRef[L<Paws::SecurityLake::Tag>]]


=back

Each argument is described in detail in: L<Paws::SecurityLake::CreateDataLake>

Returns: a L<Paws::SecurityLake::CreateDataLakeResponse> instance

Initializes an Amazon Security Lake instance with the provided (or
default) configuration. You can enable Security Lake in Amazon Web
Services Regions with customized settings before enabling log
collection in Regions. To specify particular Regions, configure these
Regions using the C<configurations> parameter. If you have already
enabled Security Lake in a Region when you call this command, the
command will update the Region if you provide new configuration
parameters. If you have not already enabled Security Lake in the Region
when you call this API, it will set up the data lake in the Region with
the specified configurations.

When you enable Security Lake, it starts ingesting security data after
the C<CreateAwsLogSource> call and after you create subscribers using
the C<CreateSubscriber> API. This includes ingesting security data from
sources, storing data, and making data accessible to subscribers.
Security Lake also enables all the existing settings and resources that
it stores or maintains for your Amazon Web Services account in the
current Region, including security log and event data. For more
information, see the Amazon Security Lake User Guide
(https://docs.aws.amazon.com/security-lake/latest/userguide/what-is-security-lake.html).


=head2 CreateDataLakeExceptionSubscription

=over

=item NotificationEndpoint => Str

=item SubscriptionProtocol => Str

=item [ExceptionTimeToLive => Int]


=back

Each argument is described in detail in: L<Paws::SecurityLake::CreateDataLakeExceptionSubscription>

Returns: a L<Paws::SecurityLake::CreateDataLakeExceptionSubscriptionResponse> instance

Creates the specified notification subscription in Amazon Security Lake
for the organization you specify. The notification subscription is
created for exceptions that cannot be resolved by Security Lake
automatically.


=head2 CreateDataLakeOrganizationConfiguration

=over

=item [AutoEnableNewAccount => ArrayRef[L<Paws::SecurityLake::DataLakeAutoEnableNewAccountConfiguration>]]


=back

Each argument is described in detail in: L<Paws::SecurityLake::CreateDataLakeOrganizationConfiguration>

Returns: a L<Paws::SecurityLake::CreateDataLakeOrganizationConfigurationResponse> instance

Automatically enables Amazon Security Lake for new member accounts in
your organization. Security Lake is not automatically enabled for any
existing member accounts in your organization.

This operation merges the new data lake organization configuration with
the existing configuration for Security Lake in your organization. If
you want to create a new data lake organization configuration, you must
delete the existing one using DeleteDataLakeOrganizationConfiguration
(https://docs.aws.amazon.com/security-lake/latest/APIReference/API_DeleteDataLakeOrganizationConfiguration.html).


=head2 CreateSubscriber

=over

=item Sources => ArrayRef[L<Paws::SecurityLake::LogSourceResource>]

=item SubscriberIdentity => L<Paws::SecurityLake::AwsIdentity>

=item SubscriberName => Str

=item [AccessTypes => ArrayRef[Str|Undef]]

=item [SubscriberDescription => Str]

=item [Tags => ArrayRef[L<Paws::SecurityLake::Tag>]]


=back

Each argument is described in detail in: L<Paws::SecurityLake::CreateSubscriber>

Returns: a L<Paws::SecurityLake::CreateSubscriberResponse> instance

Creates a subscriber for accounts that are already enabled in Amazon
Security Lake. You can create a subscriber with access to data in the
current Amazon Web Services Region.


=head2 CreateSubscriberNotification

=over

=item Configuration => L<Paws::SecurityLake::NotificationConfiguration>

=item SubscriberId => Str


=back

Each argument is described in detail in: L<Paws::SecurityLake::CreateSubscriberNotification>

Returns: a L<Paws::SecurityLake::CreateSubscriberNotificationResponse> instance

Notifies the subscriber when new data is written to the data lake for
the sources that the subscriber consumes in Security Lake. You can
create only one subscriber notification per subscriber.


=head2 DeleteAwsLogSource

=over

=item Sources => ArrayRef[L<Paws::SecurityLake::AwsLogSourceConfiguration>]


=back

Each argument is described in detail in: L<Paws::SecurityLake::DeleteAwsLogSource>

Returns: a L<Paws::SecurityLake::DeleteAwsLogSourceResponse> instance

Removes a natively supported Amazon Web Services service as an Amazon
Security Lake source. You can remove a source for one or more Regions.
When you remove the source, Security Lake stops collecting data from
that source in the specified Regions and accounts, and subscribers can
no longer consume new data from the source. However, subscribers can
still consume data that Security Lake collected from the source before
removal.

You can choose any source type in any Amazon Web Services Region for
either accounts that are part of a trusted organization or standalone
accounts.


=head2 DeleteCustomLogSource

=over

=item SourceName => Str

=item [SourceVersion => Str]


=back

Each argument is described in detail in: L<Paws::SecurityLake::DeleteCustomLogSource>

Returns: a L<Paws::SecurityLake::DeleteCustomLogSourceResponse> instance

Removes a custom log source from Amazon Security Lake, to stop sending
data from the custom source to Security Lake.


=head2 DeleteDataLake

=over

=item Regions => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityLake::DeleteDataLake>

Returns: a L<Paws::SecurityLake::DeleteDataLakeResponse> instance

When you disable Amazon Security Lake from your account, Security Lake
is disabled in all Amazon Web Services Regions and it stops collecting
data from your sources. Also, this API automatically takes steps to
remove the account from Security Lake. However, Security Lake retains
all of your existing settings and the resources that it created in your
Amazon Web Services account in the current Amazon Web Services Region.

The C<DeleteDataLake> operation does not delete the data that is stored
in your Amazon S3 bucket, which is owned by your Amazon Web Services
account. For more information, see the Amazon Security Lake User Guide
(https://docs.aws.amazon.com/security-lake/latest/userguide/disable-security-lake.html).


=head2 DeleteDataLakeExceptionSubscription






Each argument is described in detail in: L<Paws::SecurityLake::DeleteDataLakeExceptionSubscription>

Returns: a L<Paws::SecurityLake::DeleteDataLakeExceptionSubscriptionResponse> instance

Deletes the specified notification subscription in Amazon Security Lake
for the organization you specify.


=head2 DeleteDataLakeOrganizationConfiguration

=over

=item [AutoEnableNewAccount => ArrayRef[L<Paws::SecurityLake::DataLakeAutoEnableNewAccountConfiguration>]]


=back

Each argument is described in detail in: L<Paws::SecurityLake::DeleteDataLakeOrganizationConfiguration>

Returns: a L<Paws::SecurityLake::DeleteDataLakeOrganizationConfigurationResponse> instance

Turns off automatic enablement of Amazon Security Lake for member
accounts that are added to an organization in Organizations. Only the
delegated Security Lake administrator for an organization can perform
this operation. If the delegated Security Lake administrator performs
this operation, new member accounts won't automatically contribute data
to the data lake.


=head2 DeleteSubscriber

=over

=item SubscriberId => Str


=back

Each argument is described in detail in: L<Paws::SecurityLake::DeleteSubscriber>

Returns: a L<Paws::SecurityLake::DeleteSubscriberResponse> instance

Deletes the subscription permission and all notification settings for
accounts that are already enabled in Amazon Security Lake. When you run
C<DeleteSubscriber>, the subscriber will no longer consume data from
Security Lake and the subscriber is removed. This operation deletes the
subscriber and removes access to data in the current Amazon Web
Services Region.


=head2 DeleteSubscriberNotification

=over

=item SubscriberId => Str


=back

Each argument is described in detail in: L<Paws::SecurityLake::DeleteSubscriberNotification>

Returns: a L<Paws::SecurityLake::DeleteSubscriberNotificationResponse> instance

Deletes the specified subscription notification in Amazon Security Lake
for the organization you specify.


=head2 DeregisterDataLakeDelegatedAdministrator






Each argument is described in detail in: L<Paws::SecurityLake::DeregisterDataLakeDelegatedAdministrator>

Returns: a L<Paws::SecurityLake::DeregisterDataLakeDelegatedAdministratorResponse> instance

Deletes the Amazon Security Lake delegated administrator account for
the organization. This API can only be called by the organization
management account. The organization management account cannot be the
delegated administrator account.


=head2 GetDataLakeExceptionSubscription






Each argument is described in detail in: L<Paws::SecurityLake::GetDataLakeExceptionSubscription>

Returns: a L<Paws::SecurityLake::GetDataLakeExceptionSubscriptionResponse> instance

Retrieves the protocol and endpoint that were provided when subscribing
to Amazon SNS topics for exception notifications.


=head2 GetDataLakeOrganizationConfiguration






Each argument is described in detail in: L<Paws::SecurityLake::GetDataLakeOrganizationConfiguration>

Returns: a L<Paws::SecurityLake::GetDataLakeOrganizationConfigurationResponse> instance

Retrieves the configuration that will be automatically set up for
accounts added to the organization after the organization has onboarded
to Amazon Security Lake. This API does not take input parameters.


=head2 GetDataLakeSources

=over

=item [Accounts => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityLake::GetDataLakeSources>

Returns: a L<Paws::SecurityLake::GetDataLakeSourcesResponse> instance

Retrieves a snapshot of the current Region, including whether Amazon
Security Lake is enabled for those accounts and which sources Security
Lake is collecting data from.


=head2 GetSubscriber

=over

=item SubscriberId => Str


=back

Each argument is described in detail in: L<Paws::SecurityLake::GetSubscriber>

Returns: a L<Paws::SecurityLake::GetSubscriberResponse> instance

Retrieves the subscription information for the specified subscription
ID. You can get information about a specific subscriber.


=head2 ListDataLakeExceptions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Regions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityLake::ListDataLakeExceptions>

Returns: a L<Paws::SecurityLake::ListDataLakeExceptionsResponse> instance

Lists the Amazon Security Lake exceptions that you can use to find the
source of problems and fix them.


=head2 ListDataLakes

=over

=item [Regions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecurityLake::ListDataLakes>

Returns: a L<Paws::SecurityLake::ListDataLakesResponse> instance

Retrieves the Amazon Security Lake configuration object for the
specified Amazon Web Services Regions. You can use this operation to
determine whether Security Lake is enabled for a Region.


=head2 ListLogSources

=over

=item [Accounts => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Regions => ArrayRef[Str|Undef]]

=item [Sources => ArrayRef[L<Paws::SecurityLake::LogSourceResource>]]


=back

Each argument is described in detail in: L<Paws::SecurityLake::ListLogSources>

Returns: a L<Paws::SecurityLake::ListLogSourcesResponse> instance

Retrieves the log sources.


=head2 ListSubscribers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityLake::ListSubscribers>

Returns: a L<Paws::SecurityLake::ListSubscribersResponse> instance

Lists all subscribers for the specific Amazon Security Lake account ID.
You can retrieve a list of subscriptions associated with a specific
organization or Amazon Web Services account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityLake::ListTagsForResource>

Returns: a L<Paws::SecurityLake::ListTagsForResourceResponse> instance

Retrieves the tags (keys and values) that are associated with an Amazon
Security Lake resource: a subscriber, or the data lake configuration
for your Amazon Web Services account in a particular Amazon Web
Services Region.


=head2 RegisterDataLakeDelegatedAdministrator

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::SecurityLake::RegisterDataLakeDelegatedAdministrator>

Returns: a L<Paws::SecurityLake::RegisterDataLakeDelegatedAdministratorResponse> instance

Designates the Amazon Security Lake delegated administrator account for
the organization. This API can only be called by the organization
management account. The organization management account cannot be the
delegated administrator account.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::SecurityLake::Tag>]


=back

Each argument is described in detail in: L<Paws::SecurityLake::TagResource>

Returns: a L<Paws::SecurityLake::TagResourceResponse> instance

Adds or updates one or more tags that are associated with an Amazon
Security Lake resource: a subscriber, or the data lake configuration
for your Amazon Web Services account in a particular Amazon Web
Services Region. A I<tag> is a label that you can define and associate
with Amazon Web Services resources. Each tag consists of a required
I<tag key> and an associated I<tag value>. A I<tag key> is a general
label that acts as a category for a more specific tag value. A I<tag
value> acts as a descriptor for a tag key. Tags can help you identify,
categorize, and manage resources in different ways, such as by owner,
environment, or other criteria. For more information, see Tagging
Amazon Security Lake resources
(https://docs.aws.amazon.com/security-lake/latest/userguide/tagging-resources.html)
in the I<Amazon Security Lake User Guide>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityLake::UntagResource>

Returns: a L<Paws::SecurityLake::UntagResourceResponse> instance

Removes one or more tags (keys and values) from an Amazon Security Lake
resource: a subscriber, or the data lake configuration for your Amazon
Web Services account in a particular Amazon Web Services Region.


=head2 UpdateDataLake

=over

=item Configurations => ArrayRef[L<Paws::SecurityLake::DataLakeConfiguration>]

=item [MetaStoreManagerRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::SecurityLake::UpdateDataLake>

Returns: a L<Paws::SecurityLake::UpdateDataLakeResponse> instance

You can use C<UpdateDataLake> to specify where to store your security
data, how it should be encrypted at rest and for how long. You can add
a Rollup Region
(https://docs.aws.amazon.com/security-lake/latest/userguide/manage-regions.html#add-rollup-region)
to consolidate data from multiple Amazon Web Services Regions, replace
default encryption (SSE-S3) with Customer Manged Key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk),
or specify transition and expiration actions through storage Lifecycle
management
(https://docs.aws.amazon.com/security-lake/latest/userguide/lifecycle-management.html).
The C<UpdateDataLake> API works as an "upsert" operation that performs
an insert if the specified item or record does not exist, or an update
if it already exists. Security Lake securely stores your data at rest
using Amazon Web Services encryption solutions. For more details, see
Data protection in Amazon Security Lake
(https://docs.aws.amazon.com/security-lake/latest/userguide/data-protection.html).

For example, omitting the key C<encryptionConfiguration> from a Region
that is included in an update call that currently uses KMS will leave
that Region's KMS key in place, but specifying
C<encryptionConfiguration: {kmsKeyId: 'S3_MANAGED_KEY'}> for that same
Region will reset the key to C<S3-managed>.

For more details about lifecycle management and how to update retention
settings for one or more Regions after enabling Security Lake, see the
Amazon Security Lake User Guide
(https://docs.aws.amazon.com/security-lake/latest/userguide/lifecycle-management.html).


=head2 UpdateDataLakeExceptionSubscription

=over

=item NotificationEndpoint => Str

=item SubscriptionProtocol => Str

=item [ExceptionTimeToLive => Int]


=back

Each argument is described in detail in: L<Paws::SecurityLake::UpdateDataLakeExceptionSubscription>

Returns: a L<Paws::SecurityLake::UpdateDataLakeExceptionSubscriptionResponse> instance

Updates the specified notification subscription in Amazon Security Lake
for the organization you specify.


=head2 UpdateSubscriber

=over

=item SubscriberId => Str

=item [Sources => ArrayRef[L<Paws::SecurityLake::LogSourceResource>]]

=item [SubscriberDescription => Str]

=item [SubscriberIdentity => L<Paws::SecurityLake::AwsIdentity>]

=item [SubscriberName => Str]


=back

Each argument is described in detail in: L<Paws::SecurityLake::UpdateSubscriber>

Returns: a L<Paws::SecurityLake::UpdateSubscriberResponse> instance

Updates an existing subscription for the given Amazon Security Lake
account ID. You can update a subscriber by changing the sources that
the subscriber consumes data from.


=head2 UpdateSubscriberNotification

=over

=item Configuration => L<Paws::SecurityLake::NotificationConfiguration>

=item SubscriberId => Str


=back

Each argument is described in detail in: L<Paws::SecurityLake::UpdateSubscriberNotification>

Returns: a L<Paws::SecurityLake::UpdateSubscriberNotificationResponse> instance

Updates an existing notification method for the subscription (SQS or
HTTPs endpoint) or switches the notification subscription endpoint for
a subscriber.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllDataLakeSources(sub { },[Accounts => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllDataLakeSources([Accounts => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataLakeSources, passing the object as the first parameter, and the string 'dataLakeSources' as the second parameter 

If not, it will return a a L<Paws::SecurityLake::GetDataLakeSourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataLakeExceptions(sub { },[MaxResults => Int, NextToken => Str, Regions => ArrayRef[Str|Undef]])

=head2 ListAllDataLakeExceptions([MaxResults => Int, NextToken => Str, Regions => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - exceptions, passing the object as the first parameter, and the string 'exceptions' as the second parameter 

If not, it will return a a L<Paws::SecurityLake::ListDataLakeExceptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLogSources(sub { },[Accounts => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Regions => ArrayRef[Str|Undef], Sources => ArrayRef[L<Paws::SecurityLake::LogSourceResource>]])

=head2 ListAllLogSources([Accounts => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Regions => ArrayRef[Str|Undef], Sources => ArrayRef[L<Paws::SecurityLake::LogSourceResource>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sources, passing the object as the first parameter, and the string 'sources' as the second parameter 

If not, it will return a a L<Paws::SecurityLake::ListLogSourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscribers(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSubscribers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - subscribers, passing the object as the first parameter, and the string 'subscribers' as the second parameter 

If not, it will return a a L<Paws::SecurityLake::ListSubscribersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

