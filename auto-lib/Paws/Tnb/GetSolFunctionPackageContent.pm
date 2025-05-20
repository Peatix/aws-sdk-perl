
package Paws::Tnb::GetSolFunctionPackageContent;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Accept', required => 1);
  has VnfPkgId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vnfPkgId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSolFunctionPackageContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::GetSolFunctionPackageContentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolFunctionPackageContent - Arguments for method GetSolFunctionPackageContent on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSolFunctionPackageContent on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method GetSolFunctionPackageContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSolFunctionPackageContent.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $GetSolFunctionPackageContentOutput = $tnb->GetSolFunctionPackageContent(
      Accept   => 'application/zip',
      VnfPkgId => 'MyVnfPkgId',

    );

    # Results:
    my $ContentType    = $GetSolFunctionPackageContentOutput->ContentType;
    my $PackageContent = $GetSolFunctionPackageContentOutput->PackageContent;

    # Returns a L<Paws::Tnb::GetSolFunctionPackageContentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/GetSolFunctionPackageContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accept => Str

The format of the package that you want to download from the function
packages.

Valid values are: C<"application/zip">

=head2 B<REQUIRED> VnfPkgId => Str

ID of the function package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSolFunctionPackageContent in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

