
package Paws::MedicalImaging::DeleteDatastoreResponse;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreId', required => 1);
  has DatastoreStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::DeleteDatastoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.


=head2 B<REQUIRED> DatastoreStatus => Str

The data store status.

Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">
=head2 _request_id => Str


=cut

