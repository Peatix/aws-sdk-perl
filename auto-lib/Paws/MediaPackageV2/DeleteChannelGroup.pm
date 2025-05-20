
package Paws::MediaPackageV2::DeleteChannelGroup;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChannelGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::DeleteChannelGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::DeleteChannelGroup - Arguments for method DeleteChannelGroup on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChannelGroup on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method DeleteChannelGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChannelGroup.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $DeleteChannelGroupResponse = $mediapackagev2->DeleteChannelGroup(
      ChannelGroupName => 'MyResourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/DeleteChannelGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChannelGroup in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

