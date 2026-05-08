package Paws::GameLiftStreams;
  use Moose;
  sub service { 'gameliftstreams' }
  sub signing_name { 'gameliftstreams' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddStreamGroupLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::AddStreamGroupLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::AssociateApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::CreateStreamGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamSessionConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::CreateStreamSessionConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::DeleteStreamGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::DisassociateApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportStreamSessionFiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::ExportStreamSessionFiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::GetStreamGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::GetStreamSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::ListStreamGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::ListStreamSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamSessionsByAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::ListStreamSessionsByAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveStreamGroupLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::RemoveStreamGroupLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartStreamSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::StartStreamSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateStreamSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::TerminateStreamSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStreamGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLiftStreams::UpdateStreamGroup', @_);
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
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllStreamGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStreamGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListStreamGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllStreamSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStreamSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListStreamSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllStreamSessionsByAccount {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamSessionsByAccount(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStreamSessionsByAccount(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListStreamSessionsByAccount(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/AddStreamGroupLocations AssociateApplications CreateApplication CreateStreamGroup CreateStreamSessionConnection DeleteApplication DeleteStreamGroup DisassociateApplications ExportStreamSessionFiles GetApplication GetStreamGroup GetStreamSession ListApplications ListStreamGroups ListStreamSessions ListStreamSessionsByAccount ListTagsForResource RemoveStreamGroupLocations StartStreamSession TagResource TerminateStreamSession UntagResource UpdateApplication UpdateStreamGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams - Perl Interface to AWS Amazon GameLift Streams

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GameLiftStreams');
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

Amazon GameLift Streams

Amazon GameLift Streams provides a global cloud solution for content
streaming experiences. Use Amazon GameLift Streams tools to upload and
configure content for streaming, deploy and scale computing resources
to host streams, and manage stream session placement to meet customer
demand.

This Reference Guide describes the Amazon GameLift Streams service API.
You can use the API through the Amazon Web Services SDK, the Command
Line Interface (AWS CLI), or by making direct REST calls through HTTPS.

See the I<Amazon GameLift Streams Developer Guide> for more information
on how Amazon GameLift Streams works and how to work with it.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AddStreamGroupLocations

=over

=item Identifier => Str

=item LocationConfigurations => ArrayRef[L<Paws::GameLiftStreams::LocationConfiguration>]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::AddStreamGroupLocations>

Returns: a L<Paws::GameLiftStreams::AddStreamGroupLocationsOutput> instance

Add locations that can host stream sessions. You configure locations
and their corresponding capacity for each stream group. Creating a
stream group in a location that's nearest to your end users can help
minimize latency and improve quality.

This operation provisions stream capacity at the specified locations.
By default, all locations have 1 or 2 capacity, depending on the stream
class option: 2 for 'High' and 1 for 'Ultra' and 'Win2022'. This
operation also copies the content files of all associated applications
to an internal S3 bucket at each location. This allows Amazon GameLift
Streams to host performant stream sessions.


=head2 AssociateApplications

=over

=item ApplicationIdentifiers => ArrayRef[Str|Undef]

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::AssociateApplications>

Returns: a L<Paws::GameLiftStreams::AssociateApplicationsOutput> instance

When you associate, or link, an application with a stream group, then
Amazon GameLift Streams can launch the application using the stream
group's allocated compute resources. The stream group must be in
C<ACTIVE> status. You can reverse this action by using
DisassociateApplications
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html).


=head2 CreateApplication

=over

=item ApplicationSourceUri => Str

=item Description => Str

=item ExecutablePath => Str

=item RuntimeEnvironment => L<Paws::GameLiftStreams::RuntimeEnvironment>

=item [ApplicationLogOutputUri => Str]

=item [ApplicationLogPaths => ArrayRef[Str|Undef]]

=item [ClientToken => Str]

=item [Tags => L<Paws::GameLiftStreams::Tags>]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::CreateApplication>

Returns: a L<Paws::GameLiftStreams::CreateApplicationOutput> instance

Creates an application resource in Amazon GameLift Streams, which
specifies the application content you want to stream, such as a game
build or other software, and configures the settings to run it.

Before you create an application, upload your application content files
to an Amazon Simple Storage Service (Amazon S3) bucket. For more
information, see B<Getting Started> in the Amazon GameLift Streams
Developer Guide.

Make sure that your files in the Amazon S3 bucket are the correct
version you want to use. As soon as you create a Amazon GameLift
Streams application, you cannot change the files at a later time.

If the request is successful, Amazon GameLift Streams begins to create
an application and sets the status to C<INITIALIZED>. When an
application reaches C<READY> status, you can use the application to set
up stream groups and start streams. To track application status, call
GetApplication
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetApplication.html).


=head2 CreateStreamGroup

=over

=item Description => Str

=item StreamClass => Str

=item [ClientToken => Str]

=item [DefaultApplicationIdentifier => Str]

=item [LocationConfigurations => ArrayRef[L<Paws::GameLiftStreams::LocationConfiguration>]]

=item [Tags => L<Paws::GameLiftStreams::Tags>]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::CreateStreamGroup>

Returns: a L<Paws::GameLiftStreams::CreateStreamGroupOutput> instance

Manage how Amazon GameLift Streams streams your applications by using a
stream group. A stream group is a collection of resources that Amazon
GameLift Streams uses to stream your application to end-users. When you
create a stream group, you specify an application to stream by default
and the type of hardware to use, such as the graphical processing unit
(GPU). You can also link additional applications, which allows you to
stream those applications using this stream group. Depending on your
expected users, you also scale the number of concurrent streams you
want to support at one time, and in what locations.

Stream capacity represents the number of concurrent streams that can be
active at a time. You set stream capacity per location, per stream
group. There are two types of capacity: always-on and on-demand:

=over

=item *

B<Always-on>: The streaming capacity that is allocated and ready to
handle stream requests without delay. You pay for this capacity whether
it's in use or not. Best for quickest time from streaming request to
streaming session.

 </p> </li> <li> <p> <b>On-demand</b>: The streaming capacity that Amazon GameLift Streams can allocate in response to stream requests, and then de-allocate when the session has terminated. This offers a cost control measure at the expense of a greater startup time (typically under 5 minutes). </p> </li> </ul> <p> To adjust the capacity of any <code>ACTIVE</code> stream group, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UpdateStreamGroup.html">UpdateStreamGroup</a>. </p> <p> If the request is successful, Amazon GameLift Streams begins creating the stream group. Amazon GameLift Streams assigns a unique ID to the stream group resource and sets the status to <code>ACTIVATING</code>. When the stream group reaches <code>ACTIVE</code> status, you can start stream sessions by using <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_StartStreamSession.html">StartStreamSession</a>. To check the stream group's status, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html">GetStreamGroup</a>. </p> 

=back



=head2 CreateStreamSessionConnection

=over

=item Identifier => Str

=item SignalRequest => Str

=item StreamSessionIdentifier => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::CreateStreamSessionConnection>

Returns: a L<Paws::GameLiftStreams::CreateStreamSessionConnectionOutput> instance

Allows clients to reconnect to a recently disconnected stream session
without losing any data from the last session.

A client can reconnect to a stream session that's in
C<PENDING_CLIENT_RECONNECTION> or C<ACTIVE> status. In the stream
session life cycle, when the client disconnects from the stream
session, the stream session transitions from C<CONNECTED> to
C<PENDING_CLIENT_RECONNECTION> status. When a client requests to
reconnect by calling C<CreateStreamSessionConnection>, the stream
session transitions to C<RECONNECTING> status. When the reconnection is
successful, the stream session transitions to C<ACTIVE> status. After a
stream session is disconnected for longer than
C<ConnectionTimeoutSeconds>, the stream session transitions to the
C<TERMINATED> status.

To connect to an existing stream session, specify the stream group ID
and stream session ID that you want to reconnect to, as well as the
signal request settings to use with the stream.

C<ConnectionTimeoutSeconds> defines the amount of time after the stream
session disconnects that a reconnection is allowed. If a client is
disconnected from the stream for longer than
C<ConnectionTimeoutSeconds>, the stream session ends.


=head2 DeleteApplication

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::DeleteApplication>

Returns: nothing

Permanently deletes an Amazon GameLift Streams application resource.
This also deletes the application content files stored with Amazon
GameLift Streams. However, this does not delete the original files that
you uploaded to your Amazon S3 bucket; you can delete these any time
after Amazon GameLift Streams creates an application, which is the only
time Amazon GameLift Streams accesses your Amazon S3 bucket.

You can only delete an application that meets the following conditions:

=over

=item *

The application is in C<READY> or C<ERROR> status. You cannot delete an
application that's in C<PROCESSING> or C<INITIALIZED> status.

=item *

The application is not the default application of any stream groups.
You must first delete the stream group by using DeleteStreamGroup
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DeleteStreamGroup.html).

=item *

The application is not linked to any stream groups. You must first
unlink the stream group by using DisassociateApplications
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html).

=item *

An application is not streaming in any ongoing stream session. You must
wait until the client ends the stream session or call
TerminateStreamSession
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TerminateStreamSession.html)
to end the stream.

