
package Paws::ChimeSDKMessaging::DescribeChannelMembership;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer', required => 1);
  has MemberArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'memberArn', required => 1);
  has SubChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sub-channel-id');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChannelMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/memberships/{memberArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::DescribeChannelMembershipResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DescribeChannelMembership - Arguments for method DescribeChannelMembership on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChannelMembership on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method DescribeChannelMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChannelMembership.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $DescribeChannelMembershipResponse =
      $messaging -chime->DescribeChannelMembership(
      ChannelArn   => 'MyChimeArn',
      ChimeBearer  => 'MyChimeArn',
      MemberArn    => 'MyChimeArn',
      SubChannelId => 'MySubChannelId',    # OPTIONAL
      );

    # Results:
    my $ChannelMembership =
      $DescribeChannelMembershipResponse->ChannelMembership;

# Returns a L<Paws::ChimeSDKMessaging::DescribeChannelMembershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/DescribeChannelMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 B<REQUIRED> ChimeBearer => Str

The ARN of the C<AppInstanceUser> or C<AppInstanceBot> that makes the
API call.



=head2 B<REQUIRED> MemberArn => Str

The C<AppInstanceUserArn> of the member.



=head2 SubChannelId => Str

The ID of the SubChannel in the request. The response contains an
C<ElasticChannelConfiguration> object.

Only required to get a userE<rsquo>s SubChannel membership details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChannelMembership in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

