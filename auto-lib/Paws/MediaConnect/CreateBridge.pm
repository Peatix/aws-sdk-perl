
package Paws::MediaConnect::CreateBridge;
  use Moose;
  has EgressGatewayBridge => (is => 'ro', isa => 'Paws::MediaConnect::AddEgressGatewayBridgeRequest', traits => ['NameInRequest'], request_name => 'egressGatewayBridge');
  has IngressGatewayBridge => (is => 'ro', isa => 'Paws::MediaConnect::AddIngressGatewayBridgeRequest', traits => ['NameInRequest'], request_name => 'ingressGatewayBridge');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddBridgeOutputRequest]', traits => ['NameInRequest'], request_name => 'outputs');
  has PlacementArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'placementArn', required => 1);
  has SourceFailoverConfig => (is => 'ro', isa => 'Paws::MediaConnect::FailoverConfig', traits => ['NameInRequest'], request_name => 'sourceFailoverConfig');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddBridgeSourceRequest]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBridge');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/bridges');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::CreateBridgeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::CreateBridge - Arguments for method CreateBridge on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBridge on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method CreateBridge.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBridge.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $CreateBridgeResponse = $mediaconnect->CreateBridge(
      Name         => 'MyString',
      PlacementArn => 'MyString',
      Sources      => [
        {
          FlowSource => {
            FlowArn => 'MyAddBridgeFlowSourceRequestFlowArnString',
            Name    => 'MyString',
            FlowVpcInterfaceAttachment => { VpcInterfaceName => 'MyString', }
            ,    # OPTIONAL
          },    # OPTIONAL
          NetworkSource => {
            MulticastIp => 'MyString',
            Name        => 'MyString',
            NetworkName => 'MyString',
            Port        => 1,
            Protocol    => 'zixi-push'
            , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
            MulticastSourceSettings => { MulticastSourceIp => 'MyString', }
            ,    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      EgressGatewayBridge => {
        MaxBitrate => 1,

      },    # OPTIONAL
      IngressGatewayBridge => {
        MaxBitrate => 1,
        MaxOutputs => 1,

      },    # OPTIONAL
      Outputs => [
        {
          NetworkOutput => {
            IpAddress   => 'MyString',
            Name        => 'MyString',
            NetworkName => 'MyString',
            Port        => 1,
            Protocol    => 'zixi-push'
            , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
            Ttl => 1,

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SourceFailoverConfig => {
        FailoverMode   => 'MERGE',      # values: MERGE, FAILOVER; OPTIONAL
        RecoveryWindow => 1,
        SourcePriority => { PrimarySource => 'MyString', },    # OPTIONAL
        State          => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Bridge = $CreateBridgeResponse->Bridge;

    # Returns a L<Paws::MediaConnect::CreateBridgeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/CreateBridge>

=head1 ATTRIBUTES


=head2 EgressGatewayBridge => L<Paws::MediaConnect::AddEgressGatewayBridgeRequest>

An egress bridge is a cloud-to-ground bridge. The content comes from an
existing MediaConnect flow and is delivered to your premises.



=head2 IngressGatewayBridge => L<Paws::MediaConnect::AddIngressGatewayBridgeRequest>

An ingress bridge is a ground-to-cloud bridge. The content originates
at your premises and is delivered to the cloud.



=head2 B<REQUIRED> Name => Str

The name of the bridge. This name can not be modified after the bridge
is created.



=head2 Outputs => ArrayRef[L<Paws::MediaConnect::AddBridgeOutputRequest>]

The outputs that you want to add to this bridge.



=head2 B<REQUIRED> PlacementArn => Str

The bridge placement Amazon Resource Number (ARN).



=head2 SourceFailoverConfig => L<Paws::MediaConnect::FailoverConfig>

The settings for source failover.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::MediaConnect::AddBridgeSourceRequest>]

The sources that you want to add to this bridge.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBridge in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

