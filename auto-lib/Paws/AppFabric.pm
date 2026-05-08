package Paws::AppFabric;
  use Moose;
  sub service { 'appfabric' }
  sub signing_name { 'appfabric' }
  sub version { '2023-05-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetUserAccessTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::BatchGetUserAccessTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConnectAppAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::ConnectAppAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::CreateAppAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppBundle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::CreateAppBundle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::CreateIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIngestionDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::CreateIngestionDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::DeleteAppAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppBundle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::DeleteAppBundle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::DeleteIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIngestionDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::DeleteIngestionDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::GetAppAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppBundle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::GetAppBundle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::GetIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIngestionDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::GetIngestionDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppAuthorizations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::ListAppAuthorizations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppBundles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::ListAppBundles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIngestionDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::ListIngestionDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIngestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::ListIngestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::StartIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartUserAccessTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::StartUserAccessTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopIngestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::StopIngestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::UpdateAppAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIngestionDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppFabric::UpdateIngestionDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAppAuthorizations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAppAuthorizations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAppAuthorizations(@_, nextToken => $next_result->nextToken);
        push @{ $result->appAuthorizationSummaryList }, @{ $next_result->appAuthorizationSummaryList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'appAuthorizationSummaryList') foreach (@{ $result->appAuthorizationSummaryList });
        $result = $self->ListAppAuthorizations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'appAuthorizationSummaryList') foreach (@{ $result->appAuthorizationSummaryList });
    }

    return undef
  }
  sub ListAllAppBundles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAppBundles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAppBundles(@_, nextToken => $next_result->nextToken);
        push @{ $result->appBundleSummaryList }, @{ $next_result->appBundleSummaryList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'appBundleSummaryList') foreach (@{ $result->appBundleSummaryList });
        $result = $self->ListAppBundles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'appBundleSummaryList') foreach (@{ $result->appBundleSummaryList });
    }

    return undef
  }
  sub ListAllIngestionDestinations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIngestionDestinations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIngestionDestinations(@_, nextToken => $next_result->nextToken);
        push @{ $result->ingestionDestinations }, @{ $next_result->ingestionDestinations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ingestionDestinations') foreach (@{ $result->ingestionDestinations });
        $result = $self->ListIngestionDestinations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ingestionDestinations') foreach (@{ $result->ingestionDestinations });
    }

    return undef
  }
  sub ListAllIngestions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIngestions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIngestions(@_, nextToken => $next_result->nextToken);
        push @{ $result->ingestions }, @{ $next_result->ingestions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ingestions') foreach (@{ $result->ingestions });
        $result = $self->ListIngestions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ingestions') foreach (@{ $result->ingestions });
    }

    return undef
  }


  sub operations { qw/BatchGetUserAccessTasks ConnectAppAuthorization CreateAppAuthorization CreateAppBundle CreateIngestion CreateIngestionDestination DeleteAppAuthorization DeleteAppBundle DeleteIngestion DeleteIngestionDestination GetAppAuthorization GetAppBundle GetIngestion GetIngestionDestination ListAppAuthorizations ListAppBundles ListIngestionDestinations ListIngestions ListTagsForResource StartIngestion StartUserAccessTasks StopIngestion TagResource UntagResource UpdateAppAuthorization UpdateIngestionDestination / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric - Perl Interface to AWS AppFabric

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppFabric');
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

Amazon Web Services AppFabric quickly connects software as a service
(SaaS) applications across your organization. This allows IT and
security teams to easily manage and secure applications using a
standard schema, and employees can complete everyday tasks faster using
generative artificial intelligence (AI). You can use these APIs to
complete AppFabric tasks, such as setting up audit log ingestions or
viewing user access. For more information about AppFabric, including
the required permissions to use the service, see the Amazon Web
Services AppFabric Administration Guide
(https://docs.aws.amazon.com/appfabric/latest/adminguide/). For more
information about using the Command Line Interface (CLI) to manage your
AppFabric resources, see the AppFabric section of the CLI Reference
(https://docs.aws.amazon.com/cli/latest/reference/appfabric/index.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric-2023-05-19>


=head1 METHODS

=head2 BatchGetUserAccessTasks

=over

=item AppBundleIdentifier => Str

=item TaskIdList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppFabric::BatchGetUserAccessTasks>

Returns: a L<Paws::AppFabric::BatchGetUserAccessTasksResponse> instance

Gets user access details in a batch request.

This action polls data from the tasks that are kicked off by the
C<StartUserAccessTasks> action.


=head2 ConnectAppAuthorization

=over

=item AppAuthorizationIdentifier => Str

=item AppBundleIdentifier => Str

=item [AuthRequest => L<Paws::AppFabric::AuthRequest>]


=back

Each argument is described in detail in: L<Paws::AppFabric::ConnectAppAuthorization>

Returns: a L<Paws::AppFabric::ConnectAppAuthorizationResponse> instance

Establishes a connection between Amazon Web Services AppFabric and an
application, which allows AppFabric to call the APIs of the
application.


=head2 CreateAppAuthorization

=over

=item App => Str

=item AppBundleIdentifier => Str

=item AuthType => Str

=item Credential => L<Paws::AppFabric::Credential>

=item Tenant => L<Paws::AppFabric::Tenant>

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::AppFabric::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppFabric::CreateAppAuthorization>

Returns: a L<Paws::AppFabric::CreateAppAuthorizationResponse> instance

Creates an app authorization within an app bundle, which allows
AppFabric to connect to an application.


=head2 CreateAppBundle

=over

=item [ClientToken => Str]

=item [CustomerManagedKeyIdentifier => Str]

=item [Tags => ArrayRef[L<Paws::AppFabric::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppFabric::CreateAppBundle>

Returns: a L<Paws::AppFabric::CreateAppBundleResponse> instance

Creates an app bundle to collect data from an application using
AppFabric.


=head2 CreateIngestion

=over

=item App => Str

=item AppBundleIdentifier => Str

=item IngestionType => Str

=item TenantId => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::AppFabric::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppFabric::CreateIngestion>

Returns: a L<Paws::AppFabric::CreateIngestionResponse> instance

Creates a data ingestion for an application.


=head2 CreateIngestionDestination

=over

=item AppBundleIdentifier => Str

=item DestinationConfiguration => L<Paws::AppFabric::DestinationConfiguration>

=item IngestionIdentifier => Str

=item ProcessingConfiguration => L<Paws::AppFabric::ProcessingConfiguration>

=item [ClientToken => Str]

=item [Tags => ArrayRef[L<Paws::AppFabric::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppFabric::CreateIngestionDestination>

Returns: a L<Paws::AppFabric::CreateIngestionDestinationResponse> instance

Creates an ingestion destination, which specifies how an application's
ingested data is processed by Amazon Web Services AppFabric and where
it's delivered.


=head2 DeleteAppAuthorization

=over

=item AppAuthorizationIdentifier => Str

=item AppBundleIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::DeleteAppAuthorization>

Returns: a L<Paws::AppFabric::DeleteAppAuthorizationResponse> instance

Deletes an app authorization. You must delete the associated ingestion
before you can delete an app authorization.


=head2 DeleteAppBundle

=over

=item AppBundleIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::DeleteAppBundle>

Returns: a L<Paws::AppFabric::DeleteAppBundleResponse> instance

Deletes an app bundle. You must delete all associated app
authorizations before you can delete an app bundle.


=head2 DeleteIngestion

=over

=item AppBundleIdentifier => Str

=item IngestionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::DeleteIngestion>

Returns: a L<Paws::AppFabric::DeleteIngestionResponse> instance

Deletes an ingestion. You must stop (disable) the ingestion and you
must delete all associated ingestion destinations before you can delete
an app ingestion.


=head2 DeleteIngestionDestination

=over

=item AppBundleIdentifier => Str

=item IngestionDestinationIdentifier => Str

=item IngestionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::DeleteIngestionDestination>

Returns: a L<Paws::AppFabric::DeleteIngestionDestinationResponse> instance

Deletes an ingestion destination.

This deletes the association between an ingestion and it's destination.
It doesn't delete previously ingested data or the storage destination,
such as the Amazon S3 bucket where the data is delivered. If the
ingestion destination is deleted while the associated ingestion is
enabled, the ingestion will fail and is eventually disabled.


=head2 GetAppAuthorization

=over

=item AppAuthorizationIdentifier => Str

=item AppBundleIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::GetAppAuthorization>

Returns: a L<Paws::AppFabric::GetAppAuthorizationResponse> instance

Returns information about an app authorization.


=head2 GetAppBundle

=over

=item AppBundleIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::GetAppBundle>

Returns: a L<Paws::AppFabric::GetAppBundleResponse> instance

Returns information about an app bundle.


=head2 GetIngestion

=over

=item AppBundleIdentifier => Str

=item IngestionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::GetIngestion>

Returns: a L<Paws::AppFabric::GetIngestionResponse> instance

Returns information about an ingestion.


=head2 GetIngestionDestination

=over

=item AppBundleIdentifier => Str

=item IngestionDestinationIdentifier => Str

=item IngestionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::GetIngestionDestination>

Returns: a L<Paws::AppFabric::GetIngestionDestinationResponse> instance

Returns information about an ingestion destination.


=head2 ListAppAuthorizations

=over

=item AppBundleIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppFabric::ListAppAuthorizations>

Returns: a L<Paws::AppFabric::ListAppAuthorizationsResponse> instance

Returns a list of all app authorizations configured for an app bundle.


=head2 ListAppBundles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppFabric::ListAppBundles>

Returns: a L<Paws::AppFabric::ListAppBundlesResponse> instance

Returns a list of app bundles.


=head2 ListIngestionDestinations

=over

=item AppBundleIdentifier => Str

=item IngestionIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppFabric::ListIngestionDestinations>

Returns: a L<Paws::AppFabric::ListIngestionDestinationsResponse> instance

Returns a list of all ingestion destinations configured for an
ingestion.


=head2 ListIngestions

=over

=item AppBundleIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppFabric::ListIngestions>

Returns: a L<Paws::AppFabric::ListIngestionsResponse> instance

Returns a list of all ingestions configured for an app bundle.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::ListTagsForResource>

Returns: a L<Paws::AppFabric::ListTagsForResourceResponse> instance

Returns a list of tags for a resource.


=head2 StartIngestion

=over

=item AppBundleIdentifier => Str

=item IngestionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::StartIngestion>

Returns: a L<Paws::AppFabric::StartIngestionResponse> instance

Starts (enables) an ingestion, which collects data from an application.


=head2 StartUserAccessTasks

=over

=item AppBundleIdentifier => Str

=item Email => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::StartUserAccessTasks>

Returns: a L<Paws::AppFabric::StartUserAccessTasksResponse> instance

Starts the tasks to search user access status for a specific email
address.

The tasks are stopped when the user access status data is found. The
tasks are terminated when the API calls to the application time out.


=head2 StopIngestion

=over

=item AppBundleIdentifier => Str

=item IngestionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::StopIngestion>

Returns: a L<Paws::AppFabric::StopIngestionResponse> instance

Stops (disables) an ingestion.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::AppFabric::Tag>]


=back

Each argument is described in detail in: L<Paws::AppFabric::TagResource>

Returns: a L<Paws::AppFabric::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppFabric::UntagResource>

Returns: a L<Paws::AppFabric::UntagResourceResponse> instance

Removes a tag or tags from a resource.


=head2 UpdateAppAuthorization

=over

=item AppAuthorizationIdentifier => Str

=item AppBundleIdentifier => Str

=item [Credential => L<Paws::AppFabric::Credential>]

=item [Tenant => L<Paws::AppFabric::Tenant>]


=back

Each argument is described in detail in: L<Paws::AppFabric::UpdateAppAuthorization>

Returns: a L<Paws::AppFabric::UpdateAppAuthorizationResponse> instance

Updates an app authorization within an app bundle, which allows
AppFabric to connect to an application.

If the app authorization was in a C<connected> state, updating the app
authorization will set it back to a C<PendingConnect> state.


=head2 UpdateIngestionDestination

=over

=item AppBundleIdentifier => Str

=item DestinationConfiguration => L<Paws::AppFabric::DestinationConfiguration>

=item IngestionDestinationIdentifier => Str

=item IngestionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppFabric::UpdateIngestionDestination>

Returns: a L<Paws::AppFabric::UpdateIngestionDestinationResponse> instance

Updates an ingestion destination, which specifies how an application's
ingested data is processed by Amazon Web Services AppFabric and where
it's delivered.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAppAuthorizations(sub { },AppBundleIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAppAuthorizations(AppBundleIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - appAuthorizationSummaryList, passing the object as the first parameter, and the string 'appAuthorizationSummaryList' as the second parameter 

If not, it will return a a L<Paws::AppFabric::ListAppAuthorizationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAppBundles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAppBundles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - appBundleSummaryList, passing the object as the first parameter, and the string 'appBundleSummaryList' as the second parameter 

If not, it will return a a L<Paws::AppFabric::ListAppBundlesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIngestionDestinations(sub { },AppBundleIdentifier => Str, IngestionIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIngestionDestinations(AppBundleIdentifier => Str, IngestionIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ingestionDestinations, passing the object as the first parameter, and the string 'ingestionDestinations' as the second parameter 

If not, it will return a a L<Paws::AppFabric::ListIngestionDestinationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIngestions(sub { },AppBundleIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIngestions(AppBundleIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ingestions, passing the object as the first parameter, and the string 'ingestions' as the second parameter 

If not, it will return a a L<Paws::AppFabric::ListIngestionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

