
package Paws::MediaPackageV2::ResetOriginEndpointState;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has OriginEndpointName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OriginEndpointName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetOriginEndpointState');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/reset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::ResetOriginEndpointStateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ResetOriginEndpointState - Arguments for method ResetOriginEndpointState on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetOriginEndpointState on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method ResetOriginEndpointState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetOriginEndpointState.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $ResetOriginEndpointStateResponse =
      $mediapackagev2->ResetOriginEndpointState(
      ChannelGroupName   => 'MyResourceName',
      ChannelName        => 'MyResourceName',
      OriginEndpointName => 'MyResourceName',

      );

    # Results:
    my $Arn              = $ResetOriginEndpointStateResponse->Arn;
    my $ChannelGroupName = $ResetOriginEndpointStateResponse->ChannelGroupName;
    my $ChannelName      = $ResetOriginEndpointStateResponse->ChannelName;
    my $OriginEndpointName =
      $ResetOriginEndpointStateResponse->OriginEndpointName;
    my $ResetAt = $ResetOriginEndpointStateResponse->ResetAt;

   # Returns a L<Paws::MediaPackageV2::ResetOriginEndpointStateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/ResetOriginEndpointState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name of the channel group that contains the channel with the origin
endpoint that you are resetting.



=head2 B<REQUIRED> ChannelName => Str

The name of the channel with the origin endpoint that you are
resetting.



=head2 B<REQUIRED> OriginEndpointName => Str

The name of the origin endpoint that you are resetting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetOriginEndpointState in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

