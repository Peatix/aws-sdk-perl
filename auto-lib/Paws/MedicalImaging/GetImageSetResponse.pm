
package Paws::MedicalImaging::GetImageSetResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreId', required => 1);
  has DeletedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deletedAt');
  has ImageSetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetArn');
  has ImageSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetId', required => 1);
  has ImageSetState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetState', required => 1);
  has ImageSetWorkflowStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetWorkflowStatus');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has Overrides => (is => 'ro', isa => 'Paws::MedicalImaging::Overrides', traits => ['NameInRequest'], request_name => 'overrides');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has VersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::GetImageSetResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp when image set properties were created.


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.


=head2 DeletedAt => Str

The timestamp when the image set properties were deleted.


=head2 ImageSetArn => Str

The Amazon Resource Name (ARN) assigned to the image set.


=head2 B<REQUIRED> ImageSetId => Str

The image set identifier.


=head2 B<REQUIRED> ImageSetState => Str

The image set state.

Valid values are: C<"ACTIVE">, C<"LOCKED">, C<"DELETED">
=head2 ImageSetWorkflowStatus => Str

The image set workflow status.

Valid values are: C<"CREATED">, C<"COPIED">, C<"COPYING">, C<"COPYING_WITH_READ_ONLY_ACCESS">, C<"COPY_FAILED">, C<"UPDATING">, C<"UPDATED">, C<"UPDATE_FAILED">, C<"DELETING">, C<"DELETED">
=head2 Message => Str

The error message thrown if an image set action fails.


=head2 Overrides => L<Paws::MedicalImaging::Overrides>

This object contains the details of any overrides used while creating a
specific image set version. If an image set was copied or updated using
the C<force> flag, this object will contain the C<forced> flag.


=head2 UpdatedAt => Str

The timestamp when image set properties were updated.


=head2 B<REQUIRED> VersionId => Str

The image set version identifier.


=head2 _request_id => Str


=cut

