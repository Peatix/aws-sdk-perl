
package Paws::Glue::ListStatementsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Statements => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Statement]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListStatementsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if not all statements have yet been returned.


=head2 Statements => ArrayRef[L<Paws::Glue::Statement>]

Returns the list of statements.


=head2 _request_id => Str


=cut

1;