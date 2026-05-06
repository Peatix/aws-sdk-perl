package Paws::CloudTrail;
  use Moose;
  sub service { 'cloudtrail' }
  sub signing_name { 'cloudtrail' }
  sub version { '2013-11-01' }
  sub target_prefix { 'com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::CancelQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::CreateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::CreateDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventDataStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::CreateEventDataStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::CreateTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DeleteChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DeleteDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventDataStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DeleteEventDataStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DeleteTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterOrganizationDelegatedAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DeregisterOrganizationDelegatedAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DescribeQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DescribeTrails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableFederation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DisableFederation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableFederation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::EnableFederation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GenerateQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventDataStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetEventDataStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventSelectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetEventSelectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsightSelectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetInsightSelectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetQueryResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrailStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetTrailStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDashboards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListDashboards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventDataStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListEventDataStores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImportFailures {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListImportFailures', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListImports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInsightsMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListInsightsMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPublicKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListPublicKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::ListTrails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LookupEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::LookupEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEventSelectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::PutEventSelectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutInsightSelectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::PutInsightSelectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterOrganizationDelegatedAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::RegisterOrganizationDelegatedAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::RemoveTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreEventDataStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::RestoreEventDataStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSampleQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::SearchSampleQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDashboardRefresh {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StartDashboardRefresh', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEventDataStoreIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StartEventDataStoreIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StartImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StartLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StartQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEventDataStoreIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StopEventDataStoreIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StopImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StopLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::UpdateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::UpdateDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventDataStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::UpdateEventDataStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::UpdateTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllImportFailures {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImportFailures(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListImportFailures(@_, NextToken => $next_result->NextToken);
        push @{ $result->Failures }, @{ $next_result->Failures };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Failures') foreach (@{ $result->Failures });
        $result = $self->ListImportFailures(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Failures') foreach (@{ $result->Failures });
    }

    return undef
  }
  sub ListAllImports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListImports(@_, NextToken => $next_result->NextToken);
        push @{ $result->Imports }, @{ $next_result->Imports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Imports') foreach (@{ $result->Imports });
        $result = $self->ListImports(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Imports') foreach (@{ $result->Imports });
    }

    return undef
  }
  sub ListAllPublicKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPublicKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPublicKeys(@_, NextToken => $next_result->NextToken);
        push @{ $result->PublicKeyList }, @{ $next_result->PublicKeyList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PublicKeyList') foreach (@{ $result->PublicKeyList });
        $result = $self->ListPublicKeys(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PublicKeyList') foreach (@{ $result->PublicKeyList });
    }

    return undef
  }
  sub ListAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceTagList }, @{ $next_result->ResourceTagList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceTagList') foreach (@{ $result->ResourceTagList });
        $result = $self->ListTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceTagList') foreach (@{ $result->ResourceTagList });
    }

    return undef
  }
  sub ListAllTrails {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrails(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrails(@_, NextToken => $next_result->NextToken);
        push @{ $result->Trails }, @{ $next_result->Trails };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Trails') foreach (@{ $result->Trails });
        $result = $self->ListTrails(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Trails') foreach (@{ $result->Trails });
    }

    return undef
  }
  sub LookupAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->LookupEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->LookupEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->LookupEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }


  sub operations { qw/AddTags CancelQuery CreateChannel CreateDashboard CreateEventDataStore CreateTrail DeleteChannel DeleteDashboard DeleteEventDataStore DeleteResourcePolicy DeleteTrail DeregisterOrganizationDelegatedAdmin DescribeQuery DescribeTrails DisableFederation EnableFederation GenerateQuery GetChannel GetDashboard GetEventDataStore GetEventSelectors GetImport GetInsightSelectors GetQueryResults GetResourcePolicy GetTrail GetTrailStatus ListChannels ListDashboards ListEventDataStores ListImportFailures ListImports ListInsightsMetricData ListPublicKeys ListQueries ListTags ListTrails LookupEvents PutEventSelectors PutInsightSelectors PutResourcePolicy RegisterOrganizationDelegatedAdmin RemoveTags RestoreEventDataStore SearchSampleQueries StartDashboardRefresh StartEventDataStoreIngestion StartImport StartLogging StartQuery StopEventDataStoreIngestion StopImport StopLogging UpdateChannel UpdateDashboard UpdateEventDataStore UpdateTrail / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail - Perl Interface to AWS AWS CloudTrail

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudTrail');
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

CloudTrail

This is the CloudTrail API Reference. It provides descriptions of
actions, data types, common parameters, and common errors for
CloudTrail.

CloudTrail is a web service that records Amazon Web Services API calls
for your Amazon Web Services account and delivers log files to an
Amazon S3 bucket. The recorded information includes the identity of the
user, the start time of the Amazon Web Services API call, the source IP
address, the request parameters, and the response elements returned by
the service.

As an alternative to the API, you can use one of the Amazon Web
Services SDKs, which consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .NET, iOS, Android,
etc.). The SDKs provide programmatic access to CloudTrail. For example,
the SDKs handle cryptographically signing requests, managing errors,
and retrying requests automatically. For more information about the
Amazon Web Services SDKs, including how to download and install them,
see Tools to Build on Amazon Web Services
(http://aws.amazon.com/tools/).

See the CloudTrail User Guide
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
for information about the data that is included with each Amazon Web
Services API call listed in the log files.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AddTags

=over

=item ResourceId => Str

=item TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]


