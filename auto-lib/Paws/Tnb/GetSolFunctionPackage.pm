
package Paws::Tnb::GetSolFunctionPackage;
  use Moose;
  has VnfPkgId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vnfPkgId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSolFunctionPackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::GetSolFunctionPackageOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolFunctionPackage - Arguments for method GetSolFunctionPackage on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSolFunctionPackage on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method GetSolFunctionPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSolFunctionPackage.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $GetSolFunctionPackageOutput = $tnb->GetSolFunctionPackage(
      VnfPkgId => 'MyVnfPkgId',

    );

    # Results:
    my $Arn              = $GetSolFunctionPackageOutput->Arn;
    my $Id               = $GetSolFunctionPackageOutput->Id;
    my $Metadata         = $GetSolFunctionPackageOutput->Metadata;
    my $OnboardingState  = $GetSolFunctionPackageOutput->OnboardingState;
    my $OperationalState = $GetSolFunctionPackageOutput->OperationalState;
    my $Tags             = $GetSolFunctionPackageOutput->Tags;
    my $UsageState       = $GetSolFunctionPackageOutput->UsageState;
    my $VnfProductName   = $GetSolFunctionPackageOutput->VnfProductName;
    my $VnfProvider      = $GetSolFunctionPackageOutput->VnfProvider;
    my $VnfdId           = $GetSolFunctionPackageOutput->VnfdId;
    my $VnfdVersion      = $GetSolFunctionPackageOutput->VnfdVersion;

    # Returns a L<Paws::Tnb::GetSolFunctionPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/GetSolFunctionPackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VnfPkgId => Str

ID of the function package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSolFunctionPackage in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

