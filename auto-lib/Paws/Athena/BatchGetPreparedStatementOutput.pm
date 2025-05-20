
package Paws::Athena::BatchGetPreparedStatementOutput;
  use Moose;
  has PreparedStatements => (is => 'ro', isa => 'ArrayRef[Paws::Athena::PreparedStatement]');
  has UnprocessedPreparedStatementNames => (is => 'ro', isa => 'ArrayRef[Paws::Athena::UnprocessedPreparedStatementName]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::BatchGetPreparedStatementOutput

=head1 ATTRIBUTES


=head2 PreparedStatements => ArrayRef[L<Paws::Athena::PreparedStatement>]

The list of prepared statements returned.


=head2 UnprocessedPreparedStatementNames => ArrayRef[L<Paws::Athena::UnprocessedPreparedStatementName>]

A list of one or more prepared statements that were requested but could
not be returned.


=head2 _request_id => Str


=cut

1;