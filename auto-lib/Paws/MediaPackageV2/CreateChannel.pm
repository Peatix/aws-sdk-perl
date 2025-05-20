
package Paws::MediaPackageV2::CreateChannel;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-client-token');
  has Description => (is => 'ro', isa => 'Str');
  has InputSwitchConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::InputSwitchConfiguration');
  has InputType => (is => 'ro', isa => 'Str');
  has OutputHeaderConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::OutputHeaderConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/channel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::CreateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::CreateChannel - Arguments for method CreateChannel on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $CreateChannelResponse = $mediapackagev2->CreateChannel(
      ChannelGroupName         => 'MyResourceName',
      ChannelName              => 'MyResourceName',
      ClientToken              => 'MyIdempotencyToken',       # OPTIONAL
      Description              => 'MyResourceDescription',    # OPTIONAL
      InputSwitchConfiguration => {
        MQCSInputSwitching => 1,                              # OPTIONAL
      },    # OPTIONAL
      InputType                 => 'HLS',    # OPTIONAL
      OutputHeaderConfiguration => {
        PublishMQCS => 1,                    # OPTIONAL
      },    # OPTIONAL
      Tags => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreateChannelResponse->Arn;
    my $ChannelGroupName = $CreateChannelResponse->ChannelGroupName;
    my $ChannelName      = $CreateChannelResponse->ChannelName;
    my $CreatedAt        = $CreateChannelResponse->CreatedAt;
    my $Description      = $CreateChannelResponse->Description;
    my $ETag             = $CreateChannelResponse->ETag;
    my $IngestEndpoints  = $CreateChannelResponse->IngestEndpoints;
    my $InputSwitchConfiguration =
      $CreateChannelResponse->InputSwitchConfiguration;
    my $InputType  = $CreateChannelResponse->InputType;
    my $ModifiedAt = $CreateChannelResponse->ModifiedAt;
    my $OutputHeaderConfiguration =
      $CreateChannelResponse->OutputHeaderConfiguration;
    my $Tags = $CreateChannelResponse->Tags;

    # Returns a L<Paws::MediaPackageV2::CreateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/CreateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.



=head2 B<REQUIRED> ChannelName => Str

The name that describes the channel. The name is the primary identifier
for the channel, and must be unique for your account in the AWS Region
and channel group. You can't change the name after you create the
channel.



=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure the
idempotency of the request.



=head2 Description => Str

Enter any descriptive text that helps you to identify the channel.



=head2 InputSwitchConfiguration => L<Paws::MediaPackageV2::InputSwitchConfiguration>

The configuration for input switching based on the media quality
confidence score (MQCS) as provided from AWS Elemental MediaLive. This
setting is valid only when C<InputType> is C<CMAF>.



=head2 InputType => Str

The input type will be an immutable field which will be used to define
whether the channel will allow CMAF ingest or HLS ingest. If
unprovided, it will default to HLS to preserve current behavior.

The allowed values are:

=over

=item *

C<HLS> - The HLS streaming specification (which defines M3U8 manifests
and TS segments).

=item *

C<CMAF> - The DASH-IF CMAF Ingest specification (which defines CMAF
segments with optional DASH manifests).

=back


Valid values are: C<"HLS">, C<"CMAF">

=head2 OutputHeaderConfiguration => L<Paws::MediaPackageV2::OutputHeaderConfiguration>

The settings for what common media server data (CMSD) headers AWS
Elemental MediaPackage includes in responses to the CDN. This setting
is valid only when C<InputType> is C<CMAF>.



=head2 Tags => L<Paws::MediaPackageV2::TagMap>

A comma-separated list of tag key:value pairs that you define. For
example:

C<"Key1": "Value1",>

C<"Key2": "Value2">




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

