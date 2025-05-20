
package Paws::S3Tables::ListTablesResponse;
  use Moose;
  has ContinuationToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'continuationToken');
  has Tables => (is => 'ro', isa => 'ArrayRef[Paws::S3Tables::TableSummary]', traits => ['NameInRequest'], request_name => 'tables', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::ListTablesResponse

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

You can use this C<ContinuationToken> for pagination of the list
results.


=head2 B<REQUIRED> Tables => ArrayRef[L<Paws::S3Tables::TableSummary>]

A list of tables.


=head2 _request_id => Str


=cut

