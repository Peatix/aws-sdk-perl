
package Paws::EntityResolution::UpdateSchemaMappingOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MappedInputFields => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::SchemaInputAttribute]', traits => ['NameInRequest'], request_name => 'mappedInputFields', required => 1);
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schemaArn', required => 1);
  has SchemaName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schemaName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::UpdateSchemaMappingOutput

=head1 ATTRIBUTES


=head2 Description => Str

A description of the schema.


=head2 B<REQUIRED> MappedInputFields => ArrayRef[L<Paws::EntityResolution::SchemaInputAttribute>]

A list of C<MappedInputFields>. Each C<MappedInputField> corresponds to
a column the source data table, and contains column name plus
additional information that Entity Resolution uses for matching.


=head2 B<REQUIRED> SchemaArn => Str

The ARN (Amazon Resource Name) that Entity Resolution generated for the
C<SchemaMapping>.


=head2 B<REQUIRED> SchemaName => Str

The name of the schema.


=head2 _request_id => Str


=cut

