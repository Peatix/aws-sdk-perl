
package Paws::Glue::GetStatementResponse;
  use Moose;
  has Statement => (is => 'ro', isa => 'Paws::Glue::Statement');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetStatementResponse

=head1 ATTRIBUTES


=head2 Statement => L<Paws::Glue::Statement>

Returns the statement.


=head2 _request_id => Str


=cut

1;