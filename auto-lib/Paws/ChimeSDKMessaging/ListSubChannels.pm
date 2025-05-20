
package Paws::ChimeSDKMessaging::ListSubChannels;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubChannels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/subchannels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::ListSubChannelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListSubChannels - Arguments for method ListSubChannels on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSubChannels on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method ListSubChannels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSubChannels.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $ListSubChannelsResponse = $messaging -chime->ListSubChannels(
      ChannelArn  => 'MyChimeArn',
      ChimeBearer => 'MyChimeArn',
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ChannelArn  = $ListSubChannelsResponse->ChannelArn;
    my $NextToken   = $ListSubChannelsResponse->NextToken;
    my $SubChannels = $ListSubChannelsResponse->SubChannels;

    # Returns a L<Paws::ChimeSDKMessaging::ListSubChannelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/ListSubChannels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of elastic channel.



=head2 B<REQUIRED> ChimeBearer => Str

The C<AppInstanceUserArn> of the user making the API call.



=head2 MaxResults => Int

The maximum number of sub-channels that you want to return.



=head2 NextToken => Str

The token passed by previous API calls until all requested sub-channels
are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSubChannels in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

