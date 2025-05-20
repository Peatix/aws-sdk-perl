
package Paws::MedicalImaging::UpdateImageSetMetadataResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreId', required => 1);
  has ImageSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetId', required => 1);
  has ImageSetState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetState', required => 1);
  has ImageSetWorkflowStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetWorkflowStatus');
  has LatestVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'latestVersionId', required => 1);
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::UpdateImageSetMetadataResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp when image set metadata was created.


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.


=head2 B<REQUIRED> ImageSetId => Str

The image set identifier.


=head2 B<REQUIRED> ImageSetState => Str

The image set state.

Valid values are: C<"ACTIVE">, C<"LOCKED">, C<"DELETED">
=head2 ImageSetWorkflowStatus => Str

The image set workflow status.

Valid values are: C<"CREATED">, C<"COPIED">, C<"COPYING">, C<"COPYING_WITH_READ_ONLY_ACCESS">, C<"COPY_FAILED">, C<"UPDATING">, C<"UPDATED">, C<"UPDATE_FAILED">, C<"DELETING">, C<"DELETED">
=head2 B<REQUIRED> LatestVersionId => Str

The latest image set version identifier.


=head2 Message => Str

The error message thrown if an update image set metadata action fails.


=head2 UpdatedAt => Str

The timestamp when image set metadata was updated.


=head2 _request_id => Str


=cut

