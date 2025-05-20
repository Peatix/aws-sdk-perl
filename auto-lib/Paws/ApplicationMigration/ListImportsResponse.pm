
package Paws::ApplicationMigration::ListImportsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::ImportTask]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListImportsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApplicationMigration::ImportTask>]

List import response items.


=head2 NextToken => Str

List import response next token.


=head2 _request_id => Str


=cut

