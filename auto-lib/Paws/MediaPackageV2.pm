package Paws::MediaPackageV2;
  use Moose;
  sub service { 'mediapackagev2' }
  sub signing_name { 'mediapackagev2' }
  sub version { '2022-12-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelHarvestJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::CancelHarvestJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::CreateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannelGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::CreateChannelGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHarvestJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::CreateHarvestJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOriginEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::CreateOriginEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::DeleteChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::DeleteChannelGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::DeleteChannelPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOriginEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::DeleteOriginEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOriginEndpointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::DeleteOriginEndpointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::GetChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannelGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::GetChannelGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannelPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::GetChannelPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHarvestJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::GetHarvestJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOriginEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::GetOriginEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOriginEndpointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::GetOriginEndpointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::ListChannelGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHarvestJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::ListHarvestJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOriginEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::ListOriginEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutChannelPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::PutChannelPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutOriginEndpointPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::PutOriginEndpointPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetChannelState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::ResetChannelState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetOriginEndpointState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::ResetOriginEndpointState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::UpdateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannelGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::UpdateChannelGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOriginEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackageV2::UpdateOriginEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllChannelGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChannelGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListChannelGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListChannelGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListChannels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListChannels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllHarvestJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHarvestJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHarvestJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListHarvestJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllOriginEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOriginEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOriginEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListOriginEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/CancelHarvestJob CreateChannel CreateChannelGroup CreateHarvestJob CreateOriginEndpoint DeleteChannel DeleteChannelGroup DeleteChannelPolicy DeleteOriginEndpoint DeleteOriginEndpointPolicy GetChannel GetChannelGroup GetChannelPolicy GetHarvestJob GetOriginEndpoint GetOriginEndpointPolicy ListChannelGroups ListChannels ListHarvestJobs ListOriginEndpoints ListTagsForResource PutChannelPolicy PutOriginEndpointPolicy ResetChannelState ResetOriginEndpointState TagResource UntagResource UpdateChannel UpdateChannelGroup UpdateOriginEndpoint / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2 - Perl Interface to AWS AWS Elemental MediaPackage v2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaPackageV2');
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

This guide is intended for creating AWS Elemental MediaPackage
resources in MediaPackage Version 2 (v2) starting from May 2023. To get
started with MediaPackage v2, create your MediaPackage resources. There
isn't an automated process to migrate your resources from MediaPackage
v1 to MediaPackage v2.

The names of the entities that you use to access this API, like URLs
and ARNs, all have the versioning information added, like "v2", to
distinguish from the prior version. If you used MediaPackage prior to
this release, you can't use the MediaPackage v2 CLI or the MediaPackage
v2 API to access any MediaPackage v1 resources.