=back

If any active stream groups exist for this application, this request
returns a C<ValidationException>.


=head2 DeleteStreamGroup

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::DeleteStreamGroup>

Returns: nothing

Permanently deletes all compute resources and information related to a
stream group. To delete a stream group, specify the unique stream group
identifier. During the deletion process, the stream group's status is
C<DELETING>. This operation stops streams in progress and prevents new
streams from starting. As a best practice, before deleting the stream
group, call ListStreamSessions
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListStreamSessions.html)
to check for streams in progress and take action to stop them. When you
delete a stream group, any application associations referring to that
stream group are automatically removed.


=head2 DisassociateApplications

=over

=item ApplicationIdentifiers => ArrayRef[Str|Undef]

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::DisassociateApplications>

Returns: a L<Paws::GameLiftStreams::DisassociateApplicationsOutput> instance

When you disassociate, or unlink, an application from a stream group,
you can no longer stream this application by using that stream group's
allocated compute resources. Any streams in process will continue until
they terminate, which helps avoid interrupting an end-user's stream.
Amazon GameLift Streams will not initiate new streams using this stream
group. The disassociate action does not affect the stream capacity of a
stream group.

You can only disassociate an application if it's not a default
application of the stream group. Check C<DefaultApplicationIdentifier>
by calling GetStreamGroup
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html).


