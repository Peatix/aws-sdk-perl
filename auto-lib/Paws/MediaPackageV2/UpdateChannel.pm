
package Paws::MediaPackageV2::UpdateChannel;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-update-if-match');
  has InputSwitchConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::InputSwitchConfiguration');
  has OutputHeaderConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::OutputHeaderConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/channel/{ChannelName}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::UpdateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::UpdateChannel - Arguments for method UpdateChannel on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannel on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method UpdateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannel.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $UpdateChannelResponse = $mediapackagev2->UpdateChannel(
      ChannelGroupName         => 'MyResourceName',
      ChannelName              => 'MyResourceName',
      Description              => 'MyResourceDescription',    # OPTIONAL
      ETag                     => 'MyEntityTag',              # OPTIONAL
      InputSwitchConfiguration => {
        MQCSInputSwitching => 1,                              # OPTIONAL
      },    # OPTIONAL
      OutputHeaderConfiguration => {
        PublishMQCS => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $UpdateChannelResponse->Arn;
    my $ChannelGroupName = $UpdateChannelResponse->ChannelGroupName;
    my $ChannelName      = $UpdateChannelResponse->ChannelName;
    my $CreatedAt        = $UpdateChannelResponse->CreatedAt;
    my $Description      = $UpdateChannelResponse->Description;
    my $ETag             = $UpdateChannelResponse->ETag;
    my $IngestEndpoints  = $UpdateChannelResponse->IngestEndpoints;
    my $InputSwitchConfiguration =
      $UpdateChannelResponse->InputSwitchConfiguration;
    my $InputType  = $UpdateChannelResponse->InputType;
    my $ModifiedAt = $UpdateChannelResponse->ModifiedAt;
    my $OutputHeaderConfiguration =
      $UpdateChannelResponse->OutputHeaderConfiguration;
    my $Tags = $UpdateChannelResponse->Tags;

    # Returns a L<Paws::MediaPackageV2::UpdateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/UpdateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.



=head2 B<REQUIRED> ChannelName => Str

The name that describes the channel. The name is the primary identifier
for the channel, and must be unique for your account in the AWS Region
and channel group.



=head2 Description => Str

Any descriptive information that you want to add to the channel for
future identification purposes.



=head2 ETag => Str

The expected current Entity Tag (ETag) for the resource. If the
specified ETag does not match the resource's current entity tag, the
update request will be rejected.



=head2 InputSwitchConfiguration => L<Paws::MediaPackageV2::InputSwitchConfiguration>

The configuration for input switching based on the media quality
confidence score (MQCS) as provided from AWS Elemental MediaLive. This
setting is valid only when C<InputType> is C<CMAF>.



=head2 OutputHeaderConfiguration => L<Paws::MediaPackageV2::OutputHeaderConfiguration>

The settings for what common media server data (CMSD) headers AWS
Elemental MediaPackage includes in responses to the CDN. This setting
is valid only when C<InputType> is C<CMAF>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChannel in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

