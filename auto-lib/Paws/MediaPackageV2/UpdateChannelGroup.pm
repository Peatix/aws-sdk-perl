
package Paws::MediaPackageV2::UpdateChannelGroup;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-update-if-match');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannelGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::UpdateChannelGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::UpdateChannelGroup - Arguments for method UpdateChannelGroup on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannelGroup on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method UpdateChannelGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannelGroup.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $UpdateChannelGroupResponse = $mediapackagev2->UpdateChannelGroup(
      ChannelGroupName => 'MyResourceName',
      Description      => 'MyResourceDescription',    # OPTIONAL
      ETag             => 'MyEntityTag',              # OPTIONAL
    );

    # Results:
    my $Arn              = $UpdateChannelGroupResponse->Arn;
    my $ChannelGroupName = $UpdateChannelGroupResponse->ChannelGroupName;
    my $CreatedAt        = $UpdateChannelGroupResponse->CreatedAt;
    my $Description      = $UpdateChannelGroupResponse->Description;
    my $ETag             = $UpdateChannelGroupResponse->ETag;
    my $EgressDomain     = $UpdateChannelGroupResponse->EgressDomain;
    my $ModifiedAt       = $UpdateChannelGroupResponse->ModifiedAt;
    my $Tags             = $UpdateChannelGroupResponse->Tags;

    # Returns a L<Paws::MediaPackageV2::UpdateChannelGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/UpdateChannelGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.



=head2 Description => Str

Any descriptive information that you want to add to the channel group
for future identification purposes.



=head2 ETag => Str

The expected current Entity Tag (ETag) for the resource. If the
specified ETag does not match the resource's current entity tag, the
update request will be rejected.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChannelGroup in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