=back

Each argument is described in detail in: L<Paws::CloudTrail::AddTags>

Returns: a L<Paws::CloudTrail::AddTagsResponse> instance

Adds one or more tags to a trail, event data store, dashboard, or
channel, up to a limit of 50. Overwrites an existing tag's value when a
new value is specified for an existing tag key. Tag key names must be
unique; you cannot have two keys with the same name but different
values. If you specify a key without a value, the tag will be created
with the specified key and a value of null. You can tag a trail or
event data store that applies to all Amazon Web Services Regions only
from the Region in which the trail or event data store was created
(also known as its home Region).


=head2 CancelQuery

=over

=item QueryId => Str

=item [EventDataStore => Str]

=item [EventDataStoreOwnerAccountId => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::CancelQuery>

Returns: a L<Paws::CloudTrail::CancelQueryResponse> instance

Cancels a query if the query is not in a terminated state, such as
C<CANCELLED>, C<FAILED>, C<TIMED_OUT>, or C<FINISHED>. You must specify
an ARN value for C<EventDataStore>. The ID of the query that you want
to cancel is also required. When you run C<CancelQuery>, the query
status might show as C<CANCELLED> even if the operation is not yet
finished.


=head2 CreateChannel

=over

=item Destinations => ArrayRef[L<Paws::CloudTrail::Destination>]

=item Name => Str

=item Source => Str

=item [Tags => ArrayRef[L<Paws::CloudTrail::Tag>]]


=back

Each argument is described in detail in: L<Paws::CloudTrail::CreateChannel>

Returns: a L<Paws::CloudTrail::CreateChannelResponse> instance

Creates a channel for CloudTrail to ingest events from a partner or
external source. After you create a channel, a CloudTrail Lake event
data store can log events from the partner or source that you specify.


=head2 CreateDashboard

=over

=item Name => Str

=item [RefreshSchedule => L<Paws::CloudTrail::RefreshSchedule>]

=item [TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]]

=item [TerminationProtectionEnabled => Bool]

=item [Widgets => ArrayRef[L<Paws::CloudTrail::RequestWidget>]]


=back

Each argument is described in detail in: L<Paws::CloudTrail::CreateDashboard>

Returns: a L<Paws::CloudTrail::CreateDashboardResponse> instance

Creates a custom dashboard or the Highlights dashboard.

=over

=item *

B<Custom dashboards> - Custom dashboards allow you to query events in
any event data store type. You can add up to 10 widgets to a custom
dashboard. You can manually refresh a custom dashboard, or you can set
a refresh schedule.

=item *

B<Highlights dashboard> - You can create the Highlights dashboard to
see a summary of key user activities and API usage across all your
event data stores. CloudTrail Lake manages the Highlights dashboard and
refreshes the dashboard every 6 hours. To create the Highlights
dashboard, you must set and enable a refresh schedule.

=back

CloudTrail runs queries to populate the dashboard's widgets during a
manual or scheduled refresh. CloudTrail must be granted permissions to
run the C<StartQuery> operation on your behalf. To provide permissions,
run the C<PutResourcePolicy> operation to attach a resource-based
policy to each event data store. For more information, see Example:
Allow CloudTrail to run queries to populate a dashboard
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard)
in the I<CloudTrail User Guide>.

To set a refresh schedule, CloudTrail must be granted permissions to
run the C<StartDashboardRefresh> operation to refresh the dashboard on
your behalf. To provide permissions, run the C<PutResourcePolicy>
operation to attach a resource-based policy to the dashboard. For more
information, see Resource-based policy example for a dashboard
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards)
in the I<CloudTrail User Guide>.

For more information about dashboards, see CloudTrail Lake dashboards
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-dashboard.html)
in the I<CloudTrail User Guide>.


=head2 CreateEventDataStore

=over

=item Name => Str

=item [AdvancedEventSelectors => ArrayRef[L<Paws::CloudTrail::AdvancedEventSelector>]]

=item [BillingMode => Str]

=item [KmsKeyId => Str]

=item [MultiRegionEnabled => Bool]

=item [OrganizationEnabled => Bool]

=item [RetentionPeriod => Int]

=item [StartIngestion => Bool]

=item [TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]]

=item [TerminationProtectionEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::CloudTrail::CreateEventDataStore>

Returns: a L<Paws::CloudTrail::CreateEventDataStoreResponse> instance

Creates a new event data store.


=head2 CreateTrail

=over

=item Name => Str

=item S3BucketName => Str

=item [CloudWatchLogsLogGroupArn => Str]

=item [CloudWatchLogsRoleArn => Str]

=item [EnableLogFileValidation => Bool]

=item [IncludeGlobalServiceEvents => Bool]

=item [IsMultiRegionTrail => Bool]

=item [IsOrganizationTrail => Bool]

=item [KmsKeyId => Str]

=item [S3KeyPrefix => Str]

=item [SnsTopicName => Str]

=item [TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]]


=back

Each argument is described in detail in: L<Paws::CloudTrail::CreateTrail>

Returns: a L<Paws::CloudTrail::CreateTrailResponse> instance

