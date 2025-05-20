
package Paws::BCMDataExports::ListExportsResponse;
  use Moose;
  has Exports => (is => 'ro', isa => 'ArrayRef[Paws::BCMDataExports::ExportReference]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::ListExportsResponse

=head1 ATTRIBUTES


=head2 Exports => ArrayRef[L<Paws::BCMDataExports::ExportReference>]

The details of the exports, including name and export status.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

1;