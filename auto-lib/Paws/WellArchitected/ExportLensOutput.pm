
package Paws::WellArchitected::ExportLensOutput;
  use Moose;
  has LensJSON => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ExportLensOutput

=head1 ATTRIBUTES


=head2 LensJSON => Str

The JSON representation of a lens.


=head2 _request_id => Str


=cut

