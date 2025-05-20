
package Paws::Keyspaces::GetTypeResponse;
  use Moose;
  has DirectParentTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'directParentTypes' );
  has DirectReferringTables => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'directReferringTables' );
  has FieldDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::FieldDefinition]', traits => ['NameInRequest'], request_name => 'fieldDefinitions' );
  has KeyspaceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceArn' , required => 1);
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp' );
  has MaxNestingDepth => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxNestingDepth' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has TypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeName' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::GetTypeResponse

=head1 ATTRIBUTES


=head2 DirectParentTypes => ArrayRef[Str|Undef]

The types that use this type.


=head2 DirectReferringTables => ArrayRef[Str|Undef]

The tables that use this type.


=head2 FieldDefinitions => ArrayRef[L<Paws::Keyspaces::FieldDefinition>]

The names and types that define this type.


=head2 B<REQUIRED> KeyspaceArn => Str

The unique identifier of the keyspace that contains this type in the
format of an Amazon Resource Name (ARN).


=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace that contains this type.


=head2 LastModifiedTimestamp => Str

The timestamp that shows when this type was last modified.


=head2 MaxNestingDepth => Int

The level of nesting implemented for this type.


=head2 Status => Str

The status of this type.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"DELETING">, C<"RESTORING">
=head2 B<REQUIRED> TypeName => Str

The name of the type.


=head2 _request_id => Str


=cut

1;