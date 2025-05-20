
package Paws::VerifiedPermissions::GetSchemaOutput;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate' , required => 1);
  has Namespaces => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'namespaces' );
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has Schema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schema' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::GetSchemaOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedDate => Str

The date and time that the schema was originally created.


=head2 B<REQUIRED> LastUpdatedDate => Str

The date and time that the schema was most recently updated.


=head2 Namespaces => ArrayRef[Str|Undef]

The namespaces of the entities referenced by this schema.


=head2 B<REQUIRED> PolicyStoreId => Str

The ID of the policy store that contains the schema.


=head2 B<REQUIRED> Schema => Str

The body of the schema, written in Cedar schema JSON.


=head2 _request_id => Str


=cut

1;