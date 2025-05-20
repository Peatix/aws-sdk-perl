
package Paws::EntityResolution::GetSchemaMappingOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has HasWorkflows => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'hasWorkflows', required => 1);
  has MappedInputFields => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::SchemaInputAttribute]', traits => ['NameInRequest'], request_name => 'mappedInputFields', required => 1);
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schemaArn', required => 1);
  has SchemaName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schemaName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EntityResolution::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetSchemaMappingOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the C<SchemaMapping> was created.


=head2 Description => Str

A description of the schema.


=head2 B<REQUIRED> HasWorkflows => Bool

Specifies whether the schema mapping has been applied to a workflow.


=head2 B<REQUIRED> MappedInputFields => ArrayRef[L<Paws::EntityResolution::SchemaInputAttribute>]

A list of C<MappedInputFields>. Each C<MappedInputField> corresponds to
a column the source data table, and contains column name plus
additional information Venice uses for matching.


=head2 B<REQUIRED> SchemaArn => Str

The ARN (Amazon Resource Name) that Entity Resolution generated for the
SchemaMapping.


=head2 B<REQUIRED> SchemaName => Str

The name of the schema.


=head2 Tags => L<Paws::EntityResolution::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the C<SchemaMapping> was last updated.


=head2 _request_id => Str


=cut

