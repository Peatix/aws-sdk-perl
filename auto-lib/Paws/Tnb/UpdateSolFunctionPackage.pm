
package Paws::Tnb::UpdateSolFunctionPackage;
  use Moose;
  has OperationalState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationalState', required => 1);
  has VnfPkgId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vnfPkgId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSolFunctionPackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::UpdateSolFunctionPackageOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::UpdateSolFunctionPackage - Arguments for method UpdateSolFunctionPackage on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSolFunctionPackage on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method UpdateSolFunctionPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSolFunctionPackage.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $UpdateSolFunctionPackageOutput = $tnb->UpdateSolFunctionPackage(
      OperationalState => 'ENABLED',
      VnfPkgId         => 'MyVnfPkgId',

    );

    # Results:
    my $OperationalState = $UpdateSolFunctionPackageOutput->OperationalState;

    # Returns a L<Paws::Tnb::UpdateSolFunctionPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/UpdateSolFunctionPackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationalState => Str

Operational state of the function package.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> VnfPkgId => Str

ID of the function package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSolFunctionPackage in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

