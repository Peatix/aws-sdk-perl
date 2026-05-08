package Paws::ChimeSDKIdentity;
  use Moose;
  sub service { 'identity-chime' }
  sub signing_name { 'chime' }
  sub version { '2021-04-20' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateAppInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::CreateAppInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppInstanceAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::CreateAppInstanceAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppInstanceBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::CreateAppInstanceBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::CreateAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DeleteAppInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppInstanceAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DeleteAppInstanceAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppInstanceBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DeleteAppInstanceBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DeleteAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterAppInstanceUserEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DeregisterAppInstanceUserEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DescribeAppInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppInstanceAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DescribeAppInstanceAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppInstanceBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DescribeAppInstanceBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DescribeAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppInstanceUserEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::DescribeAppInstanceUserEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppInstanceRetentionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::GetAppInstanceRetentionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppInstanceAdmins {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::ListAppInstanceAdmins', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppInstanceBots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::ListAppInstanceBots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::ListAppInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppInstanceUserEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::ListAppInstanceUserEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppInstanceUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::ListAppInstanceUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAppInstanceRetentionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::PutAppInstanceRetentionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAppInstanceUserExpirationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::PutAppInstanceUserExpirationSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterAppInstanceUserEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::RegisterAppInstanceUserEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::UpdateAppInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppInstanceBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::UpdateAppInstanceBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::UpdateAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppInstanceUserEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKIdentity::UpdateAppInstanceUserEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateAppInstance CreateAppInstanceAdmin CreateAppInstanceBot CreateAppInstanceUser DeleteAppInstance DeleteAppInstanceAdmin DeleteAppInstanceBot DeleteAppInstanceUser DeregisterAppInstanceUserEndpoint DescribeAppInstance DescribeAppInstanceAdmin DescribeAppInstanceBot DescribeAppInstanceUser DescribeAppInstanceUserEndpoint GetAppInstanceRetentionSettings ListAppInstanceAdmins ListAppInstanceBots ListAppInstances ListAppInstanceUserEndpoints ListAppInstanceUsers ListTagsForResource PutAppInstanceRetentionSettings PutAppInstanceUserExpirationSettings RegisterAppInstanceUserEndpoint TagResource UntagResource UpdateAppInstance UpdateAppInstanceBot UpdateAppInstanceUser UpdateAppInstanceUserEndpoint / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity - Perl Interface to AWS Amazon Chime SDK Identity

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ChimeSDKIdentity');
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

The Amazon Chime SDK Identity APIs in this section allow software
developers to create and manage unique instances of their messaging
applications. These APIs provide the overarching framework for creating
and sending messages. For more information about the identity APIs,
refer to Amazon Chime SDK identity
(https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateAppInstance

=over

=item ClientRequestToken => Str

=item Name => Str

=item [Metadata => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKIdentity::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::CreateAppInstance>

Returns: a L<Paws::ChimeSDKIdentity::CreateAppInstanceResponse> instance

Creates an Amazon Chime SDK messaging C<AppInstance> under an AWS
account. Only SDK messaging customers use this API.
C<CreateAppInstance> supports idempotency behavior as described in the
AWS API Standard.

identity


=head2 CreateAppInstanceAdmin

=over

=item AppInstanceAdminArn => Str

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::CreateAppInstanceAdmin>

Returns: a L<Paws::ChimeSDKIdentity::CreateAppInstanceAdminResponse> instance

Promotes an C<AppInstanceUser> or C<AppInstanceBot> to an
C<AppInstanceAdmin>. The promoted entity can perform the following
actions.

=over

=item *

C<ChannelModerator> actions across all channels in the C<AppInstance>.

=item *

C<DeleteChannelMessage> actions.

=back

Only an C<AppInstanceUser> and C<AppInstanceBot> can be promoted to an
C<AppInstanceAdmin> role.


=head2 CreateAppInstanceBot

=over

=item AppInstanceArn => Str

=item ClientRequestToken => Str

=item Configuration => L<Paws::ChimeSDKIdentity::Configuration>

=item [Metadata => Str]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKIdentity::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::CreateAppInstanceBot>

Returns: a L<Paws::ChimeSDKIdentity::CreateAppInstanceBotResponse> instance

Creates a bot under an Amazon Chime C<AppInstance>. The request
consists of a unique C<Configuration> and C<Name> for that bot.


=head2 CreateAppInstanceUser

=over

=item AppInstanceArn => Str

=item AppInstanceUserId => Str

=item ClientRequestToken => Str

=item Name => Str

=item [ExpirationSettings => L<Paws::ChimeSDKIdentity::ExpirationSettings>]

=item [Metadata => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKIdentity::Tag>]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::CreateAppInstanceUser>

Returns: a L<Paws::ChimeSDKIdentity::CreateAppInstanceUserResponse> instance

Creates a user under an Amazon Chime C<AppInstance>. The request
consists of a unique C<appInstanceUserId> and C<Name> for that user.


=head2 DeleteAppInstance

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DeleteAppInstance>

Returns: nothing

Deletes an C<AppInstance> and all associated data asynchronously.


=head2 DeleteAppInstanceAdmin

=over

=item AppInstanceAdminArn => Str

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DeleteAppInstanceAdmin>

Returns: nothing

Demotes an C<AppInstanceAdmin> to an C<AppInstanceUser> or
C<AppInstanceBot>. This action does not delete the user.


=head2 DeleteAppInstanceBot

=over

=item AppInstanceBotArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DeleteAppInstanceBot>

Returns: nothing

Deletes an C<AppInstanceBot>.


=head2 DeleteAppInstanceUser

=over

=item AppInstanceUserArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DeleteAppInstanceUser>

Returns: nothing

Deletes an C<AppInstanceUser>.


=head2 DeregisterAppInstanceUserEndpoint

=over

=item AppInstanceUserArn => Str

=item EndpointId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DeregisterAppInstanceUserEndpoint>

Returns: nothing

Deregisters an C<AppInstanceUserEndpoint>.


=head2 DescribeAppInstance

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DescribeAppInstance>

Returns: a L<Paws::ChimeSDKIdentity::DescribeAppInstanceResponse> instance

Returns the full details of an C<AppInstance>.


=head2 DescribeAppInstanceAdmin

=over

=item AppInstanceAdminArn => Str

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DescribeAppInstanceAdmin>

Returns: a L<Paws::ChimeSDKIdentity::DescribeAppInstanceAdminResponse> instance

Returns the full details of an C<AppInstanceAdmin>.


=head2 DescribeAppInstanceBot

=over

=item AppInstanceBotArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DescribeAppInstanceBot>

Returns: a L<Paws::ChimeSDKIdentity::DescribeAppInstanceBotResponse> instance

The C<AppInstanceBot's> information.


=head2 DescribeAppInstanceUser

=over

=item AppInstanceUserArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DescribeAppInstanceUser>

Returns: a L<Paws::ChimeSDKIdentity::DescribeAppInstanceUserResponse> instance

Returns the full details of an C<AppInstanceUser>.


=head2 DescribeAppInstanceUserEndpoint

=over

=item AppInstanceUserArn => Str

=item EndpointId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::DescribeAppInstanceUserEndpoint>

Returns: a L<Paws::ChimeSDKIdentity::DescribeAppInstanceUserEndpointResponse> instance

Returns the full details of an C<AppInstanceUserEndpoint>.


=head2 GetAppInstanceRetentionSettings

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::GetAppInstanceRetentionSettings>

Returns: a L<Paws::ChimeSDKIdentity::GetAppInstanceRetentionSettingsResponse> instance

Gets the retention settings for an C<AppInstance>.


=head2 ListAppInstanceAdmins

=over

=item AppInstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::ListAppInstanceAdmins>

Returns: a L<Paws::ChimeSDKIdentity::ListAppInstanceAdminsResponse> instance

Returns a list of the administrators in the C<AppInstance>.


=head2 ListAppInstanceBots

=over

=item AppInstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::ListAppInstanceBots>

Returns: a L<Paws::ChimeSDKIdentity::ListAppInstanceBotsResponse> instance

Lists all C<AppInstanceBots> created under a single C<AppInstance>.


=head2 ListAppInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::ListAppInstances>

Returns: a L<Paws::ChimeSDKIdentity::ListAppInstancesResponse> instance

Lists all Amazon Chime C<AppInstance>s created under a single AWS
account.


=head2 ListAppInstanceUserEndpoints

=over

=item AppInstanceUserArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::ListAppInstanceUserEndpoints>

Returns: a L<Paws::ChimeSDKIdentity::ListAppInstanceUserEndpointsResponse> instance

Lists all the C<AppInstanceUserEndpoints> created under a single
C<AppInstanceUser>.


=head2 ListAppInstanceUsers

=over

=item AppInstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::ListAppInstanceUsers>

Returns: a L<Paws::ChimeSDKIdentity::ListAppInstanceUsersResponse> instance

List all C<AppInstanceUsers> created under a single C<AppInstance>.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::ListTagsForResource>

Returns: a L<Paws::ChimeSDKIdentity::ListTagsForResourceResponse> instance

Lists the tags applied to an Amazon Chime SDK identity resource.


=head2 PutAppInstanceRetentionSettings

=over

=item AppInstanceArn => Str

=item AppInstanceRetentionSettings => L<Paws::ChimeSDKIdentity::AppInstanceRetentionSettings>


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::PutAppInstanceRetentionSettings>

Returns: a L<Paws::ChimeSDKIdentity::PutAppInstanceRetentionSettingsResponse> instance

Sets the amount of time in days that a given C<AppInstance> retains
data.


=head2 PutAppInstanceUserExpirationSettings

=over

=item AppInstanceUserArn => Str

=item [ExpirationSettings => L<Paws::ChimeSDKIdentity::ExpirationSettings>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::PutAppInstanceUserExpirationSettings>

Returns: a L<Paws::ChimeSDKIdentity::PutAppInstanceUserExpirationSettingsResponse> instance

Sets the number of days before the C<AppInstanceUser> is automatically
deleted.

A background process deletes expired C<AppInstanceUsers> within 6 hours
of expiration. Actual deletion times may vary.

Expired C<AppInstanceUsers> that have not yet been deleted appear as
active, and you can update their expiration settings. The system honors
the new settings.


=head2 RegisterAppInstanceUserEndpoint

=over

=item AppInstanceUserArn => Str

=item ClientRequestToken => Str

=item EndpointAttributes => L<Paws::ChimeSDKIdentity::EndpointAttributes>

=item ResourceArn => Str

=item Type => Str

=item [AllowMessages => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::RegisterAppInstanceUserEndpoint>

Returns: a L<Paws::ChimeSDKIdentity::RegisterAppInstanceUserEndpointResponse> instance

Registers an endpoint under an Amazon Chime C<AppInstanceUser>. The
endpoint receives messages for a user. For push notifications, the
endpoint is a mobile device used to receive mobile push notifications
for a user.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::ChimeSDKIdentity::Tag>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::TagResource>

Returns: nothing

Applies the specified tags to the specified Amazon Chime SDK identity
resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::UntagResource>

Returns: nothing

Removes the specified tags from the specified Amazon Chime SDK identity
resource.


=head2 UpdateAppInstance

=over

=item AppInstanceArn => Str

=item Metadata => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::UpdateAppInstance>

Returns: a L<Paws::ChimeSDKIdentity::UpdateAppInstanceResponse> instance

Updates C<AppInstance> metadata.


=head2 UpdateAppInstanceBot

=over

=item AppInstanceBotArn => Str

=item Metadata => Str

=item Name => Str

=item [Configuration => L<Paws::ChimeSDKIdentity::Configuration>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::UpdateAppInstanceBot>

Returns: a L<Paws::ChimeSDKIdentity::UpdateAppInstanceBotResponse> instance

Updates the name and metadata of an C<AppInstanceBot>.


=head2 UpdateAppInstanceUser

=over

=item AppInstanceUserArn => Str

=item Metadata => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::UpdateAppInstanceUser>

Returns: a L<Paws::ChimeSDKIdentity::UpdateAppInstanceUserResponse> instance

Updates the details of an C<AppInstanceUser>. You can update names and
metadata.


=head2 UpdateAppInstanceUserEndpoint

=over

=item AppInstanceUserArn => Str

=item EndpointId => Str

=item [AllowMessages => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKIdentity::UpdateAppInstanceUserEndpoint>

Returns: a L<Paws::ChimeSDKIdentity::UpdateAppInstanceUserEndpointResponse> instance

Updates the details of an C<AppInstanceUserEndpoint>. You can update
the name and C<AllowMessage> values.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

