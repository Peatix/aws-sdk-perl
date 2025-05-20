
package Paws::VPCLattice::UpdateResourceConfiguration;
  use Moose;
  has AllowAssociationToShareableServiceNetwork => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowAssociationToShareableServiceNetwork');
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'portRanges');
  has ResourceConfigurationDefinition => (is => 'ro', isa => 'Paws::VPCLattice::ResourceConfigurationDefinition', traits => ['NameInRequest'], request_name => 'resourceConfigurationDefinition');
  has ResourceConfigurationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceConfigurationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourceconfigurations/{resourceConfigurationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::UpdateResourceConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateResourceConfiguration - Arguments for method UpdateResourceConfiguration on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceConfiguration on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method UpdateResourceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceConfiguration.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $UpdateResourceConfigurationResponse =
      $vpc -lattice->UpdateResourceConfiguration(
      ResourceConfigurationIdentifier => 'MyResourceConfigurationIdentifier',
      AllowAssociationToShareableServiceNetwork => 1,    # OPTIONAL
      PortRanges                                => [
        'MyPortRange', ...                               # min: 1, max: 11
      ],    # OPTIONAL
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
      );

    # Results:
    my $AllowAssociationToShareableServiceNetwork =
      $UpdateResourceConfigurationResponse
      ->AllowAssociationToShareableServiceNetwork;
    my $Arn        = $UpdateResourceConfigurationResponse->Arn;
    my $Id         = $UpdateResourceConfigurationResponse->Id;
    my $Name       = $UpdateResourceConfigurationResponse->Name;
    my $PortRanges = $UpdateResourceConfigurationResponse->PortRanges;
    my $Protocol   = $UpdateResourceConfigurationResponse->Protocol;
    my $ResourceConfigurationDefinition =
      $UpdateResourceConfigurationResponse->ResourceConfigurationDefinition;
    my $ResourceConfigurationGroupId =
      $UpdateResourceConfigurationResponse->ResourceConfigurationGroupId;
    my $ResourceGatewayId =
      $UpdateResourceConfigurationResponse->ResourceGatewayId;
    my $Status = $UpdateResourceConfigurationResponse->Status;
    my $Type   = $UpdateResourceConfigurationResponse->Type;

    # Returns a L<Paws::VPCLattice::UpdateResourceConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/UpdateResourceConfiguration>

=head1 ATTRIBUTES


=head2 AllowAssociationToShareableServiceNetwork => Bool

Indicates whether to add the resource configuration to service networks
that are shared with other accounts.



=head2 PortRanges => ArrayRef[Str|Undef]

The TCP port ranges that a consumer can use to access a resource
configuration. You can separate port ranges with a comma. Example:
1-65535 or 1,2,22-30



=head2 ResourceConfigurationDefinition => L<Paws::VPCLattice::ResourceConfigurationDefinition>

The resource configuration.



=head2 B<REQUIRED> ResourceConfigurationIdentifier => Str

The ID of the resource configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceConfiguration in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

