
package Paws::InspectorScan::ScanSbomResponse;
  use Moose;
  has Sbom => (is => 'ro', isa => 'Paws::InspectorScan::Sbom', traits => ['NameInRequest'], request_name => 'sbom');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InspectorScan::ScanSbomResponse

=head1 ATTRIBUTES


=head2 Sbom => L<Paws::InspectorScan::Sbom>

The vulnerability report for the scanned SBOM.


=head2 _request_id => Str


=cut

