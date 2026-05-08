package Paws::AppIntegrations;
  use Moose;
  sub service { 'app-integrations' }
  sub signing_name { 'app-integrations' }
  sub version { '2020-07-29' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::CreateDataIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataIntegrationAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::CreateDataIntegrationAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::CreateEventIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::DeleteDataIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::DeleteEventIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::GetDataIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::GetEventIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListApplicationAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataIntegrationAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListDataIntegrationAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListDataIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventIntegrationAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListEventIntegrationAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListEventIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::UpdateDataIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataIntegrationAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::UpdateDataIntegrationAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppIntegrations::UpdateEventIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplicationAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ApplicationAssociations }, @{ $next_result->ApplicationAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ApplicationAssociations') foreach (@{ $result->ApplicationAssociations });
        $result = $self->ListApplicationAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ApplicationAssociations') foreach (@{ $result->ApplicationAssociations });
    }

    return undef
  }
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplications(@_, NextToken => $next_result->NextToken);
        push @{ $result->Applications }, @{ $next_result->Applications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Applications') foreach (@{ $result->Applications });
        $result = $self->ListApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Applications') foreach (@{ $result->Applications });
    }

    return undef
  }
  sub ListAllDataIntegrationAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataIntegrationAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataIntegrationAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataIntegrationAssociations }, @{ $next_result->DataIntegrationAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataIntegrationAssociations') foreach (@{ $result->DataIntegrationAssociations });
        $result = $self->ListDataIntegrationAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataIntegrationAssociations') foreach (@{ $result->DataIntegrationAssociations });
    }

    return undef
  }
  sub ListAllDataIntegrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataIntegrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataIntegrations(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataIntegrations }, @{ $next_result->DataIntegrations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataIntegrations') foreach (@{ $result->DataIntegrations });
        $result = $self->ListDataIntegrations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataIntegrations') foreach (@{ $result->DataIntegrations });
    }

    return undef
  }
  sub ListAllEventIntegrationAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventIntegrationAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEventIntegrationAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->EventIntegrationAssociations }, @{ $next_result->EventIntegrationAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EventIntegrationAssociations') foreach (@{ $result->EventIntegrationAssociations });
        $result = $self->ListEventIntegrationAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EventIntegrationAssociations') foreach (@{ $result->EventIntegrationAssociations });
    }

    return undef
  }
  sub ListAllEventIntegrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventIntegrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEventIntegrations(@_, NextToken => $next_result->NextToken);
        push @{ $result->EventIntegrations }, @{ $next_result->EventIntegrations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EventIntegrations') foreach (@{ $result->EventIntegrations });
        $result = $self->ListEventIntegrations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EventIntegrations') foreach (@{ $result->EventIntegrations });
    }

    return undef
  }


  sub operations { qw/CreateApplication CreateDataIntegration CreateDataIntegrationAssociation CreateEventIntegration DeleteApplication DeleteDataIntegration DeleteEventIntegration GetApplication GetDataIntegration GetEventIntegration ListApplicationAssociations ListApplications ListDataIntegrationAssociations ListDataIntegrations ListEventIntegrationAssociations ListEventIntegrations ListTagsForResource TagResource UntagResource UpdateApplication UpdateDataIntegration UpdateDataIntegrationAssociation UpdateEventIntegration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations - Perl Interface to AWS Amazon AppIntegrations Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppIntegrations');
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

=over

=item *

Amazon AppIntegrations actions
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_AppIntegrations_Service.html)

=item *

Amazon AppIntegrations data types
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_AppIntegrations_Service.html)

=back

The Amazon AppIntegrations service enables you to configure and reuse
connections to external applications.

For information about how you can use external applications with Amazon
Connect, see the following topics in the I<Amazon Connect Administrator
Guide>:

=over

=item *

Third-party applications (3p apps) in the agent workspace
(https://docs.aws.amazon.com/connect/latest/adminguide/3p-apps.html)

=item *

Use Amazon Q in Connect for generative AIE<ndash>powered agent
assistance in real-time
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-q-connect.html)

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateApplication

=over

=item ApplicationSourceConfig => L<Paws::AppIntegrations::ApplicationSourceConfig>

=item Name => Str

=item Namespace => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Permissions => ArrayRef[Str|Undef]]

=item [Publications => ArrayRef[L<Paws::AppIntegrations::Publication>]]

=item [Subscriptions => ArrayRef[L<Paws::AppIntegrations::Subscription>]]

