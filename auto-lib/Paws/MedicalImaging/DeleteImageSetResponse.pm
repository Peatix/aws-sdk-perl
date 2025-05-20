
package Paws::MedicalImaging::DeleteImageSetResponse;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreId', required => 1);
  has ImageSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetId', required => 1);
  has ImageSetState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetState', required => 1);
  has ImageSetWorkflowStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageSetWorkflowStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::DeleteImageSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.


=head2 B<REQUIRED> ImageSetId => Str

The image set identifier.


=head2 B<REQUIRED> ImageSetState => Str

The image set state.

Valid values are: C<"ACTIVE">, C<"LOCKED">, C<"DELETED">
=head2 B<REQUIRED> ImageSetWorkflowStatus => Str

The image set workflow status.

Valid values are: C<"CREATED">, C<"COPIED">, C<"COPYING">, C<"COPYING_WITH_READ_ONLY_ACCESS">, C<"COPY_FAILED">, C<"UPDATING">, C<"UPDATED">, C<"UPDATE_FAILED">, C<"DELETING">, C<"DELETED">
=head2 _request_id => Str


=cut

