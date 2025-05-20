
package Paws::InspectorScan::ScanSbom;
  use Moose;
  has OutputFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputFormat');
  has Sbom => (is => 'ro', isa => 'Paws::InspectorScan::Sbom', traits => ['NameInRequest'], request_name => 'sbom', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ScanSbom');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scan/sbom');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InspectorScan::ScanSbomResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InspectorScan::ScanSbom - Arguments for method ScanSbom on L<Paws::InspectorScan>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ScanSbom on the
L<Inspector Scan|Paws::InspectorScan> service. Use the attributes of this class
as arguments to method ScanSbom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ScanSbom.

=head1 SYNOPSIS

    my $inspector-scan = Paws->service('InspectorScan');
    my $ScanSbomResponse = $inspector -scan->ScanSbom(
      Sbom => {

      },
      OutputFormat => 'CYCLONE_DX_1_5',    # OPTIONAL
    );

    # Results:
    my $Sbom = $ScanSbomResponse->Sbom;

    # Returns a L<Paws::InspectorScan::ScanSbomResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector-scan/ScanSbom>

=head1 ATTRIBUTES


=head2 OutputFormat => Str

The output format for the vulnerability report.

Valid values are: C<"CYCLONE_DX_1_5">, C<"INSPECTOR">

=head2 B<REQUIRED> Sbom => L<Paws::InspectorScan::Sbom>

The JSON file for the SBOM you want to scan. The SBOM must be in
CycloneDX 1.5 format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ScanSbom in L<Paws::InspectorScan>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

