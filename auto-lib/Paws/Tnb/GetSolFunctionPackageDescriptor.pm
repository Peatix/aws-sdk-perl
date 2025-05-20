
package Paws::Tnb::GetSolFunctionPackageDescriptor;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Accept', required => 1);
  has VnfPkgId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vnfPkgId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSolFunctionPackageDescriptor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/vnfd');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::GetSolFunctionPackageDescriptorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolFunctionPackageDescriptor - Arguments for method GetSolFunctionPackageDescriptor on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSolFunctionPackageDescriptor on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method GetSolFunctionPackageDescriptor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSolFunctionPackageDescriptor.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $GetSolFunctionPackageDescriptorOutput =
      $tnb->GetSolFunctionPackageDescriptor(
      Accept   => 'text/plain',
      VnfPkgId => 'MyVnfPkgId',

      );

    # Results:
    my $ContentType = $GetSolFunctionPackageDescriptorOutput->ContentType;
    my $Vnfd        = $GetSolFunctionPackageDescriptorOutput->Vnfd;

    # Returns a L<Paws::Tnb::GetSolFunctionPackageDescriptorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/GetSolFunctionPackageDescriptor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accept => Str

Indicates which content types, expressed as MIME types, the client is
able to understand.

Valid values are: C<"text/plain">

=head2 B<REQUIRED> VnfPkgId => Str

ID of the function package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSolFunctionPackageDescriptor in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

