
package Paws::VPCLattice::GetServiceNetwork;
  use Moose;
  has ServiceNetworkIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceNetworkIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworks/{serviceNetworkIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetServiceNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetServiceNetwork - Arguments for method GetServiceNetwork on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceNetwork on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetServiceNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceNetwork.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetServiceNetworkResponse = $vpc -lattice->GetServiceNetwork(
      ServiceNetworkIdentifier => 'MyServiceNetworkIdentifier',

    );

    # Results:
    my $Arn           = $GetServiceNetworkResponse->Arn;
    my $AuthType      = $GetServiceNetworkResponse->AuthType;
    my $CreatedAt     = $GetServiceNetworkResponse->CreatedAt;
    my $Id            = $GetServiceNetworkResponse->Id;
    my $LastUpdatedAt = $GetServiceNetworkResponse->LastUpdatedAt;
    my $Name          = $GetServiceNetworkResponse->Name;
    my $NumberOfAssociatedServices =
      $GetServiceNetworkResponse->NumberOfAssociatedServices;
    my $NumberOfAssociatedVPCs =
      $GetServiceNetworkResponse->NumberOfAssociatedVPCs;
    my $SharingConfig = $GetServiceNetworkResponse->SharingConfig;

    # Returns a L<Paws::VPCLattice::GetServiceNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetServiceNetwork>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceNetworkIdentifier => Str

The ID or ARN of the service network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceNetwork in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

