package Paws::SsmSap;
  use Moose;
  sub service { 'ssm-sap' }
  sub signing_name { 'ssm-sap' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteResourcePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::DeleteResourcePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::DeregisterApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::GetComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::GetDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::GetOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::GetResourcePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::ListComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::ListDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOperationEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::ListOperationEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::ListOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::PutResourcePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::RegisterApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::StartApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartApplicationRefresh {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::StartApplicationRefresh', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::StopApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplicationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SsmSap::UpdateApplicationSettings', @_);
    return $self->caller->do_call($self, $call_object);
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
  sub ListAllComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListComponents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Components }, @{ $next_result->Components };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Components') foreach (@{ $result->Components });
        $result = $self->ListComponents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Components') foreach (@{ $result->Components });
    }

    return undef
  }
  sub ListAllDatabases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatabases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatabases(@_, NextToken => $next_result->NextToken);
        push @{ $result->Databases }, @{ $next_result->Databases };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Databases') foreach (@{ $result->Databases });
        $result = $self->ListDatabases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Databases') foreach (@{ $result->Databases });
    }

    return undef
  }
  sub ListAllOperationEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOperationEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOperationEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->OperationEvents }, @{ $next_result->OperationEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OperationEvents') foreach (@{ $result->OperationEvents });
        $result = $self->ListOperationEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OperationEvents') foreach (@{ $result->OperationEvents });
    }

    return undef
  }
  sub ListAllOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Operations }, @{ $next_result->Operations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Operations') foreach (@{ $result->Operations });
        $result = $self->ListOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Operations') foreach (@{ $result->Operations });
    }

    return undef
  }


  sub operations { qw/DeleteResourcePermission DeregisterApplication GetApplication GetComponent GetDatabase GetOperation GetResourcePermission ListApplications ListComponents ListDatabases ListOperationEvents ListOperations ListTagsForResource PutResourcePermission RegisterApplication StartApplication StartApplicationRefresh StopApplication TagResource UntagResource UpdateApplicationSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap - Perl Interface to AWS AWS Systems Manager for SAP

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SsmSap');
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

This API reference provides descriptions, syntax, and other details
about each of the actions and data types for AWS Systems Manager for
SAP. The topic for each action shows the API request parameters and
responses.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 DeleteResourcePermission

=over

=item ResourceArn => Str

=item [ActionType => Str]

=item [SourceResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::DeleteResourcePermission>

Returns: a L<Paws::SsmSap::DeleteResourcePermissionOutput> instance

Removes permissions associated with the target database.


=head2 DeregisterApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::SsmSap::DeregisterApplication>

Returns: a L<Paws::SsmSap::DeregisterApplicationOutput> instance

Deregister an SAP application with AWS Systems Manager for SAP. This
action does not aect the existing setup of your SAP workloads on Amazon
EC2.


=head2 GetApplication

=over

=item [ApplicationArn => Str]

=item [ApplicationId => Str]

=item [AppRegistryArn => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::GetApplication>

Returns: a L<Paws::SsmSap::GetApplicationOutput> instance

Gets an application registered with AWS Systems Manager for SAP. It
also returns the components of the application.


=head2 GetComponent

=over

=item ApplicationId => Str

=item ComponentId => Str


=back

Each argument is described in detail in: L<Paws::SsmSap::GetComponent>

Returns: a L<Paws::SsmSap::GetComponentOutput> instance

Gets the component of an application registered with AWS Systems
Manager for SAP.


=head2 GetDatabase

=over

=item [ApplicationId => Str]

=item [ComponentId => Str]

=item [DatabaseArn => Str]

=item [DatabaseId => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::GetDatabase>

Returns: a L<Paws::SsmSap::GetDatabaseOutput> instance

Gets the SAP HANA database of an application registered with AWS
Systems Manager for SAP.


=head2 GetOperation

=over

=item OperationId => Str


=back

Each argument is described in detail in: L<Paws::SsmSap::GetOperation>

Returns: a L<Paws::SsmSap::GetOperationOutput> instance

Gets the details of an operation by specifying the operation ID.


=head2 GetResourcePermission

=over

=item ResourceArn => Str

=item [ActionType => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::GetResourcePermission>

Returns: a L<Paws::SsmSap::GetResourcePermissionOutput> instance

Gets permissions associated with the target database.


=head2 ListApplications

=over

=item [Filters => ArrayRef[L<Paws::SsmSap::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::ListApplications>

Returns: a L<Paws::SsmSap::ListApplicationsOutput> instance

Lists all the applications registered with AWS Systems Manager for SAP.


=head2 ListComponents

=over

=item [ApplicationId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::ListComponents>

Returns: a L<Paws::SsmSap::ListComponentsOutput> instance

Lists all the components registered with AWS Systems Manager for SAP.


=head2 ListDatabases

=over

=item [ApplicationId => Str]

=item [ComponentId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::ListDatabases>

Returns: a L<Paws::SsmSap::ListDatabasesOutput> instance

Lists the SAP HANA databases of an application registered with AWS
Systems Manager for SAP.


=head2 ListOperationEvents

=over

=item OperationId => Str

=item [Filters => ArrayRef[L<Paws::SsmSap::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::ListOperationEvents>

Returns: a L<Paws::SsmSap::ListOperationEventsOutput> instance

Returns a list of operations events.

Available parameters include C<OperationID>, as well as optional
parameters C<MaxResults>, C<NextToken>, and C<Filters>.


=head2 ListOperations

=over

=item ApplicationId => Str

=item [Filters => ArrayRef[L<Paws::SsmSap::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::ListOperations>

Returns: a L<Paws::SsmSap::ListOperationsOutput> instance

Lists the operations performed by AWS Systems Manager for SAP.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SsmSap::ListTagsForResource>

Returns: a L<Paws::SsmSap::ListTagsForResourceResponse> instance

Lists all tags on an SAP HANA application and/or database registered
with AWS Systems Manager for SAP.


=head2 PutResourcePermission

=over

=item ActionType => Str

=item ResourceArn => Str

=item SourceResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SsmSap::PutResourcePermission>

Returns: a L<Paws::SsmSap::PutResourcePermissionOutput> instance

Adds permissions to the target database.


=head2 RegisterApplication

=over

=item ApplicationId => Str

=item ApplicationType => Str

=item Instances => ArrayRef[Str|Undef]

=item [ComponentsInfo => ArrayRef[L<Paws::SsmSap::ComponentInfo>]]

=item [Credentials => ArrayRef[L<Paws::SsmSap::ApplicationCredential>]]

=item [DatabaseArn => Str]

=item [SapInstanceNumber => Str]

=item [Sid => Str]

=item [Tags => L<Paws::SsmSap::TagMap>]


=back

Each argument is described in detail in: L<Paws::SsmSap::RegisterApplication>

Returns: a L<Paws::SsmSap::RegisterApplicationOutput> instance

Register an SAP application with AWS Systems Manager for SAP. You must
meet the following requirements before registering.

The SAP application you want to register with AWS Systems Manager for
SAP is running on Amazon EC2.

AWS Systems Manager Agent must be setup on an Amazon EC2 instance along
with the required IAM permissions.

Amazon EC2 instance(s) must have access to the secrets created in AWS
Secrets Manager to manage SAP applications and components.


=head2 StartApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::SsmSap::StartApplication>

Returns: a L<Paws::SsmSap::StartApplicationOutput> instance

Request is an operation which starts an application.

Parameter C<ApplicationId> is required.


=head2 StartApplicationRefresh

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::SsmSap::StartApplicationRefresh>

Returns: a L<Paws::SsmSap::StartApplicationRefreshOutput> instance

Refreshes a registered application.


=head2 StopApplication

=over

=item ApplicationId => Str

=item [IncludeEc2InstanceShutdown => Bool]

=item [StopConnectedEntity => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::StopApplication>

Returns: a L<Paws::SsmSap::StopApplicationOutput> instance

Request is an operation to stop an application.

Parameter C<ApplicationId> is required. Parameters
C<StopConnectedEntity> and C<IncludeEc2InstanceShutdown> are optional.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SsmSap::TagMap>


=back

Each argument is described in detail in: L<Paws::SsmSap::TagResource>

Returns: a L<Paws::SsmSap::TagResourceResponse> instance

Creates tag for a resource by specifying the ARN.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SsmSap::UntagResource>

Returns: a L<Paws::SsmSap::UntagResourceResponse> instance

Delete the tags for a resource.


=head2 UpdateApplicationSettings

=over

=item ApplicationId => Str

=item [Backint => L<Paws::SsmSap::BackintConfig>]

=item [CredentialsToAddOrUpdate => ArrayRef[L<Paws::SsmSap::ApplicationCredential>]]

=item [CredentialsToRemove => ArrayRef[L<Paws::SsmSap::ApplicationCredential>]]

=item [DatabaseArn => Str]


=back

Each argument is described in detail in: L<Paws::SsmSap::UpdateApplicationSettings>

Returns: a L<Paws::SsmSap::UpdateApplicationSettingsOutput> instance

Updates the settings of an application registered with AWS Systems
Manager for SAP.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },[Filters => ArrayRef[L<Paws::SsmSap::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllApplications([Filters => ArrayRef[L<Paws::SsmSap::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Applications, passing the object as the first parameter, and the string 'Applications' as the second parameter 

If not, it will return a a L<Paws::SsmSap::ListApplicationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComponents(sub { },[ApplicationId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllComponents([ApplicationId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Components, passing the object as the first parameter, and the string 'Components' as the second parameter 

If not, it will return a a L<Paws::SsmSap::ListComponentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatabases(sub { },[ApplicationId => Str, ComponentId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDatabases([ApplicationId => Str, ComponentId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Databases, passing the object as the first parameter, and the string 'Databases' as the second parameter 

If not, it will return a a L<Paws::SsmSap::ListDatabasesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOperationEvents(sub { },OperationId => Str, [Filters => ArrayRef[L<Paws::SsmSap::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllOperationEvents(OperationId => Str, [Filters => ArrayRef[L<Paws::SsmSap::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OperationEvents, passing the object as the first parameter, and the string 'OperationEvents' as the second parameter 

If not, it will return a a L<Paws::SsmSap::ListOperationEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOperations(sub { },ApplicationId => Str, [Filters => ArrayRef[L<Paws::SsmSap::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllOperations(ApplicationId => Str, [Filters => ArrayRef[L<Paws::SsmSap::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Operations, passing the object as the first parameter, and the string 'Operations' as the second parameter 

If not, it will return a a L<Paws::SsmSap::ListOperationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

