
package Paws::VPCLattice::CreateResourceConfiguration;
  use Moose;
  has AllowAssociationToShareableServiceNetwork => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowAssociationToShareableServiceNetwork');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'portRanges');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol');
  has ResourceConfigurationDefinition => (is => 'ro', isa => 'Paws::VPCLattice::ResourceConfigurationDefinition', traits => ['NameInRequest'], request_name => 'resourceConfigurationDefinition');
  has ResourceConfigurationGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceConfigurationGroupIdentifier');
  has ResourceGatewayIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceGatewayIdentifier');
  has Tags => (is => 'ro', isa => 'Paws::VPCLattice::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourceconfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::CreateResourceConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateResourceConfiguration - Arguments for method CreateResourceConfiguration on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceConfiguration on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method CreateResourceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceConfiguration.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $CreateResourceConfigurationResponse =
      $vpc -lattice->CreateResourceConfiguration(
      Name => 'MyResourceConfigurationName',
      Type => 'GROUP',
      AllowAssociationToShareableServiceNetwork => 1,                 # OPTIONAL
      ClientToken                               => 'MyClientToken',   # OPTIONAL
      PortRanges                                => [
        'MyPortRange', ...    # min: 1, max: 11
      ],    # OPTIONAL
      Protocol                        => 'TCP',    # OPTIONAL
      ResourceConfigurationDefinition => {
        ArnResource => {
          Arn => 'MyWildcardArn',    # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
        DnsResource => {
          DomainName    => 'MyDomainName',    # min: 3, max: 255; OPTIONAL
          IpAddressType => 'IPV4',    # values: IPV4, IPV6, DUALSTACK; OPTIONAL
        },    # OPTIONAL
        IpResource => {
          IpAddress => 'MyIpAddress',    # min: 4, max: 39; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ResourceConfigurationGroupIdentifier =>
        'MyResourceConfigurationIdentifier',    # OPTIONAL
      ResourceGatewayIdentifier => 'MyResourceGatewayIdentifier',    # OPTIONAL
      Tags                      => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $AllowAssociationToShareableServiceNetwork =
      $CreateResourceConfigurationResponse
      ->AllowAssociationToShareableServiceNetwork;
    my $Arn           = $CreateResourceConfigurationResponse->Arn;
    my $CreatedAt     = $CreateResourceConfigurationResponse->CreatedAt;
    my $FailureReason = $CreateResourceConfigurationResponse->FailureReason;
    my $Id            = $CreateResourceConfigurationResponse->Id;
    my $Name          = $CreateResourceConfigurationResponse->Name;
    my $PortRanges    = $CreateResourceConfigurationResponse->PortRanges;
    my $Protocol      = $CreateResourceConfigurationResponse->Protocol;
    my $ResourceConfigurationDefinition =
      $CreateResourceConfigurationResponse->ResourceConfigurationDefinition;
    my $ResourceConfigurationGroupId =
      $CreateResourceConfigurationResponse->ResourceConfigurationGroupId;
    my $ResourceGatewayId =
      $CreateResourceConfigurationResponse->ResourceGatewayId;
    my $Status = $CreateResourceConfigurationResponse->Status;
    my $Type   = $CreateResourceConfigurationResponse->Type;

    # Returns a L<Paws::VPCLattice::CreateResourceConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/CreateResourceConfiguration>

=head1 ATTRIBUTES


=head2 AllowAssociationToShareableServiceNetwork => Bool

(SINGLE, GROUP, ARN) Specifies whether the resource configuration can
be associated with a sharable service network. The default is false.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.



=head2 B<REQUIRED> Name => Str

The name of the resource configuration. The name must be unique within
the account. The valid characters are a-z, 0-9, and hyphens (-). You
can't use a hyphen as the first or last character, or immediately after
another hyphen.



=head2 PortRanges => ArrayRef[Str|Undef]

(SINGLE, GROUP, CHILD) The TCP port ranges that a consumer can use to
access a resource configuration (for example: 1-65535). You can
separate port ranges using commas (for example: 1,2,22-30).



=head2 Protocol => Str

(SINGLE, GROUP) The protocol accepted by the resource configuration.

Valid values are: C<"TCP">

=head2 ResourceConfigurationDefinition => L<Paws::VPCLattice::ResourceConfigurationDefinition>

(SINGLE, CHILD, ARN) The resource configuration.



=head2 ResourceConfigurationGroupIdentifier => Str

(CHILD) The ID or ARN of the parent resource configuration (type is
C<GROUP>). This is used to associate a child resource configuration
with a group resource configuration.



=head2 ResourceGatewayIdentifier => Str

(SINGLE, GROUP, ARN) The ID or ARN of the resource gateway used to
connect to the resource configuration. For a child resource
configuration, this value is inherited from the parent resource
configuration.



=head2 Tags => L<Paws::VPCLattice::TagMap>

The tags for the resource configuration.



=head2 B<REQUIRED> Type => Str

The type of resource configuration.

=over

=item *

C<SINGLE> - A single resource.

=item *

C<GROUP> - A group of resources. You must create a group resource
configuration before you create a child resource configuration.

=item *

C<CHILD> - A single resource that is part of a group resource
configuration.

=item *

C<ARN> - An Amazon Web Services resource.

=back


Valid values are: C<"GROUP">, C<"CHILD">, C<"SINGLE">, C<"ARN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceConfiguration in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