Creates a trail that specifies the settings for delivery of log data to
an Amazon S3 bucket.


=head2 DeleteChannel

=over

=item Channel => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::DeleteChannel>

Returns: a L<Paws::CloudTrail::DeleteChannelResponse> instance

Deletes a channel.


=head2 DeleteDashboard

=over

=item DashboardId => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::DeleteDashboard>

Returns: a L<Paws::CloudTrail::DeleteDashboardResponse> instance

Deletes the specified dashboard. You cannot delete a dashboard that has
termination protection enabled.


=head2 DeleteEventDataStore

=over

=item EventDataStore => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::DeleteEventDataStore>

Returns: a L<Paws::CloudTrail::DeleteEventDataStoreResponse> instance

Disables the event data store specified by C<EventDataStore>, which
accepts an event data store ARN. After you run C<DeleteEventDataStore>,
the event data store enters a C<PENDING_DELETION> state, and is
automatically deleted after a wait period of seven days.
C<TerminationProtectionEnabled> must be set to C<False> on the event
data store and the C<FederationStatus> must be C<DISABLED>. You cannot
delete an event data store if C<TerminationProtectionEnabled> is
C<True> or the C<FederationStatus> is C<ENABLED>.

After you run C<DeleteEventDataStore> on an event data store, you
cannot run C<ListQueries>, C<DescribeQuery>, or C<GetQueryResults> on
queries that are using an event data store in a C<PENDING_DELETION>
state. An event data store in the C<PENDING_DELETION> state does not
incur costs.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::DeleteResourcePolicy>

Returns: a L<Paws::CloudTrail::DeleteResourcePolicyResponse> instance

Deletes the resource-based policy attached to the CloudTrail event data
store, dashboard, or channel.


=head2 DeleteTrail

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::DeleteTrail>

Returns: a L<Paws::CloudTrail::DeleteTrailResponse> instance

Deletes a trail. This operation must be called from the Region in which
the trail was created. C<DeleteTrail> cannot be called on the shadow
trails (replicated trails in other Regions) of a trail that is enabled
in all Regions.


=head2 DeregisterOrganizationDelegatedAdmin

=over

=item DelegatedAdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::DeregisterOrganizationDelegatedAdmin>

Returns: a L<Paws::CloudTrail::DeregisterOrganizationDelegatedAdminResponse> instance

Removes CloudTrail delegated administrator permissions from a member
account in an organization.


=head2 DescribeQuery

=over

=item [EventDataStore => Str]

=item [EventDataStoreOwnerAccountId => Str]

=item [QueryAlias => Str]

=item [QueryId => Str]

=item [RefreshId => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::DescribeQuery>

Returns: a L<Paws::CloudTrail::DescribeQueryResponse> instance

Returns metadata about a query, including query run time in
milliseconds, number of events scanned and matched, and query status.
If the query results were delivered to an S3 bucket, the response also
provides the S3 URI and the delivery status.

You must specify either C<QueryId> or C<QueryAlias>. Specifying the
C<QueryAlias> parameter returns information about the last query run
for the alias. You can provide C<RefreshId> along with C<QueryAlias> to
view the query results of a dashboard query for the specified
C<RefreshId>.


=head2 DescribeTrails

=over

=item [IncludeShadowTrails => Bool]

=item [TrailNameList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudTrail::DescribeTrails>

Returns: a L<Paws::CloudTrail::DescribeTrailsResponse> instance

Retrieves settings for one or more trails associated with the current
Region for your account.


=head2 DisableFederation

=over

=item EventDataStore => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::DisableFederation>

Returns: a L<Paws::CloudTrail::DisableFederationResponse> instance

Disables Lake query federation on the specified event data store. When
you disable federation, CloudTrail disables the integration with Glue,
Lake Formation, and Amazon Athena. After disabling Lake query
federation, you can no longer query your event data in Amazon Athena.

No CloudTrail Lake data is deleted when you disable federation and you
can continue to run queries in CloudTrail Lake.


=head2 EnableFederation

=over

=item EventDataStore => Str

=item FederationRoleArn => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::EnableFederation>

Returns: a L<Paws::CloudTrail::EnableFederationResponse> instance

Enables Lake query federation on the specified event data store.
Federating an event data store lets you view the metadata associated
with the event data store in the Glue Data Catalog
(https://docs.aws.amazon.com/glue/latest/dg/components-overview.html#data-catalog-intro)
and run SQL queries against your event data using Amazon Athena. The
table metadata stored in the Glue Data Catalog lets the Athena query
engine know how to find, read, and process the data that you want to
query.

When you enable Lake query federation, CloudTrail creates a managed
database named C<aws:cloudtrail> (if the database doesn't already
exist) and a managed federated table in the Glue Data Catalog. The
event data store ID is used for the table name. CloudTrail registers
the role ARN and event data store in Lake Formation
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation-lake-formation.html),
the service responsible for allowing fine-grained access control of the
federated resources in the Glue Data Catalog.

For more information about Lake query federation, see Federate an event
data store
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html).


=head2 GenerateQuery

=over

=item EventDataStores => ArrayRef[Str|Undef]

=item Prompt => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GenerateQuery>

Returns: a L<Paws::CloudTrail::GenerateQueryResponse> instance

Generates a query from a natural language prompt. This operation uses
generative artificial intelligence (generative AI) to produce a
ready-to-use SQL query from the prompt.

The prompt can be a question or a statement about the event data in
your event data store. For example, you can enter prompts like "What
are my top errors in the past month?" and E<ldquo>Give me a list of
users that used SNS.E<rdquo>

The prompt must be in English. For information about limitations,
permissions, and supported Regions, see Create CloudTrail Lake queries
from natural language prompts
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html)
in the I<CloudTrail > user guide.