=head2 ExportStreamSessionFiles

=over

=item Identifier => Str

=item OutputUri => Str

=item StreamSessionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::ExportStreamSessionFiles>

Returns: a L<Paws::GameLiftStreams::ExportStreamSessionFilesOutput> instance

Export the files that your application modifies or generates in a
stream session, which can help you debug or verify your application.
When your application runs, it generates output files such as logs,
diagnostic information, crash dumps, save files, user data,
screenshots, and so on. The files can be defined by the engine or
frameworks that your application uses, or information that you've
programmed your application to output.

You can only call this action on a stream session that is in progress,
specifically in one of the following statuses C<ACTIVE>, C<CONNECTED>,
C<PENDING_CLIENT_RECONNECTION>, and C<RECONNECTING>. You must provide
an Amazon Simple Storage Service (Amazon S3) bucket to store the files
in. When the session ends, Amazon GameLift Streams produces a
compressed folder that contains all of the files and directories that
were modified or created by the application during the stream session.
AWS uses your security credentials to authenticate and authorize access
to your Amazon S3 bucket.

Amazon GameLift Streams collects the following generated and modified
files. Find them in the corresponding folders in the C<.zip> archive.

=over

=item *

C<application/>: The folder where your application or game is stored.

=back

=over

=item *

C<profile/>: The user profile folder.

=item *

C<temp/>: The system temp folder.

=back

To verify the status of the exported files, use GetStreamSession.

To delete the files, delete the object in the S3 bucket.


=head2 GetApplication

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::GetApplication>

Returns: a L<Paws::GameLiftStreams::GetApplicationOutput> instance

Retrieves properties for an Amazon GameLift Streams application
resource. Specify the ID of the application that you want to retrieve.
If the operation is successful, it returns properties for the requested
application.


=head2 GetStreamGroup

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::GetStreamGroup>

Returns: a L<Paws::GameLiftStreams::GetStreamGroupOutput> instance

Retrieves properties for a Amazon GameLift Streams stream group
resource. Specify the ID of the stream group that you want to retrieve.
If the operation is successful, it returns properties for the requested
stream group.


=head2 GetStreamSession

=over

=item Identifier => Str

=item StreamSessionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::GetStreamSession>

Returns: a L<Paws::GameLiftStreams::GetStreamSessionOutput> instance

Retrieves properties for a Amazon GameLift Streams stream session
resource. Specify the Amazon Resource Name (ARN) of the stream session
that you want to retrieve and its stream group ARN. If the operation is
successful, it returns properties for the requested resource.


