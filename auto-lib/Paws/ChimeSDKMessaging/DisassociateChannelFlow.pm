
package Paws::ChimeSDKMessaging::DisassociateChannelFlow;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChannelFlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelFlowArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateChannelFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/channel-flow/{channelFlowArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DisassociateChannelFlow - Arguments for method DisassociateChannelFlow on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateChannelFlow on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method DisassociateChannelFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateChannelFlow.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    $messaging -chime->DisassociateChannelFlow(
      ChannelArn     => 'MyChimeArn',
      ChannelFlowArn => 'MyChimeArn',
      ChimeBearer    => 'MyChimeArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/DisassociateChannelFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 B<REQUIRED> ChannelFlowArn => Str

The ARN of the channel flow.



=head2 B<REQUIRED> ChimeBearer => Str

The C<AppInstanceUserArn> of the user making the API call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateChannelFlow in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