Do not include any personally identifying, confidential, or sensitive
information in your prompts.

This feature uses generative AI large language models (LLMs); we
recommend double-checking the LLM response.


=head2 GetChannel

=over

=item Channel => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetChannel>

Returns: a L<Paws::CloudTrail::GetChannelResponse> instance

Returns information about a specific channel.


=head2 GetDashboard

=over

=item DashboardId => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetDashboard>

Returns: a L<Paws::CloudTrail::GetDashboardResponse> instance

Returns the specified dashboard.


=head2 GetEventDataStore

=over

=item EventDataStore => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetEventDataStore>

Returns: a L<Paws::CloudTrail::GetEventDataStoreResponse> instance

Returns information about an event data store specified as either an
ARN or the ID portion of the ARN.


=head2 GetEventSelectors

=over

=item TrailName => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetEventSelectors>

Returns: a L<Paws::CloudTrail::GetEventSelectorsResponse> instance

Describes the settings for the event selectors that you configured for
your trail. The information returned for your event selectors includes
the following:

=over

=item *

If your event selector includes read-only events, write-only events, or
all events. This applies to management events, data events, and network
activity events.

=item *

If your event selector includes management events.

=item *

If your event selector includes network activity events, the event
sources for which you are logging network activity events.

=item *

If your event selector includes data events, the resources on which you
are logging data events.

=back

For more information about logging management, data, and network
activity events, see the following topics in the I<CloudTrail User
Guide>:

=over

=item *

Logging management events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html)

=item *

Logging data events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html)

=item *

Logging network activity events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html)

=back



=head2 GetImport

=over

=item ImportId => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetImport>

Returns: a L<Paws::CloudTrail::GetImportResponse> instance

Returns information about a specific import.


=head2 GetInsightSelectors

=over

=item [EventDataStore => Str]

