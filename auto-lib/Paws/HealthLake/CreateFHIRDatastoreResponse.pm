
package Paws::HealthLake::CreateFHIRDatastoreResponse;
  use Moose;
  has DatastoreArn => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreEndpoint => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreId => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::CreateFHIRDatastoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreArn => Str

The data store ARN is generated during the creation of the data store
and can be found in the output from the initial data store creation
call.


=head2 B<REQUIRED> DatastoreEndpoint => Str

The AWS endpoint for the created data store.


=head2 B<REQUIRED> DatastoreId => Str

The AWS-generated data store id. This id is in the output from the
initial data store creation call.


=head2 B<REQUIRED> DatastoreStatus => Str

The status of the FHIR data store.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"CREATE_FAILED">
=head2 _request_id => Str


=cut

1;