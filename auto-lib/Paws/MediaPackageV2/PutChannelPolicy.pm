
package Paws::MediaPackageV2::PutChannelPolicy;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutChannelPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::PutChannelPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::PutChannelPolicy - Arguments for method PutChannelPolicy on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutChannelPolicy on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method PutChannelPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutChannelPolicy.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $PutChannelPolicyResponse = $mediapackagev2->PutChannelPolicy(
      ChannelGroupName => 'MyResourceName',
      ChannelName      => 'MyResourceName',
      Policy           => 'MyPolicyText',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/PutChannelPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.



=head2 B<REQUIRED> ChannelName => Str

The name that describes the channel. The name is the primary identifier
for the channel, and must be unique for your account in the AWS Region
and channel group.



=head2 B<REQUIRED> Policy => Str

The policy to attach to the specified channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutChannelPolicy in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

