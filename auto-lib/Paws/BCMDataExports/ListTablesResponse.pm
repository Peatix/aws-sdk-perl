
package Paws::BCMDataExports::ListTablesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tables => (is => 'ro', isa => 'ArrayRef[Paws::BCMDataExports::Table]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::ListTablesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 Tables => ArrayRef[L<Paws::BCMDataExports::Table>]

The list of tables.


=head2 _request_id => Str


=cut

1;