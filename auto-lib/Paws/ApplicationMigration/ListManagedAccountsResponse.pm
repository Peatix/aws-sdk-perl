
package Paws::ApplicationMigration::ListManagedAccountsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::ManagedAccount]', traits => ['NameInRequest'], request_name => 'items', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListManagedAccountsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::ApplicationMigration::ManagedAccount>]

List managed accounts response items.


=head2 NextToken => Str

List managed accounts response next token.


=head2 _request_id => Str


=cut

