
package Paws::EntityResolution::GetIdNamespaceOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdMappingWorkflowProperties => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdNamespaceIdMappingWorkflowProperties]', traits => ['NameInRequest'], request_name => 'idMappingWorkflowProperties');
  has IdNamespaceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idNamespaceArn', required => 1);
  has IdNamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idNamespaceName', required => 1);
  has InputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdNamespaceInputSource]', traits => ['NameInRequest'], request_name => 'inputSourceConfig');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Tags => (is => 'ro', isa => 'Paws::EntityResolution::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetIdNamespaceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the ID namespace was created.


=head2 Description => Str

The description of the ID namespace.


=head2 IdMappingWorkflowProperties => ArrayRef[L<Paws::EntityResolution::IdNamespaceIdMappingWorkflowProperties>]

Determines the properties of C<IdMappingWorkflow> where this
C<IdNamespace> can be used as a C<Source> or a C<Target>.


=head2 B<REQUIRED> IdNamespaceArn => Str

The Amazon Resource Name (ARN) of the ID namespace.


=head2 B<REQUIRED> IdNamespaceName => Str

The name of the ID namespace.


=head2 InputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdNamespaceInputSource>]

A list of C<InputSource> objects, which have the fields
C<InputSourceARN> and C<SchemaName>.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
assumes this role to access the resources defined in this
C<IdNamespace> on your behalf as part of a workflow run.


=head2 Tags => L<Paws::EntityResolution::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 B<REQUIRED> Type => Str

The type of ID namespace. There are two types: C<SOURCE> and C<TARGET>.

The C<SOURCE> contains configurations for C<sourceId> data that will be
processed in an ID mapping workflow.

The C<TARGET> contains a configuration of C<targetId> to which all
C<sourceIds> will resolve to.

Valid values are: C<"SOURCE">, C<"TARGET">
=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the ID namespace was last updated.


=head2 _request_id => Str


=cut

