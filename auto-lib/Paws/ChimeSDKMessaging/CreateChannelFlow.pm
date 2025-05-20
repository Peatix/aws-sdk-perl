
package Paws::ChimeSDKMessaging::CreateChannelFlow;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Processors => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::Processor]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannelFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel-flows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::CreateChannelFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::CreateChannelFlow - Arguments for method CreateChannelFlow on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannelFlow on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method CreateChannelFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannelFlow.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $CreateChannelFlowResponse = $messaging -chime->CreateChannelFlow(
      AppInstanceArn     => 'MyChimeArn',
      ClientRequestToken => 'MyClientRequestToken',
      Name               => 'MyNonEmptyResourceName',
      Processors         => [
        {
          Configuration => {
            Lambda => {
              InvocationType => 'ASYNC',                  # values: ASYNC
              ResourceArn    => 'MyLambdaFunctionArn',    # min: 15, max: 2048

            },

          },
          ExecutionOrder => 1,                         # min: 1, max: 3
          FallbackAction => 'CONTINUE',                # values: CONTINUE, ABORT
          Name           => 'MyNonEmptyResourceName',  # min: 1, max: 256

        },
        ...
      ],
      Tags => [
        {
          Key   => 'MyTagKey',                         # min: 1, max: 128
          Value => 'MyTagValue',                       # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ChannelFlowArn = $CreateChannelFlowResponse->ChannelFlowArn;

    # Returns a L<Paws::ChimeSDKMessaging::CreateChannelFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/CreateChannelFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the channel flow request.



=head2 B<REQUIRED> ClientRequestToken => Str

The client token for the request. An Idempotency token.



=head2 B<REQUIRED> Name => Str

The name of the channel flow.



=head2 B<REQUIRED> Processors => ArrayRef[L<Paws::ChimeSDKMessaging::Processor>]

Information about the processor Lambda functions.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKMessaging::Tag>]

The tags for the creation request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannelFlow in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

