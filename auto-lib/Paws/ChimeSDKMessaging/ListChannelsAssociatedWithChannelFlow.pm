
package Paws::ChimeSDKMessaging::ListChannelsAssociatedWithChannelFlow;
  use Moose;
  has ChannelFlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'channel-flow-arn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannelsAssociatedWithChannelFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels?scope=channel-flow-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::ListChannelsAssociatedWithChannelFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelsAssociatedWithChannelFlow - Arguments for method ListChannelsAssociatedWithChannelFlow on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannelsAssociatedWithChannelFlow on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method ListChannelsAssociatedWithChannelFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannelsAssociatedWithChannelFlow.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $ListChannelsAssociatedWithChannelFlowResponse =
      $messaging -chime->ListChannelsAssociatedWithChannelFlow(
      ChannelFlowArn => 'MyChimeArn',
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $Channels  = $ListChannelsAssociatedWithChannelFlowResponse->Channels;
    my $NextToken = $ListChannelsAssociatedWithChannelFlowResponse->NextToken;

# Returns a L<Paws::ChimeSDKMessaging::ListChannelsAssociatedWithChannelFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/ListChannelsAssociatedWithChannelFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelFlowArn => Str

The ARN of the channel flow.



=head2 MaxResults => Int

The maximum number of channels that you want to return.



=head2 NextToken => Str

The token passed by previous API calls until all requested channels are
returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannelsAssociatedWithChannelFlow in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