=head2 ListApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::ListApplications>

Returns: a L<Paws::GameLiftStreams::ListApplicationsOutput> instance

Retrieves a list of all Amazon GameLift Streams applications that are
associated with the Amazon Web Services account in use. This operation
returns applications in all statuses, in no particular order. You can
paginate the results as needed.


=head2 ListStreamGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::ListStreamGroups>

Returns: a L<Paws::GameLiftStreams::ListStreamGroupsOutput> instance

Retrieves a list of all Amazon GameLift Streams stream groups that are
associated with the Amazon Web Services account in use. This operation
returns stream groups in all statuses, in no particular order. You can
paginate the results as needed.


=head2 ListStreamSessions

=over

=item Identifier => Str

=item [ExportFilesStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::ListStreamSessions>

Returns: a L<Paws::GameLiftStreams::ListStreamSessionsOutput> instance

Retrieves a list of Amazon GameLift Streams stream sessions that a
stream group is hosting.

To retrieve stream sessions, specify the stream group, and optionally
filter by stream session status. You can paginate the results as
needed.

This operation returns the requested stream sessions in no particular
order.


=head2 ListStreamSessionsByAccount

=over

=item [ExportFilesStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::ListStreamSessionsByAccount>

Returns: a L<Paws::GameLiftStreams::ListStreamSessionsByAccountOutput> instance

Retrieves a list of Amazon GameLift Streams stream sessions that this
user account has access to.

In the returned list of stream sessions, the C<ExportFilesMetadata>
property only shows the C<Status> value. To get the C<OutpurUri> and
C<StatusReason> values, use GetStreamSession
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html).

We don't recommend using this operation to regularly check stream
session statuses because it's costly. Instead, to check status updates
for a specific stream session, use GetStreamSession
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::ListTagsForResource>

Returns: a L<Paws::GameLiftStreams::ListTagsForResourceResponse> instance

Retrieves all tags assigned to a Amazon GameLift Streams resource. To
list tags for a resource, specify the ARN value for the resource.

B<Learn more>

Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>

Amazon Web Services Tagging Strategies
(http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)


=head2 RemoveStreamGroupLocations

=over

=item Identifier => Str

=item Locations => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::RemoveStreamGroupLocations>

Returns: nothing

Removes a set of remote locations from this stream group. Amazon
GameLift Streams works to release allocated compute resources in these
location. Thus, stream sessions can no longer start from these
locations by using this stream group. Amazon GameLift Streams also
deletes the content files of all associated applications that were in
Amazon GameLift Streams's internal S3 bucket at this location.

You cannot remove the region where you initially created this stream
group, known as the primary location. However, you can set the stream
capacity to zero.


=head2 StartStreamSession

=over

=item ApplicationIdentifier => Str

=item Identifier => Str

=item Protocol => Str

=item SignalRequest => Str

=item [AdditionalEnvironmentVariables => L<Paws::GameLiftStreams::EnvironmentVariables>]

=item [AdditionalLaunchArgs => ArrayRef[Str|Undef]]

=item [ClientToken => Str]

=item [ConnectionTimeoutSeconds => Int]

=item [Description => Str]

=item [Locations => ArrayRef[Str|Undef]]

=item [SessionLengthSeconds => Int]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::StartStreamSession>

Returns: a L<Paws::GameLiftStreams::StartStreamSessionOutput> instance

This action initiates a new stream session and outputs connection
information that clients can use to access the stream. A stream session
refers to an instance of a stream that Amazon GameLift Streams
transmits from the server to the end-user. A stream session runs on a
compute resource, or stream capacity, that a stream group has
allocated.

To start a new stream session, specify a stream group and application
ID, along with the transport protocol and signal request settings to
use with the stream. You must have associated at least one application
to the stream group before starting a stream session, either when
creating the stream group, or by using AssociateApplications
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_AssociateApplications.html).

For stream groups that have multiple locations, provide a set of
locations ordered by priority by setting C<Locations>. Amazon GameLift
Streams will start a single stream session in the next available
location. An application must be finished replicating in a remote
location before the remote location can host a stream.

If the request is successful, Amazon GameLift Streams begins to prepare
the stream. Amazon GameLift Streams assigns an Amazon Resource Name
(ARN) value to the stream session resource and sets the status to
C<ACTIVATING>. During the stream preparation process, Amazon GameLift
Streams queues the request and searches for available stream capacity
to run the stream. This can result to one of the following:

