
package Paws::VPCLattice::GetService;
  use Moose;
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetService');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetServiceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetService - Arguments for method GetService on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetService on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetService.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetServiceResponse = $vpc -lattice->GetService(
      ServiceIdentifier => 'MyServiceIdentifier',

    );

    # Results:
    my $Arn              = $GetServiceResponse->Arn;
    my $AuthType         = $GetServiceResponse->AuthType;
    my $CertificateArn   = $GetServiceResponse->CertificateArn;
    my $CreatedAt        = $GetServiceResponse->CreatedAt;
    my $CustomDomainName = $GetServiceResponse->CustomDomainName;
    my $DnsEntry         = $GetServiceResponse->DnsEntry;
    my $FailureCode      = $GetServiceResponse->FailureCode;
    my $FailureMessage   = $GetServiceResponse->FailureMessage;
    my $Id               = $GetServiceResponse->Id;
    my $LastUpdatedAt    = $GetServiceResponse->LastUpdatedAt;
    my $Name             = $GetServiceResponse->Name;
    my $Status           = $GetServiceResponse->Status;

    # Returns a L<Paws::VPCLattice::GetServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetService>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetService in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

