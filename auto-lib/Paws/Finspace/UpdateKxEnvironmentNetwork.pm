
package Paws::Finspace::UpdateKxEnvironmentNetwork;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CustomDNSConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::CustomDNSServer]', traits => ['NameInRequest'], request_name => 'customDNSConfiguration');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has TransitGatewayConfiguration => (is => 'ro', isa => 'Paws::Finspace::TransitGatewayConfiguration', traits => ['NameInRequest'], request_name => 'transitGatewayConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKxEnvironmentNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/network');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::UpdateKxEnvironmentNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxEnvironmentNetwork - Arguments for method UpdateKxEnvironmentNetwork on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKxEnvironmentNetwork on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method UpdateKxEnvironmentNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKxEnvironmentNetwork.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $UpdateKxEnvironmentNetworkResponse =
      $finspace->UpdateKxEnvironmentNetwork(
      EnvironmentId          => 'MyIdType',
      ClientToken            => 'MyClientToken',    # OPTIONAL
      CustomDNSConfiguration => [
        {
          CustomDNSServerIP   => 'MyValidIPAddress',
          CustomDNSServerName => 'MyValidHostname',    # min: 3, max: 255

        },
        ...
      ],    # OPTIONAL
      TransitGatewayConfiguration => {
        RoutableCIDRSpace => 'MyValidCIDRSpace',
        TransitGatewayID  => 'MyTransitGatewayID',    # min: 1, max: 32
        AttachmentNetworkAclConfiguration => [
          {
            CidrBlock    => 'MyValidCIDRBlock',    # min: 1, max: 18
            Protocol     => 'MyProtocol',          # min: 1, max: 5
            RuleAction   => 'allow',               # values: allow, deny
            RuleNumber   => 1,                     # min: 1, max: 32766
            IcmpTypeCode => {
              Code => 1,
              Type => 1,

            },                                     # OPTIONAL
            PortRange => {
              From => 1,                           # max: 65535
              To   => 1,                           # max: 65535

            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $AvailabilityZoneIds =
      $UpdateKxEnvironmentNetworkResponse->AvailabilityZoneIds;
    my $AwsAccountId = $UpdateKxEnvironmentNetworkResponse->AwsAccountId;
    my $CreationTimestamp =
      $UpdateKxEnvironmentNetworkResponse->CreationTimestamp;
    my $CustomDNSConfiguration =
      $UpdateKxEnvironmentNetworkResponse->CustomDNSConfiguration;
    my $DedicatedServiceAccountId =
      $UpdateKxEnvironmentNetworkResponse->DedicatedServiceAccountId;
    my $Description    = $UpdateKxEnvironmentNetworkResponse->Description;
    my $DnsStatus      = $UpdateKxEnvironmentNetworkResponse->DnsStatus;
    my $EnvironmentArn = $UpdateKxEnvironmentNetworkResponse->EnvironmentArn;
    my $EnvironmentId  = $UpdateKxEnvironmentNetworkResponse->EnvironmentId;
    my $ErrorMessage   = $UpdateKxEnvironmentNetworkResponse->ErrorMessage;
    my $KmsKeyId       = $UpdateKxEnvironmentNetworkResponse->KmsKeyId;
    my $Name           = $UpdateKxEnvironmentNetworkResponse->Name;
    my $Status         = $UpdateKxEnvironmentNetworkResponse->Status;
    my $TgwStatus      = $UpdateKxEnvironmentNetworkResponse->TgwStatus;
    my $TransitGatewayConfiguration =
      $UpdateKxEnvironmentNetworkResponse->TransitGatewayConfiguration;
    my $UpdateTimestamp = $UpdateKxEnvironmentNetworkResponse->UpdateTimestamp;

    # Returns a L<Paws::Finspace::UpdateKxEnvironmentNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/UpdateKxEnvironmentNetwork>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 CustomDNSConfiguration => ArrayRef[L<Paws::Finspace::CustomDNSServer>]

A list of DNS server name and server IP. This is used to set up
Route-53 outbound resolvers.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.



=head2 TransitGatewayConfiguration => L<Paws::Finspace::TransitGatewayConfiguration>

Specifies the transit gateway and network configuration to connect the
kdb environment to an internal network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKxEnvironmentNetwork in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

