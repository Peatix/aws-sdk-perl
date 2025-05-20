
package Paws::LexModels::GetMigrationsResponse;
  use Moose;
  has MigrationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::MigrationSummary]', traits => ['NameInRequest'], request_name => 'migrationSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetMigrationsResponse

=head1 ATTRIBUTES


=head2 MigrationSummaries => ArrayRef[L<Paws::LexModels::MigrationSummary>]

An array of summaries for migrations from Amazon Lex V1 to Amazon Lex
V2. To see details of the migration, use the C<migrationId> from the
summary in a call to the operation.


=head2 NextToken => Str

If the response is truncated, it includes a pagination token that you
can specify in your next request to fetch the next page of migrations.


=head2 _request_id => Str


=cut