=item [TrailName => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetInsightSelectors>

Returns: a L<Paws::CloudTrail::GetInsightSelectorsResponse> instance

Describes the settings for the Insights event selectors that you
configured for your trail or event data store. C<GetInsightSelectors>
shows if CloudTrail Insights event logging is enabled on the trail or
event data store, and if it is, which Insights types are enabled. If
you run C<GetInsightSelectors> on a trail or event data store that does
not have Insights events enabled, the operation throws the exception
C<InsightNotEnabledException>

Specify either the C<EventDataStore> parameter to get Insights event
selectors for an event data store, or the C<TrailName> parameter to the
get Insights event selectors for a trail. You cannot specify these
parameters together.

For more information, see Working with CloudTrail Insights
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
in the I<CloudTrail User Guide>.


=head2 GetQueryResults

=over

=item QueryId => Str

=item [EventDataStore => Str]

=item [EventDataStoreOwnerAccountId => Str]

=item [MaxQueryResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetQueryResults>

Returns: a L<Paws::CloudTrail::GetQueryResultsResponse> instance

Gets event data results of a query. You must specify the C<QueryID>
value returned by the C<StartQuery> operation.


=head2 GetResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetResourcePolicy>

Returns: a L<Paws::CloudTrail::GetResourcePolicyResponse> instance

Retrieves the JSON text of the resource-based policy document attached
to the CloudTrail event data store, dashboard, or channel.


=head2 GetTrail

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetTrail>

Returns: a L<Paws::CloudTrail::GetTrailResponse> instance

Returns settings information for a specified trail.


=head2 GetTrailStatus

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::GetTrailStatus>

Returns: a L<Paws::CloudTrail::GetTrailStatusResponse> instance

Returns a JSON-formatted list of information about the specified trail.
Fields include information on delivery errors, Amazon SNS and Amazon S3
errors, and start and stop logging times for each trail. This operation
returns trail status from a single Region. To return trail status from
all Regions, you must call the operation on each Region.


=head2 ListChannels

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListChannels>

Returns: a L<Paws::CloudTrail::ListChannelsResponse> instance

Lists the channels in the current account, and their source names.


=head2 ListDashboards

=over

=item [MaxResults => Int]

=item [NamePrefix => Str]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListDashboards>

Returns: a L<Paws::CloudTrail::ListDashboardsResponse> instance

Returns information about all dashboards in the account, in the current
Region.


=head2 ListEventDataStores

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListEventDataStores>

Returns: a L<Paws::CloudTrail::ListEventDataStoresResponse> instance

Returns information about all event data stores in the account, in the
current Region.


=head2 ListImportFailures

=over

=item ImportId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListImportFailures>

Returns: a L<Paws::CloudTrail::ListImportFailuresResponse> instance

Returns a list of failures for the specified import.


=head2 ListImports

=over

=item [Destination => Str]

=item [ImportStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListImports>

Returns: a L<Paws::CloudTrail::ListImportsResponse> instance

Returns information on all imports, or a select set of imports by
C<ImportStatus> or C<Destination>.


=head2 ListInsightsMetricData

=over

=item EventName => Str

=item EventSource => Str

=item InsightType => Str

=item [DataType => Str]

=item [EndTime => Str]

=item [ErrorCode => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Period => Int]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListInsightsMetricData>

Returns: a L<Paws::CloudTrail::ListInsightsMetricDataResponse> instance

Returns Insights metrics data for trails that have enabled Insights.
The request must include the C<EventSource>, C<EventName>, and
C<InsightType> parameters.

If the C<InsightType> is set to C<ApiErrorRateInsight>, the request
must also include the C<ErrorCode> parameter.

The following are the available time periods for
C<ListInsightsMetricData>. Each cutoff is inclusive.

=over

=item *

Data points with a period of 60 seconds (1-minute) are available for 15
days.

=item *

Data points with a period of 300 seconds (5-minute) are available for
63 days.

=item *

Data points with a period of 3600 seconds (1 hour) are available for 90
days.

=back

Access to the C<ListInsightsMetricData> API operation is linked to the
C<cloudtrail:LookupEvents> action. To use this operation, you must have
permissions to perform the C<cloudtrail:LookupEvents> action.


=head2 ListPublicKeys

=over

=item [EndTime => Str]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListPublicKeys>

Returns: a L<Paws::CloudTrail::ListPublicKeysResponse> instance

Returns all public keys whose private keys were used to sign the digest
files within the specified time range. The public key is needed to
validate digest files that were signed with its corresponding private
key.

CloudTrail uses different private and public key pairs per Region. Each
digest file is signed with a private key unique to its Region. When you
validate a digest file from a specific Region, you must look in the
same Region for its corresponding public key.


=head2 ListQueries

=over

=item EventDataStore => Str

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueryStatus => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListQueries>

Returns: a L<Paws::CloudTrail::ListQueriesResponse> instance

Returns a list of queries and query statuses for the past seven days.
You must specify an ARN value for C<EventDataStore>. Optionally, to
shorten the list of results, you can specify a time range, formatted as
timestamps, by adding C<StartTime> and C<EndTime> parameters, and a
C<QueryStatus> value. Valid values for C<QueryStatus> include
C<QUEUED>, C<RUNNING>, C<FINISHED>, C<FAILED>, C<TIMED_OUT>, or
C<CANCELLED>.


=head2 ListTags

=over

=item ResourceIdList => ArrayRef[Str|Undef]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListTags>

Returns: a L<Paws::CloudTrail::ListTagsResponse> instance

Lists the tags for the specified trails, event data stores, dashboards,
or channels in the current Region.


=head2 ListTrails

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::ListTrails>

Returns: a L<Paws::CloudTrail::ListTrailsResponse> instance

Lists trails that are in the current account.


=head2 LookupEvents

=over

=item [EndTime => Str]

=item [EventCategory => Str]

=item [LookupAttributes => ArrayRef[L<Paws::CloudTrail::LookupAttribute>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::LookupEvents>

Returns: a L<Paws::CloudTrail::LookupEventsResponse> instance

Looks up management events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events)
or CloudTrail Insights events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events)
that are captured by CloudTrail. You can look up events that occurred
in a Region within the last 90 days.

C<LookupEvents> returns recent Insights events for trails that enable
Insights. To view Insights events for an event data store, you can run
queries on your Insights event data store, and you can also view the
Lake dashboard for Insights.

Lookup supports the following attributes for management events:

=over

=item *

Amazon Web Services access key

=item *

Event ID

=item *

Event name

=item *

Event source

=item *

Read only

=item *

Resource name

=item *

Resource type

=item *

User name

=back

Lookup supports the following attributes for Insights events:

=over

=item *

Event ID

=item *

Event name

=item *

Event source

=back

All attributes are optional. The default number of results returned is
50, with a maximum of 50 possible. The response includes a token that
you can use to get the next page of results.

The rate of lookup requests is limited to two per second, per account,
per Region. If this limit is exceeded, a throttling error occurs.


=head2 PutEventSelectors

=over

=item TrailName => Str

=item [AdvancedEventSelectors => ArrayRef[L<Paws::CloudTrail::AdvancedEventSelector>]]

=item [EventSelectors => ArrayRef[L<Paws::CloudTrail::EventSelector>]]


=back

Each argument is described in detail in: L<Paws::CloudTrail::PutEventSelectors>

Returns: a L<Paws::CloudTrail::PutEventSelectorsResponse> instance

Configures event selectors (also referred to as I<basic event
selectors>) or advanced event selectors for your trail. You can use
either C<AdvancedEventSelectors> or C<EventSelectors>, but not both. If
you apply C<AdvancedEventSelectors> to a trail, any existing
C<EventSelectors> are overwritten.

You can use C<AdvancedEventSelectors> to log management events, data
events for all resource types, and network activity events.

You can use C<EventSelectors> to log management events and data events
for the following resource types:

=over

=item *

C<AWS::DynamoDB::Table>

=item *

C<AWS::Lambda::Function>

=item *

C<AWS::S3::Object>

=back

You can't use C<EventSelectors> to log network activity events.

If you want your trail to log Insights events, be sure the event
selector or advanced event selector enables logging of the Insights
event types you want configured for your trail. For more information
about logging Insights events, see Working with CloudTrail Insights
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
in the I<CloudTrail User Guide>. By default, trails created without
specific event selectors are configured to log all read and write
management events, and no data events or network activity events.

When an event occurs in your account, CloudTrail evaluates the event
selectors or advanced event selectors in all trails. For each trail, if
the event matches any event selector, the trail processes and logs the
event. If the event doesn't match any event selector, the trail doesn't
log the event.

Example

=over

=item 1.

You create an event selector for a trail and specify that you want to
log write-only events.

=item 2.

The EC2 C<GetConsoleOutput> and C<RunInstances> API operations occur in
your account.

=item 3.

CloudTrail evaluates whether the events match your event selectors.

=item 4.

The C<RunInstances> is a write-only event and it matches your event
selector. The trail logs the event.

=item 5.

The C<GetConsoleOutput> is a read-only event that doesn't match your
event selector. The trail doesn't log the event.

=back

The C<PutEventSelectors> operation must be called from the Region in
which the trail was created; otherwise, an
C<InvalidHomeRegionException> exception is thrown.

You can configure up to five event selectors for each trail.

You can add advanced event selectors, and conditions for your advanced
event selectors, up to a maximum of 500 values for all conditions and
selectors on a trail. For more information, see Logging management
events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html),
Logging data events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html),
Logging network activity events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html),
and Quotas in CloudTrail
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html)
in the I<CloudTrail User Guide>.


