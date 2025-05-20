
package Paws::MediaTailor::CreateChannel;
  use Moose;
  has Audiences => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has FillerSlate => (is => 'ro', isa => 'Paws::MediaTailor::SlateSource');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::RequestOutputItem]', required => 1);
  has PlaybackMode => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has Tier => (is => 'ro', isa => 'Str');
  has TimeShiftConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::TimeShiftConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{ChannelName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::CreateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreateChannel - Arguments for method CreateChannel on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $CreateChannelResponse = $api . mediatailor->CreateChannel(
      ChannelName => 'My__string',
      Outputs     => [
        {
          ManifestName         => 'My__string',
          SourceGroup          => 'My__string',
          DashPlaylistSettings => {
            ManifestWindowSeconds             => 1,    # OPTIONAL
            MinBufferTimeSeconds              => 1,    # OPTIONAL
            MinUpdatePeriodSeconds            => 1,    # OPTIONAL
            SuggestedPresentationDelaySeconds => 1,    # OPTIONAL
          },    # OPTIONAL
          HlsPlaylistSettings => {
            AdMarkupType => [
              'DATERANGE', ...    # values: DATERANGE, SCTE35_ENHANCED
            ],    # OPTIONAL
            ManifestWindowSeconds => 1,    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      PlaybackMode => 'LOOP',
      Audiences    => [ 'MyString', ... ],    # OPTIONAL
      FillerSlate  => {
        SourceLocationName => 'My__string',
        VodSourceName      => 'My__string',
      },                                      # OPTIONAL
      Tags                   => { 'My__string' => 'My__string', },    # OPTIONAL
      Tier                   => 'BASIC',                              # OPTIONAL
      TimeShiftConfiguration => {
        MaxTimeDelaySeconds => 1,                                     # OPTIONAL

      },    # OPTIONAL
    );

    # Results:
    my $Arn                    = $CreateChannelResponse->Arn;
    my $Audiences              = $CreateChannelResponse->Audiences;
    my $ChannelName            = $CreateChannelResponse->ChannelName;
    my $ChannelState           = $CreateChannelResponse->ChannelState;
    my $CreationTime           = $CreateChannelResponse->CreationTime;
    my $FillerSlate            = $CreateChannelResponse->FillerSlate;
    my $LastModifiedTime       = $CreateChannelResponse->LastModifiedTime;
    my $Outputs                = $CreateChannelResponse->Outputs;
    my $PlaybackMode           = $CreateChannelResponse->PlaybackMode;
    my $Tags                   = $CreateChannelResponse->Tags;
    my $Tier                   = $CreateChannelResponse->Tier;
    my $TimeShiftConfiguration = $CreateChannelResponse->TimeShiftConfiguration;

    # Returns a L<Paws::MediaTailor::CreateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/CreateChannel>

=head1 ATTRIBUTES


=head2 Audiences => ArrayRef[Str|Undef]

The list of audiences defined in channel.



=head2 B<REQUIRED> ChannelName => Str

The name of the channel.



=head2 FillerSlate => L<Paws::MediaTailor::SlateSource>

The slate used to fill gaps between programs in the schedule. You must
configure filler slate if your channel uses the C<LINEAR>
C<PlaybackMode>. MediaTailor doesn't support filler slate for channels
using the C<LOOP> C<PlaybackMode>.



=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::MediaTailor::RequestOutputItem>]

The channel's output properties.



=head2 B<REQUIRED> PlaybackMode => Str

The type of playback mode to use for this channel.

C<LINEAR> - The programs in the schedule play once back-to-back in the
schedule.

C<LOOP> - The programs in the schedule play back-to-back in an endless
loop. When the last program in the schedule stops playing, playback
loops back to the first program in the schedule.

Valid values are: C<"LOOP">, C<"LINEAR">

=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the channel. Tags are key-value pairs that you
can associate with Amazon resources to help with organization, access
control, and cost tracking. For more information, see Tagging AWS
Elemental MediaTailor Resources
(https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).



=head2 Tier => Str

The tier of the channel.

Valid values are: C<"BASIC">, C<"STANDARD">

=head2 TimeShiftConfiguration => L<Paws::MediaTailor::TimeShiftConfiguration>

The time-shifted viewing configuration you want to associate to the
channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

