
package Paws::Keyspaces::ListTablesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tables => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::TableSummary]', traits => ['NameInRequest'], request_name => 'tables' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::ListTablesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to specify where to start paginating. This is the C<NextToken>
from a previously truncated response.


=head2 Tables => ArrayRef[L<Paws::Keyspaces::TableSummary>]

A list of tables.


=head2 _request_id => Str


=cut

1;