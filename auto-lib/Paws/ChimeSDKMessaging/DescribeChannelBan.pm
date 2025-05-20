
package Paws::ChimeSDKMessaging::DescribeChannelBan;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer', required => 1);
  has MemberArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'memberArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChannelBan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/bans/{memberArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::DescribeChannelBanResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DescribeChannelBan - Arguments for method DescribeChannelBan on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChannelBan on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method DescribeChannelBan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChannelBan.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $DescribeChannelBanResponse = $messaging -chime->DescribeChannelBan(
      ChannelArn  => 'MyChimeArn',
      ChimeBearer => 'MyChimeArn',
      MemberArn   => 'MyChimeArn',

    );

    # Results:
    my $ChannelBan = $DescribeChannelBanResponse->ChannelBan;

    # Returns a L<Paws::ChimeSDKMessaging::DescribeChannelBanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/DescribeChannelBan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel from which the user is banned.



=head2 B<REQUIRED> ChimeBearer => Str

The ARN of the C<AppInstanceUser> or C<AppInstanceBot> that makes the
API call.



=head2 B<REQUIRED> MemberArn => Str

The C<AppInstanceUserArn> of the member being banned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChannelBan in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

