
package Paws::BCMDataExports::CreateExportResponse;
  use Moose;
  has ExportArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::CreateExportResponse

=head1 ATTRIBUTES


=head2 ExportArn => Str

The Amazon Resource Name (ARN) for this export.


=head2 _request_id => Str


=cut

1;