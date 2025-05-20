
package Paws::DMS::StartMetadataModelExportToTargetResponse;
  use Moose;
  has RequestIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartMetadataModelExportToTargetResponse

=head1 ATTRIBUTES


=head2 RequestIdentifier => Str

The identifier for the export operation.


=head2 _request_id => Str


=cut

1;