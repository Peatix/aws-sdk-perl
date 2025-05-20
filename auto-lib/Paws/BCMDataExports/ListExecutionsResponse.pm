
package Paws::BCMDataExports::ListExecutionsResponse;
  use Moose;
  has Executions => (is => 'ro', isa => 'ArrayRef[Paws::BCMDataExports::ExecutionReference]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::ListExecutionsResponse

=head1 ATTRIBUTES


=head2 Executions => ArrayRef[L<Paws::BCMDataExports::ExecutionReference>]

The list of executions.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

1;