=head2 PutInsightSelectors

=over

=item InsightSelectors => ArrayRef[L<Paws::CloudTrail::InsightSelector>]

=item [EventDataStore => Str]

=item [InsightsDestination => Str]

=item [TrailName => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::PutInsightSelectors>

Returns: a L<Paws::CloudTrail::PutInsightSelectorsResponse> instance

Lets you enable Insights event logging by specifying the Insights
selectors that you want to enable on an existing trail or event data
store. You also use C<PutInsightSelectors> to turn off Insights event
logging, by passing an empty list of Insights types. The valid Insights
event types are C<ApiErrorRateInsight> and C<ApiCallRateInsight>.

To enable Insights on an event data store, you must specify the ARNs
(or ID suffix of the ARNs) for the source event data store
(C<EventDataStore>) and the destination event data store
(C<InsightsDestination>). The source event data store logs management
events and enables Insights. The destination event data store logs
Insights events based upon the management event activity of the source
event data store. The source and destination event data stores must
belong to the same Amazon Web Services account.

To log Insights events for a trail, you must specify the name
(C<TrailName>) of the CloudTrail trail for which you want to change or
add Insights selectors.

To log CloudTrail Insights events on API call volume, the trail or
event data store must log C<write> management events. To log CloudTrail
Insights events on API error rate, the trail or event data store must
log C<read> or C<write> management events. You can call
C<GetEventSelectors> on a trail to check whether the trail logs
management events. You can call C<GetEventDataStore> on an event data
store to check whether the event data store logs management events.

For more information, see Working with CloudTrail Insights
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
in the I<CloudTrail User Guide>.


=head2 PutResourcePolicy

=over

=item ResourceArn => Str

=item ResourcePolicy => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::PutResourcePolicy>

Returns: a L<Paws::CloudTrail::PutResourcePolicyResponse> instance

Attaches a resource-based permission policy to a CloudTrail event data
store, dashboard, or channel. For more information about resource-based
policies, see CloudTrail resource-based policy examples
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html)
in the I<CloudTrail User Guide>.


=head2 RegisterOrganizationDelegatedAdmin

=over

=item MemberAccountId => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::RegisterOrganizationDelegatedAdmin>

Returns: a L<Paws::CloudTrail::RegisterOrganizationDelegatedAdminResponse> instance

Registers an organizationE<rsquo>s member account as the CloudTrail
delegated administrator
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-delegated-administrator.html).


=head2 RemoveTags

=over

=item ResourceId => Str

=item TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]


=back

Each argument is described in detail in: L<Paws::CloudTrail::RemoveTags>

Returns: a L<Paws::CloudTrail::RemoveTagsResponse> instance

Removes the specified tags from a trail, event data store, dashboard,
or channel.


=head2 RestoreEventDataStore

=over

=item EventDataStore => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::RestoreEventDataStore>

Returns: a L<Paws::CloudTrail::RestoreEventDataStoreResponse> instance

Restores a deleted event data store specified by C<EventDataStore>,
which accepts an event data store ARN. You can only restore a deleted
event data store within the seven-day wait period after deletion.
Restoring an event data store can take several minutes, depending on
the size of the event data store.


=head2 SearchSampleQueries

=over

=item SearchPhrase => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::SearchSampleQueries>

Returns: a L<Paws::CloudTrail::SearchSampleQueriesResponse> instance

Searches sample queries and returns a list of sample queries that are
sorted by relevance. To search for sample queries, provide a natural
language C<SearchPhrase> in English.


=head2 StartDashboardRefresh

=over

=item DashboardId => Str

=item [QueryParameterValues => L<Paws::CloudTrail::QueryParameterValues>]


=back

Each argument is described in detail in: L<Paws::CloudTrail::StartDashboardRefresh>

