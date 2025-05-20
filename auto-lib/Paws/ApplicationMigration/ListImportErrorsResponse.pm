
package Paws::ApplicationMigration::ListImportErrorsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::ImportTaskError]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListImportErrorsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApplicationMigration::ImportTaskError>]

List imports errors response items.


=head2 NextToken => Str

List imports errors response next token.


=head2 _request_id => Str


=cut

