
package Paws::VPCLattice::GetResourceConfiguration;
  use Moose;
  has ResourceConfigurationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceConfigurationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourceconfigurations/{resourceConfigurationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetResourceConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetResourceConfiguration - Arguments for method GetResourceConfiguration on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceConfiguration on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetResourceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceConfiguration.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetResourceConfigurationResponse =
      $vpc -lattice->GetResourceConfiguration(
      ResourceConfigurationIdentifier => 'MyResourceConfigurationIdentifier',

      );

    # Results:
    my $AllowAssociationToShareableServiceNetwork =
      $GetResourceConfigurationResponse
      ->AllowAssociationToShareableServiceNetwork;
    my $AmazonManaged    = $GetResourceConfigurationResponse->AmazonManaged;
    my $Arn              = $GetResourceConfigurationResponse->Arn;
    my $CreatedAt        = $GetResourceConfigurationResponse->CreatedAt;
    my $CustomDomainName = $GetResourceConfigurationResponse->CustomDomainName;
    my $FailureReason    = $GetResourceConfigurationResponse->FailureReason;
    my $Id               = $GetResourceConfigurationResponse->Id;
    my $LastUpdatedAt    = $GetResourceConfigurationResponse->LastUpdatedAt;
    my $Name             = $GetResourceConfigurationResponse->Name;
    my $PortRanges       = $GetResourceConfigurationResponse->PortRanges;
    my $Protocol         = $GetResourceConfigurationResponse->Protocol;
    my $ResourceConfigurationDefinition =
      $GetResourceConfigurationResponse->ResourceConfigurationDefinition;
    my $ResourceConfigurationGroupId =
      $GetResourceConfigurationResponse->ResourceConfigurationGroupId;
    my $ResourceGatewayId =
      $GetResourceConfigurationResponse->ResourceGatewayId;
    my $Status = $GetResourceConfigurationResponse->Status;
    my $Type   = $GetResourceConfigurationResponse->Type;

    # Returns a L<Paws::VPCLattice::GetResourceConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetResourceConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceConfigurationIdentifier => Str

The ID of the resource configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceConfiguration in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