Returns: a L<Paws::CloudTrail::StartDashboardRefreshResponse> instance

Starts a refresh of the specified dashboard.

Each time a dashboard is refreshed, CloudTrail runs queries to populate
the dashboard's widgets. CloudTrail must be granted permissions to run
the C<StartQuery> operation on your behalf. To provide permissions, run
the C<PutResourcePolicy> operation to attach a resource-based policy to
each event data store. For more information, see Example: Allow
CloudTrail to run queries to populate a dashboard
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard)
in the I<CloudTrail User Guide>.


=head2 StartEventDataStoreIngestion

=over

=item EventDataStore => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::StartEventDataStoreIngestion>

Returns: a L<Paws::CloudTrail::StartEventDataStoreIngestionResponse> instance

Starts the ingestion of live events on an event data store specified as
either an ARN or the ID portion of the ARN. To start ingestion, the
event data store C<Status> must be C<STOPPED_INGESTION> and the
C<eventCategory> must be C<Management>, C<Data>, C<NetworkActivity>, or
C<ConfigurationItem>.


=head2 StartImport

=over

=item [Destinations => ArrayRef[Str|Undef]]

=item [EndEventTime => Str]

=item [ImportId => Str]

=item [ImportSource => L<Paws::CloudTrail::ImportSource>]

=item [StartEventTime => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::StartImport>

Returns: a L<Paws::CloudTrail::StartImportResponse> instance

Starts an import of logged trail events from a source S3 bucket to a
destination event data store. By default, CloudTrail only imports
events contained in the S3 bucket's C<CloudTrail> prefix and the
prefixes inside the C<CloudTrail> prefix, and does not check prefixes
for other Amazon Web Services services. If you want to import
CloudTrail events contained in another prefix, you must include the
prefix in the C<S3LocationUri>. For more considerations about importing
trail events, see Considerations for copying trail events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-copy-trail-to-lake.html#cloudtrail-trail-copy-considerations)
in the I<CloudTrail User Guide>.

When you start a new import, the C<Destinations> and C<ImportSource>
parameters are required. Before starting a new import, disable any
access control lists (ACLs) attached to the source S3 bucket. For more
information about disabling ACLs, see Controlling ownership of objects
and disabling ACLs for your bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

When you retry an import, the C<ImportID> parameter is required.

If the destination event data store is for an organization, you must
use the management account to import trail events. You cannot use the
delegated administrator account for the organization.


=head2 StartLogging

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::StartLogging>

Returns: a L<Paws::CloudTrail::StartLoggingResponse> instance

Starts the recording of Amazon Web Services API calls and log file
delivery for a trail. For a trail that is enabled in all Regions, this
operation must be called from the Region in which the trail was
created. This operation cannot be called on the shadow trails
(replicated trails in other Regions) of a trail that is enabled in all
Regions.


=head2 StartQuery

=over

=item [DeliveryS3Uri => Str]

=item [EventDataStoreOwnerAccountId => Str]

=item [QueryAlias => Str]

=item [QueryParameters => ArrayRef[Str|Undef]]

=item [QueryStatement => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::StartQuery>

Returns: a L<Paws::CloudTrail::StartQueryResponse> instance

Starts a CloudTrail Lake query. Use the C<QueryStatement> parameter to
provide your SQL query, enclosed in single quotation marks. Use the
optional C<DeliveryS3Uri> parameter to deliver the query results to an
S3 bucket.

C<StartQuery> requires you specify either the C<QueryStatement>
parameter, or a C<QueryAlias> and any C<QueryParameters>. In the
current release, the C<QueryAlias> and C<QueryParameters> parameters
are used only for the queries that populate the CloudTrail Lake
dashboards.


=head2 StopEventDataStoreIngestion

=over

=item EventDataStore => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::StopEventDataStoreIngestion>

Returns: a L<Paws::CloudTrail::StopEventDataStoreIngestionResponse> instance

Stops the ingestion of live events on an event data store specified as
either an ARN or the ID portion of the ARN. To stop ingestion, the
event data store C<Status> must be C<ENABLED> and the C<eventCategory>
must be C<Management>, C<Data>, C<NetworkActivity>, or
C<ConfigurationItem>.


=head2 StopImport

=over

=item ImportId => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::StopImport>

Returns: a L<Paws::CloudTrail::StopImportResponse> instance

Stops a specified import.


=head2 StopLogging

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudTrail::StopLogging>

Returns: a L<Paws::CloudTrail::StopLoggingResponse> instance

Suspends the recording of Amazon Web Services API calls and log file
delivery for the specified trail. Under most circumstances, there is no
need to use this action. You can update a trail without stopping it
first. This action is the only way to stop recording. For a trail
enabled in all Regions, this operation must be called from the Region
in which the trail was created, or an C<InvalidHomeRegionException>
will occur. This operation cannot be called on the shadow trails
(replicated trails in other Regions) of a trail enabled in all Regions.


=head2 UpdateChannel

=over

=item Channel => Str

=item [Destinations => ArrayRef[L<Paws::CloudTrail::Destination>]]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::UpdateChannel>

Returns: a L<Paws::CloudTrail::UpdateChannelResponse> instance

Updates a channel specified by a required channel ARN or UUID.


=head2 UpdateDashboard

=over

=item DashboardId => Str

=item [RefreshSchedule => L<Paws::CloudTrail::RefreshSchedule>]

=item [TerminationProtectionEnabled => Bool]

=item [Widgets => ArrayRef[L<Paws::CloudTrail::RequestWidget>]]


=back

Each argument is described in detail in: L<Paws::CloudTrail::UpdateDashboard>

Returns: a L<Paws::CloudTrail::UpdateDashboardResponse> instance

Updates the specified dashboard.

To set a refresh schedule, CloudTrail must be granted permissions to
run the C<StartDashboardRefresh> operation to refresh the dashboard on
your behalf. To provide permissions, run the C<PutResourcePolicy>
operation to attach a resource-based policy to the dashboard. For more
information, see Resource-based policy example for a dashboard
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards)
in the I<CloudTrail User Guide>.

CloudTrail runs queries to populate the dashboard's widgets during a
manual or scheduled refresh. CloudTrail must be granted permissions to
run the C<StartQuery> operation on your behalf. To provide permissions,
run the C<PutResourcePolicy> operation to attach a resource-based
policy to each event data store. For more information, see Example:
Allow CloudTrail to run queries to populate a dashboard
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard)
in the I<CloudTrail User Guide>.