If you created resources in MediaPackage v1, use video on demand (VOD)
workflows, and aren't looking to migrate to MediaPackage v2 yet, see
the MediaPackage v1 Live API Reference
(https://docs.aws.amazon.com/mediapackage/latest/apireference/what-is.html).

This is the AWS Elemental MediaPackage v2 Live REST API Reference. It
describes all the MediaPackage API operations for live content in
detail, and provides sample requests, responses, and errors for the
supported web services protocols.

We assume that you have the IAM permissions that you need to use
MediaPackage via the REST API. We also assume that you are familiar
with the features and operations of MediaPackage, as described in the
AWS Elemental MediaPackage User Guide.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25>


=head1 METHODS

=head2 CancelHarvestJob

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item HarvestJobName => Str

=item OriginEndpointName => Str

=item [ETag => Str]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::CancelHarvestJob>

Returns: a L<Paws::MediaPackageV2::CancelHarvestJobResponse> instance

Cancels an in-progress harvest job.


=head2 CreateChannel

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [InputSwitchConfiguration => L<Paws::MediaPackageV2::InputSwitchConfiguration>]

=item [InputType => Str]

=item [OutputHeaderConfiguration => L<Paws::MediaPackageV2::OutputHeaderConfiguration>]

=item [Tags => L<Paws::MediaPackageV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::CreateChannel>

Returns: a L<Paws::MediaPackageV2::CreateChannelResponse> instance

Create a channel to start receiving content streams. The channel
represents the input to MediaPackage for incoming live content from an
encoder such as AWS Elemental MediaLive. The channel receives content,
and after packaging it, outputs it through an origin endpoint to
downstream devices (such as video players or CDNs) that request the
content. You can create only one channel with each request. We
recommend that you spread out channels between channel groups, such as
putting redundant channels in the same AWS Region in different channel
groups.


=head2 CreateChannelGroup

=over

=item ChannelGroupName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::MediaPackageV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::CreateChannelGroup>

Returns: a L<Paws::MediaPackageV2::CreateChannelGroupResponse> instance

Create a channel group to group your channels and origin endpoints. A
channel group is the top-level resource that consists of channels and
origin endpoints that are associated with it and that provides
predictable URLs for stream delivery. All channels and origin endpoints
within the channel group are guaranteed to share the DNS. You can
create only one channel group with each request.


=head2 CreateHarvestJob

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item Destination => L<Paws::MediaPackageV2::Destination>

=item HarvestedManifests => L<Paws::MediaPackageV2::HarvestedManifests>

=item OriginEndpointName => Str

=item ScheduleConfiguration => L<Paws::MediaPackageV2::HarvesterScheduleConfiguration>

=item [ClientToken => Str]

=item [Description => Str]

=item [HarvestJobName => Str]

=item [Tags => L<Paws::MediaPackageV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::CreateHarvestJob>

Returns: a L<Paws::MediaPackageV2::CreateHarvestJobResponse> instance

Creates a new harvest job to export content from a MediaPackage v2
channel to an S3 bucket.


=head2 CreateOriginEndpoint

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item ContainerType => Str

=item OriginEndpointName => Str

=item [ClientToken => Str]

=item [DashManifests => ArrayRef[L<Paws::MediaPackageV2::CreateDashManifestConfiguration>]]

=item [Description => Str]

=item [ForceEndpointErrorConfiguration => L<Paws::MediaPackageV2::ForceEndpointErrorConfiguration>]

=item [HlsManifests => ArrayRef[L<Paws::MediaPackageV2::CreateHlsManifestConfiguration>]]

=item [LowLatencyHlsManifests => ArrayRef[L<Paws::MediaPackageV2::CreateLowLatencyHlsManifestConfiguration>]]

=item [Segment => L<Paws::MediaPackageV2::Segment>]

=item [StartoverWindowSeconds => Int]

=item [Tags => L<Paws::MediaPackageV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::CreateOriginEndpoint>

Returns: a L<Paws::MediaPackageV2::CreateOriginEndpointResponse> instance

The endpoint is attached to a channel, and represents the output of the
live content. You can associate multiple endpoints to a single channel.
Each endpoint gives players and downstream CDNs (such as Amazon
CloudFront) access to the content for playback. Content can't be served
from a channel until it has an endpoint. You can create only one
endpoint with each request.


=head2 DeleteChannel

=over

=item ChannelGroupName => Str

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::DeleteChannel>

Returns: a L<Paws::MediaPackageV2::DeleteChannelResponse> instance

Delete a channel to stop AWS Elemental MediaPackage from receiving
further content. You must delete the channel's origin endpoints before
you can delete the channel.


=head2 DeleteChannelGroup

=over

=item ChannelGroupName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::DeleteChannelGroup>

Returns: a L<Paws::MediaPackageV2::DeleteChannelGroupResponse> instance

Delete a channel group. You must delete the channel group's channels
and origin endpoints before you can delete the channel group. If you
delete a channel group, you'll lose access to the egress domain and
will have to create a new channel group to replace it.


=head2 DeleteChannelPolicy

=over

=item ChannelGroupName => Str

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::DeleteChannelPolicy>

Returns: a L<Paws::MediaPackageV2::DeleteChannelPolicyResponse> instance

Delete a channel policy.


=head2 DeleteOriginEndpoint

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item OriginEndpointName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::DeleteOriginEndpoint>

Returns: a L<Paws::MediaPackageV2::DeleteOriginEndpointResponse> instance

Origin endpoints can serve content until they're deleted. Delete the
endpoint if it should no longer respond to playback requests. You must
delete all endpoints from a channel before you can delete the channel.


=head2 DeleteOriginEndpointPolicy

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item OriginEndpointName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::DeleteOriginEndpointPolicy>

Returns: a L<Paws::MediaPackageV2::DeleteOriginEndpointPolicyResponse> instance

Delete an origin endpoint policy.


=head2 GetChannel

=over

=item ChannelGroupName => Str

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::GetChannel>

Returns: a L<Paws::MediaPackageV2::GetChannelResponse> instance

Retrieves the specified channel that's configured in AWS Elemental
MediaPackage, including the origin endpoints that are associated with
it.


=head2 GetChannelGroup

=over

=item ChannelGroupName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::GetChannelGroup>

Returns: a L<Paws::MediaPackageV2::GetChannelGroupResponse> instance

Retrieves the specified channel group that's configured in AWS
Elemental MediaPackage, including the channels and origin endpoints
that are associated with it.


=head2 GetChannelPolicy

=over

=item ChannelGroupName => Str

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::GetChannelPolicy>

Returns: a L<Paws::MediaPackageV2::GetChannelPolicyResponse> instance

Retrieves the specified channel policy that's configured in AWS
Elemental MediaPackage. With policies, you can specify who has access
to AWS resources and what actions they can perform on those resources.


=head2 GetHarvestJob

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item HarvestJobName => Str

=item OriginEndpointName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::GetHarvestJob>

Returns: a L<Paws::MediaPackageV2::GetHarvestJobResponse> instance

Retrieves the details of a specific harvest job.


=head2 GetOriginEndpoint

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item OriginEndpointName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::GetOriginEndpoint>

Returns: a L<Paws::MediaPackageV2::GetOriginEndpointResponse> instance

Retrieves the specified origin endpoint that's configured in AWS
Elemental MediaPackage to obtain its playback URL and to view the
packaging settings that it's currently using.


=head2 GetOriginEndpointPolicy

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item OriginEndpointName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::GetOriginEndpointPolicy>

Returns: a L<Paws::MediaPackageV2::GetOriginEndpointPolicyResponse> instance

Retrieves the specified origin endpoint policy that's configured in AWS
Elemental MediaPackage.


=head2 ListChannelGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::ListChannelGroups>

Returns: a L<Paws::MediaPackageV2::ListChannelGroupsResponse> instance

Retrieves all channel groups that are configured in Elemental
MediaPackage.


=head2 ListChannels

=over

=item ChannelGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::ListChannels>

Returns: a L<Paws::MediaPackageV2::ListChannelsResponse> instance

Retrieves all channels in a specific channel group that are configured
in AWS Elemental MediaPackage, including the origin endpoints that are
associated with it.


=head2 ListHarvestJobs

=over

=item ChannelGroupName => Str

=item [ChannelName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OriginEndpointName => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::ListHarvestJobs>

Returns: a L<Paws::MediaPackageV2::ListHarvestJobsResponse> instance

Retrieves a list of harvest jobs that match the specified criteria.


=head2 ListOriginEndpoints

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::ListOriginEndpoints>

Returns: a L<Paws::MediaPackageV2::ListOriginEndpointsResponse> instance

Retrieves all origin endpoints in a specific channel that are
configured in AWS Elemental MediaPackage.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::ListTagsForResource>

Returns: a L<Paws::MediaPackageV2::ListTagsForResourceResponse> instance

Lists the tags assigned to a resource.


=head2 PutChannelPolicy

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::PutChannelPolicy>

Returns: a L<Paws::MediaPackageV2::PutChannelPolicyResponse> instance

Attaches an IAM policy to the specified channel. With policies, you can
specify who has access to AWS resources and what actions they can
perform on those resources. You can attach only one policy with each
request.


=head2 PutOriginEndpointPolicy

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item OriginEndpointName => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::PutOriginEndpointPolicy>

Returns: a L<Paws::MediaPackageV2::PutOriginEndpointPolicyResponse> instance

Attaches an IAM policy to the specified origin endpoint. You can attach
only one policy with each request.


=head2 ResetChannelState

=over

=item ChannelGroupName => Str

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::ResetChannelState>

Returns: a L<Paws::MediaPackageV2::ResetChannelStateResponse> instance

Resetting the channel can help to clear errors from misconfigurations
in the encoder. A reset refreshes the ingest stream and removes
previous content.

Be sure to stop the encoder before you reset the channel, and wait at
least 30 seconds before you restart the encoder.


=head2 ResetOriginEndpointState

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item OriginEndpointName => Str


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::ResetOriginEndpointState>

Returns: a L<Paws::MediaPackageV2::ResetOriginEndpointStateResponse> instance

Resetting the origin endpoint can help to resolve unexpected behavior
and other content packaging issues. It also helps to preserve special
events when you don't want the previous content to be available for
viewing. A reset clears out all previous content from the origin
endpoint.

MediaPackage might return old content from this endpoint in the first
30 seconds after the endpoint reset. For best results, when possible,
wait 30 seconds from endpoint reset to send playback requests to this
endpoint.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::MediaPackageV2::TagMap>


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::TagResource>

Returns: nothing

Assigns one of more tags (key-value pairs) to the specified
MediaPackage resource.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only resources with certain tag values. You can use
the TagResource operation with a resource that already has tags. If you
specify a new tag key for the resource, this tag is appended to the
list of tags associated with the resource. If you specify a tag key
that is already associated with the resource, the new tag value that
you specify replaces the previous value for that tag.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::UntagResource>

Returns: nothing

Removes one or more tags from the specified resource.


=head2 UpdateChannel

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item [Description => Str]

=item [ETag => Str]

=item [InputSwitchConfiguration => L<Paws::MediaPackageV2::InputSwitchConfiguration>]

=item [OutputHeaderConfiguration => L<Paws::MediaPackageV2::OutputHeaderConfiguration>]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::UpdateChannel>

Returns: a L<Paws::MediaPackageV2::UpdateChannelResponse> instance

Update the specified channel. You can edit if MediaPackage sends ingest
or egress access logs to the CloudWatch log group, if content will be
encrypted, the description on a channel, and your channel's policy
settings. You can't edit the name of the channel or CloudFront
distribution details.

Any edits you make that impact the video output may not be reflected
for a few minutes.


=head2 UpdateChannelGroup

=over

=item ChannelGroupName => Str

=item [Description => Str]

=item [ETag => Str]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::UpdateChannelGroup>

Returns: a L<Paws::MediaPackageV2::UpdateChannelGroupResponse> instance

Update the specified channel group. You can edit the description on a
channel group for easier identification later from the AWS Elemental
MediaPackage console. You can't edit the name of the channel group.

Any edits you make that impact the video output may not be reflected
for a few minutes.


=head2 UpdateOriginEndpoint

=over

=item ChannelGroupName => Str

=item ChannelName => Str

=item ContainerType => Str

=item OriginEndpointName => Str

=item [DashManifests => ArrayRef[L<Paws::MediaPackageV2::CreateDashManifestConfiguration>]]

=item [Description => Str]

=item [ETag => Str]

=item [ForceEndpointErrorConfiguration => L<Paws::MediaPackageV2::ForceEndpointErrorConfiguration>]

=item [HlsManifests => ArrayRef[L<Paws::MediaPackageV2::CreateHlsManifestConfiguration>]]

=item [LowLatencyHlsManifests => ArrayRef[L<Paws::MediaPackageV2::CreateLowLatencyHlsManifestConfiguration>]]

=item [Segment => L<Paws::MediaPackageV2::Segment>]

=item [StartoverWindowSeconds => Int]


=back

Each argument is described in detail in: L<Paws::MediaPackageV2::UpdateOriginEndpoint>

Returns: a L<Paws::MediaPackageV2::UpdateOriginEndpointResponse> instance

Update the specified origin endpoint. Edit the packaging preferences on
an endpoint to optimize the viewing experience. You can't edit the name
of the endpoint.

Any edits you make that impact the video output may not be reflected
for a few minutes.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllChannelGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllChannelGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaPackageV2::ListChannelGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllChannels(sub { },ChannelGroupName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllChannels(ChannelGroupName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaPackageV2::ListChannelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHarvestJobs(sub { },ChannelGroupName => Str, [ChannelName => Str, MaxResults => Int, NextToken => Str, OriginEndpointName => Str, Status => Str])

=head2 ListAllHarvestJobs(ChannelGroupName => Str, [ChannelName => Str, MaxResults => Int, NextToken => Str, OriginEndpointName => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaPackageV2::ListHarvestJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOriginEndpoints(sub { },ChannelGroupName => Str, ChannelName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllOriginEndpoints(ChannelGroupName => Str, ChannelName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaPackageV2::ListOriginEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

