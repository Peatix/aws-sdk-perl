
package Paws::EntityResolution::ListSchemaMappingsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SchemaList => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::SchemaMappingSummary]', traits => ['NameInRequest'], request_name => 'schemaList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListSchemaMappingsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token from the previous API call.


=head2 SchemaList => ArrayRef[L<Paws::EntityResolution::SchemaMappingSummary>]

A list of C<SchemaMappingSummary> objects, each of which contain the
fields C<SchemaName>, C<SchemaArn>, C<CreatedAt>, C<UpdatedAt>.


=head2 _request_id => Str


=cut

