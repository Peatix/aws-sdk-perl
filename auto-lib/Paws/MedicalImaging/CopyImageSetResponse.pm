
package Paws::MedicalImaging::CopyImageSetResponse;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreId', required => 1);
  has DestinationImageSetProperties => (is => 'ro', isa => 'Paws::MedicalImaging::CopyDestinationImageSetProperties', traits => ['NameInRequest'], request_name => 'destinationImageSetProperties', required => 1);
  has SourceImageSetProperties => (is => 'ro', isa => 'Paws::MedicalImaging::CopySourceImageSetProperties', traits => ['NameInRequest'], request_name => 'sourceImageSetProperties', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::CopyImageSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.


=head2 B<REQUIRED> DestinationImageSetProperties => L<Paws::MedicalImaging::CopyDestinationImageSetProperties>

The properties of the destination image set.


=head2 B<REQUIRED> SourceImageSetProperties => L<Paws::MedicalImaging::CopySourceImageSetProperties>

The properties of the source image set.


=head2 _request_id => Str


=cut

