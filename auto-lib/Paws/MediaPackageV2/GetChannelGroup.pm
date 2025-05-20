
package Paws::MediaPackageV2::GetChannelGroup;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChannelGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::GetChannelGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::GetChannelGroup - Arguments for method GetChannelGroup on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChannelGroup on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method GetChannelGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChannelGroup.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $GetChannelGroupResponse = $mediapackagev2->GetChannelGroup(
      ChannelGroupName => 'MyResourceName',

    );

    # Results:
    my $Arn              = $GetChannelGroupResponse->Arn;
    my $ChannelGroupName = $GetChannelGroupResponse->ChannelGroupName;
    my $CreatedAt        = $GetChannelGroupResponse->CreatedAt;
    my $Description      = $GetChannelGroupResponse->Description;
    my $ETag             = $GetChannelGroupResponse->ETag;
    my $EgressDomain     = $GetChannelGroupResponse->EgressDomain;
    my $ModifiedAt       = $GetChannelGroupResponse->ModifiedAt;
    my $Tags             = $GetChannelGroupResponse->Tags;

    # Returns a L<Paws::MediaPackageV2::GetChannelGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/GetChannelGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChannelGroup in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

