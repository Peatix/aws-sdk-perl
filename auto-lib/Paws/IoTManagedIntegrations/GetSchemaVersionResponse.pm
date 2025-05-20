
package Paws::IoTManagedIntegrations::GetSchemaVersionResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::SchemaVersionSchema');
  has SchemaId => (is => 'ro', isa => 'Str');
  has SemanticVersion => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Visibility => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetSchemaVersionResponse

=head1 ATTRIBUTES


=head2 Description => Str

The description of the schema version.


=head2 Namespace => Str

The name of the schema version.


=head2 Schema => L<Paws::IoTManagedIntegrations::SchemaVersionSchema>

The schema of the schema version.


=head2 SchemaId => Str

The id of the schema version.


=head2 SemanticVersion => Str

The schema version. If this is left blank, it defaults to the latest
version.


=head2 Type => Str

The type of schema version.

Valid values are: C<"capability">, C<"definition">
=head2 Visibility => Str

The visibility of the schema version.

Valid values are: C<"PUBLIC">, C<"PRIVATE">
=head2 _request_id => Str


=cut

