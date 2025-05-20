
package Paws::MedicalImaging::ListImageSetVersionsResponse;
  use Moose;
  has ImageSetPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::MedicalImaging::ImageSetProperties]', traits => ['NameInRequest'], request_name => 'imageSetPropertiesList', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::ListImageSetVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageSetPropertiesList => ArrayRef[L<Paws::MedicalImaging::ImageSetProperties>]

Lists all properties associated with an image set.


=head2 NextToken => Str

The pagination token used to retrieve the list of image set versions on
the next page.


=head2 _request_id => Str


=cut

