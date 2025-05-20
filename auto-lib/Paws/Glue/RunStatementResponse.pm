
package Paws::Glue::RunStatementResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::RunStatementResponse

=head1 ATTRIBUTES


=head2 Id => Int

Returns the Id of the statement that was run.


=head2 _request_id => Str


=cut

1;