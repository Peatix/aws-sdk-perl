package Paws::WorkSpacesThinClient;
  use Moose;
  sub service { 'thinclient' }
  sub signing_name { 'thinclient' }
  sub version { '2023-08-22' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::DeleteDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::DeregisterDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::GetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSoftwareSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::GetSoftwareSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSoftwareSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::ListSoftwareSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::UpdateDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSoftwareSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpacesThinClient::UpdateSoftwareSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDevices(@_, nextToken => $next_result->nextToken);
        push @{ $result->devices }, @{ $next_result->devices };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'devices') foreach (@{ $result->devices });
        $result = $self->ListDevices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'devices') foreach (@{ $result->devices });
    }

    return undef
  }
  sub ListAllEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->environments }, @{ $next_result->environments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'environments') foreach (@{ $result->environments });
        $result = $self->ListEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'environments') foreach (@{ $result->environments });
    }

    return undef
  }
  sub ListAllSoftwareSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSoftwareSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSoftwareSets(@_, nextToken => $next_result->nextToken);
        push @{ $result->softwareSets }, @{ $next_result->softwareSets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'softwareSets') foreach (@{ $result->softwareSets });
        $result = $self->ListSoftwareSets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'softwareSets') foreach (@{ $result->softwareSets });
    }

    return undef
  }


  sub operations { qw/CreateEnvironment DeleteDevice DeleteEnvironment DeregisterDevice GetDevice GetEnvironment GetSoftwareSet ListDevices ListEnvironments ListSoftwareSets ListTagsForResource TagResource UntagResource UpdateDevice UpdateEnvironment UpdateSoftwareSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient - Perl Interface to AWS Amazon WorkSpaces Thin Client

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkSpacesThinClient');
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

Amazon WorkSpaces Thin Client is an affordable device built to work
with Amazon Web Services End User Computing (EUC) virtual desktops to
provide users with a complete cloud desktop solution. WorkSpaces Thin
Client is a compact device designed to connect up to two monitors and
USB devices like a keyboard, mouse, headset, and webcam. To maximize
endpoint security, WorkSpaces Thin Client devices do not allow local
data storage or installation of unapproved applications. The WorkSpaces
Thin Client device ships preloaded with device management software.

You can use these APIs to complete WorkSpaces Thin Client tasks, such
as creating environments or viewing devices. For more information about
WorkSpaces Thin Client, including the required permissions to use the
service, see the Amazon WorkSpaces Thin Client Administrator Guide
(https://docs.aws.amazon.com/workspaces-thin-client/latest/ag/). For
more information about using the Command Line Interface (CLI) to manage
your WorkSpaces Thin Client resources, see the WorkSpaces Thin Client
section of the CLI Reference
(https://docs.aws.amazon.com/cli/latest/reference/workspaces-thin-client/index.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateEnvironment

=over

=item DesktopArn => Str

=item [ClientToken => Str]

=item [DesiredSoftwareSetId => Str]

=item [DesktopEndpoint => Str]

=item [DeviceCreationTags => L<Paws::WorkSpacesThinClient::DeviceCreationTagsMap>]

=item [KmsKeyArn => Str]

=item [MaintenanceWindow => L<Paws::WorkSpacesThinClient::MaintenanceWindow>]

=item [Name => Str]

=item [SoftwareSetUpdateMode => Str]

=item [SoftwareSetUpdateSchedule => Str]

=item [Tags => L<Paws::WorkSpacesThinClient::TagsMap>]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::CreateEnvironment>

Returns: a L<Paws::WorkSpacesThinClient::CreateEnvironmentResponse> instance

Creates an environment for your thin client devices.


=head2 DeleteDevice

=over

=item Id => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::DeleteDevice>

Returns: a L<Paws::WorkSpacesThinClient::DeleteDeviceResponse> instance

Deletes a thin client device.


=head2 DeleteEnvironment

=over

=item Id => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::DeleteEnvironment>

Returns: a L<Paws::WorkSpacesThinClient::DeleteEnvironmentResponse> instance

Deletes an environment.


=head2 DeregisterDevice

=over

=item Id => Str

=item [ClientToken => Str]

=item [TargetDeviceStatus => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::DeregisterDevice>

Returns: a L<Paws::WorkSpacesThinClient::DeregisterDeviceResponse> instance

Deregisters a thin client device.


=head2 GetDevice

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::GetDevice>

Returns: a L<Paws::WorkSpacesThinClient::GetDeviceResponse> instance

Returns information for a thin client device.


=head2 GetEnvironment

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::GetEnvironment>

Returns: a L<Paws::WorkSpacesThinClient::GetEnvironmentResponse> instance

Returns information for an environment.


=head2 GetSoftwareSet

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::GetSoftwareSet>

Returns: a L<Paws::WorkSpacesThinClient::GetSoftwareSetResponse> instance

Returns information for a software set.


=head2 ListDevices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::ListDevices>

Returns: a L<Paws::WorkSpacesThinClient::ListDevicesResponse> instance

Returns a list of thin client devices.


=head2 ListEnvironments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::ListEnvironments>

Returns: a L<Paws::WorkSpacesThinClient::ListEnvironmentsResponse> instance

Returns a list of environments.


=head2 ListSoftwareSets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::ListSoftwareSets>

Returns: a L<Paws::WorkSpacesThinClient::ListSoftwareSetsResponse> instance

Returns a list of software sets.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::ListTagsForResource>

Returns: a L<Paws::WorkSpacesThinClient::ListTagsForResourceResponse> instance

Returns a list of tags for a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::WorkSpacesThinClient::TagsMap>


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::TagResource>

Returns: a L<Paws::WorkSpacesThinClient::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::UntagResource>

Returns: a L<Paws::WorkSpacesThinClient::UntagResourceResponse> instance

Removes a tag or tags from a resource.


=head2 UpdateDevice

=over

=item Id => Str

=item [DesiredSoftwareSetId => Str]

=item [Name => Str]

=item [SoftwareSetUpdateSchedule => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::UpdateDevice>

Returns: a L<Paws::WorkSpacesThinClient::UpdateDeviceResponse> instance

Updates a thin client device.


=head2 UpdateEnvironment

=over

=item Id => Str

=item [DesiredSoftwareSetId => Str]

=item [DesktopArn => Str]

=item [DesktopEndpoint => Str]

=item [DeviceCreationTags => L<Paws::WorkSpacesThinClient::DeviceCreationTagsMap>]

=item [MaintenanceWindow => L<Paws::WorkSpacesThinClient::MaintenanceWindow>]

=item [Name => Str]

=item [SoftwareSetUpdateMode => Str]

=item [SoftwareSetUpdateSchedule => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::UpdateEnvironment>

Returns: a L<Paws::WorkSpacesThinClient::UpdateEnvironmentResponse> instance

Updates an environment.


=head2 UpdateSoftwareSet

=over

=item Id => Str

=item ValidationStatus => Str


=back

Each argument is described in detail in: L<Paws::WorkSpacesThinClient::UpdateSoftwareSet>

Returns: a L<Paws::WorkSpacesThinClient::UpdateSoftwareSetResponse> instance

Updates a software set.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDevices(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDevices([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - devices, passing the object as the first parameter, and the string 'devices' as the second parameter 

If not, it will return a a L<Paws::WorkSpacesThinClient::ListDevicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironments(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironments([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - environments, passing the object as the first parameter, and the string 'environments' as the second parameter 

If not, it will return a a L<Paws::WorkSpacesThinClient::ListEnvironmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSoftwareSets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSoftwareSets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - softwareSets, passing the object as the first parameter, and the string 'softwareSets' as the second parameter 

If not, it will return a a L<Paws::WorkSpacesThinClient::ListSoftwareSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

