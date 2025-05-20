
package Paws::HealthLake::DescribeFHIRDatastoreResponse;
  use Moose;
  has DatastoreProperties => (is => 'ro', isa => 'Paws::HealthLake::DatastoreProperties', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DescribeFHIRDatastoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreProperties => L<Paws::HealthLake::DatastoreProperties>

All properties associated with a data store, including the data store
ID, data store ARN, data store name, data store status, when the data
store was created, data store type version, and the data store's
endpoint.


=head2 _request_id => Str


=cut

1;