
package Paws::MediaPackageV2::CreateChannelGroup;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-client-token');
  has Description => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannelGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::CreateChannelGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::CreateChannelGroup - Arguments for method CreateChannelGroup on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannelGroup on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method CreateChannelGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannelGroup.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $CreateChannelGroupResponse = $mediapackagev2->CreateChannelGroup(
      ChannelGroupName => 'MyResourceName',
      ClientToken      => 'MyIdempotencyToken',               # OPTIONAL
      Description      => 'MyResourceDescription',            # OPTIONAL
      Tags             => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreateChannelGroupResponse->Arn;
    my $ChannelGroupName = $CreateChannelGroupResponse->ChannelGroupName;
    my $CreatedAt        = $CreateChannelGroupResponse->CreatedAt;
    my $Description      = $CreateChannelGroupResponse->Description;
    my $ETag             = $CreateChannelGroupResponse->ETag;
    my $EgressDomain     = $CreateChannelGroupResponse->EgressDomain;
    my $ModifiedAt       = $CreateChannelGroupResponse->ModifiedAt;
    my $Tags             = $CreateChannelGroupResponse->Tags;

    # Returns a L<Paws::MediaPackageV2::CreateChannelGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/CreateChannelGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region. You can't use spaces in the name. You can't change
the name after you create the channel group.



=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure the
idempotency of the request.



=head2 Description => Str

Enter any descriptive text that helps you to identify the channel
group.



=head2 Tags => L<Paws::MediaPackageV2::TagMap>

A comma-separated list of tag key:value pairs that you define. For
example:

C<"Key1": "Value1",>

C<"Key2": "Value2">




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannelGroup in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

