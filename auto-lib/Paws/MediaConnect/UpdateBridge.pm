
package Paws::MediaConnect::UpdateBridge;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BridgeArn', required => 1);
  has EgressGatewayBridge => (is => 'ro', isa => 'Paws::MediaConnect::UpdateEgressGatewayBridgeRequest', traits => ['NameInRequest'], request_name => 'egressGatewayBridge');
  has IngressGatewayBridge => (is => 'ro', isa => 'Paws::MediaConnect::UpdateIngressGatewayBridgeRequest', traits => ['NameInRequest'], request_name => 'ingressGatewayBridge');
  has SourceFailoverConfig => (is => 'ro', isa => 'Paws::MediaConnect::UpdateFailoverConfig', traits => ['NameInRequest'], request_name => 'sourceFailoverConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBridge');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/bridges/{BridgeArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateBridgeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateBridge - Arguments for method UpdateBridge on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBridge on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateBridge.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBridge.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateBridgeResponse = $mediaconnect->UpdateBridge(
      BridgeArn           => 'MyUpdateBridgeRequestBridgeArnString',
      EgressGatewayBridge => {
        MaxBitrate => 1,    # OPTIONAL
      },    # OPTIONAL
      IngressGatewayBridge => {
        MaxBitrate => 1,    # OPTIONAL
        MaxOutputs => 1,    # OPTIONAL
      },    # OPTIONAL
      SourceFailoverConfig => {
        FailoverMode   => 'MERGE',    # values: MERGE, FAILOVER; OPTIONAL
        RecoveryWindow => 1,          # OPTIONAL
        SourcePriority => {
          PrimarySource => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        State => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Bridge = $UpdateBridgeResponse->Bridge;

    # Returns a L<Paws::MediaConnect::UpdateBridgeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateBridge>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BridgeArn => Str

TheAmazon Resource Name (ARN) of the bridge that you want to update.



=head2 EgressGatewayBridge => L<Paws::MediaConnect::UpdateEgressGatewayBridgeRequest>

A cloud-to-ground bridge. The content comes from an existing
MediaConnect flow and is delivered to your premises.



=head2 IngressGatewayBridge => L<Paws::MediaConnect::UpdateIngressGatewayBridgeRequest>

A ground-to-cloud bridge. The content originates at your premises and
is delivered to the cloud.



=head2 SourceFailoverConfig => L<Paws::MediaConnect::UpdateFailoverConfig>

The settings for source failover.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBridge in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

