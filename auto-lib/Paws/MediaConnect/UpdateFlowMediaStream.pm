
package Paws::MediaConnect::UpdateFlowMediaStream;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::MediaConnect::MediaStreamAttributesRequest', traits => ['NameInRequest'], request_name => 'attributes');
  has ClockRate => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'clockRate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FlowArn', required => 1);
  has MediaStreamName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MediaStreamName', required => 1);
  has MediaStreamType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mediaStreamType');
  has VideoFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'videoFormat');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlowMediaStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateFlowMediaStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowMediaStream - Arguments for method UpdateFlowMediaStream on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlowMediaStream on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateFlowMediaStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlowMediaStream.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateFlowMediaStreamResponse = $mediaconnect->UpdateFlowMediaStream(
      FlowArn         => 'MyUpdateFlowMediaStreamRequestFlowArnString',
      MediaStreamName => 'MyString',
      Attributes      => {
        Fmtp => {
          ChannelOrder => 'MyString',
          Colorimetry  => 'BT601'
          , # values: BT601, BT709, BT2020, BT2100, ST2065-1, ST2065-3, XYZ; OPTIONAL
          ExactFramerate => 'MyString',
          Par            => 'MyString',
          Range    => 'NARROW',    # values: NARROW, FULL, FULLPROTECT; OPTIONAL
          ScanMode => 'progressive'
          , # values: progressive, interlace, progressive-segmented-frame; OPTIONAL
          Tcs => 'SDR'
          , # values: SDR, PQ, HLG, LINEAR, BT2100LINPQ, BT2100LINHLG, ST2065-1, ST428-1, DENSITY; OPTIONAL
        },    # OPTIONAL
        Lang => 'MyString',
      },    # OPTIONAL
      ClockRate       => 1,             # OPTIONAL
      Description     => 'MyString',    # OPTIONAL
      MediaStreamType => 'video',       # OPTIONAL
      VideoFormat     => 'MyString',    # OPTIONAL
    );

    # Results:
    my $FlowArn     = $UpdateFlowMediaStreamResponse->FlowArn;
    my $MediaStream = $UpdateFlowMediaStreamResponse->MediaStream;

    # Returns a L<Paws::MediaConnect::UpdateFlowMediaStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateFlowMediaStream>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::MediaConnect::MediaStreamAttributesRequest>

The attributes that you want to assign to the media stream.



=head2 ClockRate => Int

The sample rate for the stream. This value in measured in kHz.



=head2 Description => Str

A description that can help you quickly identify what your media stream
is used for.



=head2 B<REQUIRED> FlowArn => Str

The Amazon Resource Name (ARN) of the flow that is associated with the
media stream that you updated.



=head2 B<REQUIRED> MediaStreamName => Str

The media stream that you updated.



=head2 MediaStreamType => Str

The type of media stream.

Valid values are: C<"video">, C<"audio">, C<"ancillary-data">

=head2 VideoFormat => Str

The resolution of the video.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlowMediaStream in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

