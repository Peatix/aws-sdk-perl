
package Paws::MedicalImaging::GetDatastoreResponse;
  use Moose;
  has DatastoreProperties => (is => 'ro', isa => 'Paws::MedicalImaging::DatastoreProperties', traits => ['NameInRequest'], request_name => 'datastoreProperties', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::GetDatastoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreProperties => L<Paws::MedicalImaging::DatastoreProperties>

The data store properties.


=head2 _request_id => Str


=cut

