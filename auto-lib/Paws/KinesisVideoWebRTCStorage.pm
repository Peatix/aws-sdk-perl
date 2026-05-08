package Paws::KinesisVideoWebRTCStorage;
  use Moose;
  sub service { 'kinesisvideo' }
  sub signing_name { 'kinesisvideo' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub JoinStorageSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoWebRTCStorage::JoinStorageSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub JoinStorageSessionAsViewer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoWebRTCStorage::JoinStorageSessionAsViewer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/JoinStorageSession JoinStorageSessionAsViewer / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoWebRTCStorage - Perl Interface to AWS Amazon Kinesis Video WebRTC Storage

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KinesisVideoWebRTCStorage');
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

webrtc

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2018-05-10>


=head1 METHODS

=head2 JoinStorageSession

=over

=item ChannelArn => Str


=back

Each argument is described in detail in: L<Paws::KinesisVideoWebRTCStorage::JoinStorageSession>

Returns: nothing

Before using this API, you must call the C<GetSignalingChannelEndpoint>
API to request the WEBRTC endpoint. You then specify the endpoint and
region in your C<JoinStorageSession> API request.

Join the ongoing one way-video and/or multi-way audio WebRTC session as
a video producing device for an input channel. If thereE<rsquo>s no
existing session for the channel, a new streaming session needs to be
created, and the Amazon Resource Name (ARN) of the signaling channel
must be provided.

Currently for the C<SINGLE_MASTER> type, a video producing device is
able to ingest both audio and video media into a stream. Only video
producing devices can join the session and record media.

Both audio and video tracks are currently required for WebRTC
ingestion.

Current requirements:

=over

=item *

Video track: H.264

=item *

Audio track: Opus

=back

The resulting ingested video in the Kinesis video stream will have the
following parameters: H.264 video and AAC audio.

Once a master participant has negotiated a connection through WebRTC,
the ingested media session will be stored in the Kinesis video stream.
Multiple viewers are then able to play back real-time media through our
Playback APIs.

You can also use existing Kinesis Video Streams features like C<HLS> or
C<DASH> playback, image generation via GetImages
(https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/gs-getImages.html),
and more with ingested WebRTC media.

S3 image delivery and notifications are not currently supported.

Assume that only one video producing device client can be associated
with a session for the channel. If more than one client joins the
session of a specific channel as a video producing device, the most
recent client request takes precedence.

B<Additional information>

=over

=item *

B<Idempotent> - This API is not idempotent.

=item *

B<Retry behavior> - This is counted as a new API call.

=item *

B<Concurrent calls> - Concurrent calls are allowed. An offer is sent
once per each call.

=back



=head2 JoinStorageSessionAsViewer

=over

=item ChannelArn => Str

=item ClientId => Str


=back

Each argument is described in detail in: L<Paws::KinesisVideoWebRTCStorage::JoinStorageSessionAsViewer>

Returns: nothing

Join the ongoing one way-video and/or multi-way audio WebRTC session as
a viewer for an input channel. If thereE<rsquo>s no existing session
for the channel, create a new streaming session and provide the Amazon
Resource Name (ARN) of the signaling channel (C<channelArn>) and client
id (C<clientId>).

Currently for C<SINGLE_MASTER> type, a video producing device is able
to ingest both audio and video media into a stream, while viewers can
only ingest audio. Both a video producing device and viewers can join a
session first and wait for other participants. While participants are
having peer to peer conversations through WebRTC, the ingested media
session will be stored into the Kinesis Video Stream. Multiple viewers
are able to playback real-time media.

Customers can also use existing Kinesis Video Streams features like
C<HLS> or C<DASH> playback, Image generation, and more with ingested
WebRTC media. If thereE<rsquo>s an existing session with the same
C<clientId> that's found in the join session request, the new request
takes precedence.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

