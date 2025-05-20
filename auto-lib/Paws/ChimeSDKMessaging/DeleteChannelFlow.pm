
package Paws::ChimeSDKMessaging::DeleteChannelFlow;
  use Moose;
  has ChannelFlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelFlowArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChannelFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel-flows/{channelFlowArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::DeleteChannelFlow - Arguments for method DeleteChannelFlow on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChannelFlow on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method DeleteChannelFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChannelFlow.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    $messaging -chime->DeleteChannelFlow(
      ChannelFlowArn => 'MyChimeArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/DeleteChannelFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelFlowArn => Str

The ARN of the channel flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChannelFlow in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