=head2 UpdateEventDataStore

=over

=item EventDataStore => Str

=item [AdvancedEventSelectors => ArrayRef[L<Paws::CloudTrail::AdvancedEventSelector>]]

=item [BillingMode => Str]

=item [KmsKeyId => Str]

=item [MultiRegionEnabled => Bool]

=item [Name => Str]

=item [OrganizationEnabled => Bool]

=item [RetentionPeriod => Int]

=item [TerminationProtectionEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::CloudTrail::UpdateEventDataStore>

Returns: a L<Paws::CloudTrail::UpdateEventDataStoreResponse> instance

Updates an event data store. The required C<EventDataStore> value is an
ARN or the ID portion of the ARN. Other parameters are optional, but at
least one optional parameter must be specified, or CloudTrail throws an
error. C<RetentionPeriod> is in days, and valid values are integers
between 7 and 3653 if the C<BillingMode> is set to
C<EXTENDABLE_RETENTION_PRICING>, or between 7 and 2557 if
C<BillingMode> is set to C<FIXED_RETENTION_PRICING>. By default,
C<TerminationProtection> is enabled.

For event data stores for CloudTrail events, C<AdvancedEventSelectors>
includes or excludes management, data, or network activity events in
your event data store. For more information about
C<AdvancedEventSelectors>, see AdvancedEventSelectors
(https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html).

For event data stores for CloudTrail Insights events, Config
configuration items, Audit Manager evidence, or non-Amazon Web Services
events, C<AdvancedEventSelectors> includes events of that type in your
event data store.


=head2 UpdateTrail

=over

=item Name => Str

=item [CloudWatchLogsLogGroupArn => Str]

=item [CloudWatchLogsRoleArn => Str]

=item [EnableLogFileValidation => Bool]

=item [IncludeGlobalServiceEvents => Bool]

=item [IsMultiRegionTrail => Bool]

=item [IsOrganizationTrail => Bool]

=item [KmsKeyId => Str]

=item [S3BucketName => Str]

=item [S3KeyPrefix => Str]

=item [SnsTopicName => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrail::UpdateTrail>

Returns: a L<Paws::CloudTrail::UpdateTrailResponse> instance

Updates trail settings that control what events you are logging, and
how to handle log files. Changes to a trail do not require stopping the
CloudTrail service. Use this action to designate an existing bucket for
log delivery. If the existing bucket has previously been a target for
CloudTrail log files, an IAM policy exists for the bucket.
C<UpdateTrail> must be called from the Region in which the trail was
created; otherwise, an C<InvalidHomeRegionException> is thrown.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllImportFailures(sub { },ImportId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllImportFailures(ImportId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Failures, passing the object as the first parameter, and the string 'Failures' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::ListImportFailuresResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImports(sub { },[Destination => Str, ImportStatus => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllImports([Destination => Str, ImportStatus => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Imports, passing the object as the first parameter, and the string 'Imports' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::ListImportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPublicKeys(sub { },[EndTime => Str, NextToken => Str, StartTime => Str])

=head2 ListAllPublicKeys([EndTime => Str, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PublicKeyList, passing the object as the first parameter, and the string 'PublicKeyList' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::ListPublicKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTags(sub { },ResourceIdList => ArrayRef[Str|Undef], [NextToken => Str])

=head2 ListAllTags(ResourceIdList => ArrayRef[Str|Undef], [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceTagList, passing the object as the first parameter, and the string 'ResourceTagList' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::ListTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrails(sub { },[NextToken => Str])

=head2 ListAllTrails([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Trails, passing the object as the first parameter, and the string 'Trails' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::ListTrailsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 LookupAllEvents(sub { },[EndTime => Str, EventCategory => Str, LookupAttributes => ArrayRef[L<Paws::CloudTrail::LookupAttribute>], MaxResults => Int, NextToken => Str, StartTime => Str])

=head2 LookupAllEvents([EndTime => Str, EventCategory => Str, LookupAttributes => ArrayRef[L<Paws::CloudTrail::LookupAttribute>], MaxResults => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::CloudTrail::LookupEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

