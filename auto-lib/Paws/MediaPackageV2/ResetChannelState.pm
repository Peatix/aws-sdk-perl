
package Paws::MediaPackageV2::ResetChannelState;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetChannelState');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/channel/{ChannelName}/reset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::ResetChannelStateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ResetChannelState - Arguments for method ResetChannelState on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetChannelState on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method ResetChannelState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetChannelState.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $ResetChannelStateResponse = $mediapackagev2->ResetChannelState(
      ChannelGroupName => 'MyResourceName',
      ChannelName      => 'MyResourceName',

    );

    # Results:
    my $Arn              = $ResetChannelStateResponse->Arn;
    my $ChannelGroupName = $ResetChannelStateResponse->ChannelGroupName;
    my $ChannelName      = $ResetChannelStateResponse->ChannelName;
    my $ResetAt          = $ResetChannelStateResponse->ResetAt;

    # Returns a L<Paws::MediaPackageV2::ResetChannelStateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/ResetChannelState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name of the channel group that contains the channel that you are
resetting.



=head2 B<REQUIRED> ChannelName => Str

The name of the channel that you are resetting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetChannelState in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

