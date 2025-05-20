
package Paws::ApplicationMigration::ListExportErrorsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::ExportTaskError]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListExportErrorsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApplicationMigration::ExportTaskError>]

List export errors response items.


=head2 NextToken => Str

List export errors response next token.


=head2 _request_id => Str


=cut