=item [Tags => L<Paws::AppIntegrations::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::CreateApplication>

Returns: a L<Paws::AppIntegrations::CreateApplicationResponse> instance

Creates and persists an Application resource.


=head2 CreateDataIntegration

=over

=item KmsKey => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [FileConfiguration => L<Paws::AppIntegrations::FileConfiguration>]

=item [ObjectConfiguration => L<Paws::AppIntegrations::ObjectConfiguration>]

=item [ScheduleConfig => L<Paws::AppIntegrations::ScheduleConfiguration>]

=item [SourceURI => Str]

=item [Tags => L<Paws::AppIntegrations::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::CreateDataIntegration>

Returns: a L<Paws::AppIntegrations::CreateDataIntegrationResponse> instance

Creates and persists a DataIntegration resource.

You cannot create a DataIntegration association for a DataIntegration
that has been previously associated. Use a different DataIntegration,
or recreate the DataIntegration using the C<CreateDataIntegration> API.


=head2 CreateDataIntegrationAssociation

=over

=item DataIntegrationIdentifier => Str

=item [ClientAssociationMetadata => L<Paws::AppIntegrations::ClientAssociationMetadata>]

=item [ClientId => Str]

=item [ClientToken => Str]

=item [DestinationURI => Str]

=item [ExecutionConfiguration => L<Paws::AppIntegrations::ExecutionConfiguration>]

=item [ObjectConfiguration => L<Paws::AppIntegrations::ObjectConfiguration>]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::CreateDataIntegrationAssociation>

Returns: a L<Paws::AppIntegrations::CreateDataIntegrationAssociationResponse> instance

Creates and persists a DataIntegrationAssociation resource.


=head2 CreateEventIntegration

=over

=item EventBridgeBus => Str

=item EventFilter => L<Paws::AppIntegrations::EventFilter>

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::AppIntegrations::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::CreateEventIntegration>

Returns: a L<Paws::AppIntegrations::CreateEventIntegrationResponse> instance

Creates an EventIntegration, given a specified name, description, and a
reference to an Amazon EventBridge bus in your account and a partner
event source that pushes events to that bus. No objects are created in
the your account, only metadata that is persisted on the
EventIntegration control plane.


=head2 DeleteApplication

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::DeleteApplication>

Returns: a L<Paws::AppIntegrations::DeleteApplicationResponse> instance

Deletes the Application. Only Applications that don't have any
Application Associations can be deleted.


=head2 DeleteDataIntegration

=over

=item DataIntegrationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::DeleteDataIntegration>

Returns: a L<Paws::AppIntegrations::DeleteDataIntegrationResponse> instance

Deletes the DataIntegration. Only DataIntegrations that don't have any
DataIntegrationAssociations can be deleted. Deleting a DataIntegration
also deletes the underlying Amazon AppFlow flow and service linked
role.

You cannot create a DataIntegration association for a DataIntegration
that has been previously associated. Use a different DataIntegration,
or recreate the DataIntegration using the CreateDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
API.


=head2 DeleteEventIntegration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::DeleteEventIntegration>

Returns: a L<Paws::AppIntegrations::DeleteEventIntegrationResponse> instance

Deletes the specified existing event integration. If the event
integration is associated with clients, the request is rejected.


=head2 GetApplication

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::GetApplication>

Returns: a L<Paws::AppIntegrations::GetApplicationResponse> instance

Get an Application resource.


=head2 GetDataIntegration

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::GetDataIntegration>

Returns: a L<Paws::AppIntegrations::GetDataIntegrationResponse> instance

Returns information about the DataIntegration.

You cannot create a DataIntegration association for a DataIntegration
that has been previously associated. Use a different DataIntegration,
or recreate the DataIntegration using the CreateDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
API.


=head2 GetEventIntegration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::GetEventIntegration>

Returns: a L<Paws::AppIntegrations::GetEventIntegrationResponse> instance

Returns information about the event integration.


=head2 ListApplicationAssociations

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListApplicationAssociations>

Returns: a L<Paws::AppIntegrations::ListApplicationAssociationsResponse> instance

Returns a paginated list of application associations for an
application.


=head2 ListApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListApplications>

Returns: a L<Paws::AppIntegrations::ListApplicationsResponse> instance

Lists applications in the account.


=head2 ListDataIntegrationAssociations

=over

=item DataIntegrationIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListDataIntegrationAssociations>

Returns: a L<Paws::AppIntegrations::ListDataIntegrationAssociationsResponse> instance

Returns a paginated list of DataIntegration associations in the
account.

You cannot create a DataIntegration association for a DataIntegration
that has been previously associated. Use a different DataIntegration,
or recreate the DataIntegration using the CreateDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
API.


=head2 ListDataIntegrations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListDataIntegrations>

Returns: a L<Paws::AppIntegrations::ListDataIntegrationsResponse> instance

Returns a paginated list of DataIntegrations in the account.

You cannot create a DataIntegration association for a DataIntegration
that has been previously associated. Use a different DataIntegration,
or recreate the DataIntegration using the CreateDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
API.


=head2 ListEventIntegrationAssociations

=over

=item EventIntegrationName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListEventIntegrationAssociations>

Returns: a L<Paws::AppIntegrations::ListEventIntegrationAssociationsResponse> instance

Returns a paginated list of event integration associations in the
account.


=head2 ListEventIntegrations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListEventIntegrations>

Returns: a L<Paws::AppIntegrations::ListEventIntegrationsResponse> instance

Returns a paginated list of event integrations in the account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppIntegrations::ListTagsForResource>

Returns: a L<Paws::AppIntegrations::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AppIntegrations::TagMap>


=back

Each argument is described in detail in: L<Paws::AppIntegrations::TagResource>

Returns: a L<Paws::AppIntegrations::TagResourceResponse> instance

Adds the specified tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::UntagResource>

Returns: a L<Paws::AppIntegrations::UntagResourceResponse> instance

Removes the specified tags from the specified resource.


=head2 UpdateApplication

=over

=item Arn => Str

=item [ApplicationSourceConfig => L<Paws::AppIntegrations::ApplicationSourceConfig>]

=item [Description => Str]

=item [Name => Str]

=item [Permissions => ArrayRef[Str|Undef]]

=item [Publications => ArrayRef[L<Paws::AppIntegrations::Publication>]]

=item [Subscriptions => ArrayRef[L<Paws::AppIntegrations::Subscription>]]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::UpdateApplication>

Returns: a L<Paws::AppIntegrations::UpdateApplicationResponse> instance

Updates and persists an Application resource.


=head2 UpdateDataIntegration

=over

=item Identifier => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::UpdateDataIntegration>

Returns: a L<Paws::AppIntegrations::UpdateDataIntegrationResponse> instance

Updates the description of a DataIntegration.

You cannot create a DataIntegration association for a DataIntegration
that has been previously associated. Use a different DataIntegration,
or recreate the DataIntegration using the CreateDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
API.


=head2 UpdateDataIntegrationAssociation

=over

=item DataIntegrationAssociationIdentifier => Str

=item DataIntegrationIdentifier => Str

=item ExecutionConfiguration => L<Paws::AppIntegrations::ExecutionConfiguration>


=back

Each argument is described in detail in: L<Paws::AppIntegrations::UpdateDataIntegrationAssociation>

Returns: a L<Paws::AppIntegrations::UpdateDataIntegrationAssociationResponse> instance

Updates and persists a DataIntegrationAssociation resource.

Updating a DataIntegrationAssociation with ExecutionConfiguration will
rerun the on-demand job.


=head2 UpdateEventIntegration

=over

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::AppIntegrations::UpdateEventIntegration>

Returns: a L<Paws::AppIntegrations::UpdateEventIntegrationResponse> instance

Updates the description of an event integration.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplicationAssociations(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllApplicationAssociations(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ApplicationAssociations, passing the object as the first parameter, and the string 'ApplicationAssociations' as the second parameter 

If not, it will return a a L<Paws::AppIntegrations::ListApplicationAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplications(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllApplications([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Applications, passing the object as the first parameter, and the string 'Applications' as the second parameter 

If not, it will return a a L<Paws::AppIntegrations::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataIntegrationAssociations(sub { },DataIntegrationIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataIntegrationAssociations(DataIntegrationIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataIntegrationAssociations, passing the object as the first parameter, and the string 'DataIntegrationAssociations' as the second parameter 

If not, it will return a a L<Paws::AppIntegrations::ListDataIntegrationAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataIntegrations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDataIntegrations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataIntegrations, passing the object as the first parameter, and the string 'DataIntegrations' as the second parameter 

If not, it will return a a L<Paws::AppIntegrations::ListDataIntegrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventIntegrationAssociations(sub { },EventIntegrationName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEventIntegrationAssociations(EventIntegrationName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventIntegrationAssociations, passing the object as the first parameter, and the string 'EventIntegrationAssociations' as the second parameter 

If not, it will return a a L<Paws::AppIntegrations::ListEventIntegrationAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventIntegrations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEventIntegrations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventIntegrations, passing the object as the first parameter, and the string 'EventIntegrations' as the second parameter 

If not, it will return a a L<Paws::AppIntegrations::ListEventIntegrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