=over

=item *

Amazon GameLift Streams identifies an available compute resource to run
the application content and start the stream. When the stream is ready,
the stream session's status changes to C<ACTIVE> and includes stream
connection information. Provide the connection information to the
requesting client to join the stream session.

=item *

Amazon GameLift Streams doesn't identify an available resource within a
certain time, set by C<ClientToken>. In this case, Amazon GameLift
Streams stops processing the request, and the stream session object
status changes to C<ERROR> with status reason C<placementTimeout>.

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::GameLiftStreams::Tags>


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::TagResource>

Returns: a L<Paws::GameLiftStreams::TagResourceResponse> instance

Assigns one or more tags to a Amazon GameLift Streams resource. Use
tags to organize Amazon Web Services resources for a range of purposes.
You can assign tags to the following Amazon GameLift Streams resource
types:

=over

=item *

Application

=item *

StreamGroup

=back

B<Learn more>

Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>

Amazon Web Services Tagging Strategies
(http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)


=head2 TerminateStreamSession

=over

=item Identifier => Str

=item StreamSessionIdentifier => Str


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::TerminateStreamSession>

Returns: nothing

Permanently terminates an active stream session. When called, the
stream session status changes to C<TERMINATING>. You can terminate a
stream session in any status except C<ACTIVATING>. If the stream
session is in C<ACTIVATING> status, an exception is thrown.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::UntagResource>

Returns: a L<Paws::GameLiftStreams::UntagResourceResponse> instance

Removes one or more tags from a Amazon GameLift Streams resource. To
remove tags, specify the Amazon GameLift Streams resource and a list of
one or more tags to remove.


=head2 UpdateApplication

=over

=item Identifier => Str

=item [ApplicationLogOutputUri => Str]

=item [ApplicationLogPaths => ArrayRef[Str|Undef]]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::UpdateApplication>

Returns: a L<Paws::GameLiftStreams::UpdateApplicationOutput> instance

Updates the mutable configuration settings for a Amazon GameLift
Streams application resource. You can change the C<Description>,
C<ApplicationLogOutputUri>, and C<ApplicationLogPaths>.

To update application settings, specify the application ID and provide
the new values. If the operation is successful, it returns the complete
updated set of settings for the application.


=head2 UpdateStreamGroup

=over

=item Identifier => Str

=item [Description => Str]

=item [LocationConfigurations => ArrayRef[L<Paws::GameLiftStreams::LocationConfiguration>]]


=back

Each argument is described in detail in: L<Paws::GameLiftStreams::UpdateStreamGroup>

Returns: a L<Paws::GameLiftStreams::UpdateStreamGroupOutput> instance

Updates the configuration settings for an Amazon GameLift Streams
stream group resource. You can change the description, the set of
locations, and the requested capacity of a stream group per location.
If you want to change the stream class, create a new stream group.

Stream capacity represents the number of concurrent streams that can be
active at a time. You set stream capacity per location, per stream
group. There are two types of capacity: always-on and on-demand:

=over

=item *

B<Always-on>: The streaming capacity that is allocated and ready to
handle stream requests without delay. You pay for this capacity whether
it's in use or not. Best for quickest time from streaming request to
streaming session.

 </p> </li> <li> <p> <b>On-demand</b>: The streaming capacity that Amazon GameLift Streams can allocate in response to stream requests, and then de-allocate when the session has terminated. This offers a cost control measure at the expense of a greater startup time (typically under 5 minutes). </p> </li> </ul> <p>To update a stream group, specify the stream group's Amazon Resource Name (ARN) and provide the new values. If the request is successful, Amazon GameLift Streams returns the complete updated metadata for the stream group.</p> 

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllApplications([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::GameLiftStreams::ListApplicationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllStreamGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::GameLiftStreams::ListStreamGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamSessions(sub { },Identifier => Str, [ExportFilesStatus => Str, MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllStreamSessions(Identifier => Str, [ExportFilesStatus => Str, MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::GameLiftStreams::ListStreamSessionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamSessionsByAccount(sub { },[ExportFilesStatus => Str, MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllStreamSessionsByAccount([ExportFilesStatus => Str, MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::GameLiftStreams::ListStreamSessionsByAccountOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

