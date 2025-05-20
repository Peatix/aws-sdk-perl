
package Paws::MedicalImaging::SearchImageSetsResponse;
  use Moose;
  has ImageSetsMetadataSummaries => (is => 'ro', isa => 'ArrayRef[Paws::MedicalImaging::ImageSetsMetadataSummary]', traits => ['NameInRequest'], request_name => 'imageSetsMetadataSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sort => (is => 'ro', isa => 'Paws::MedicalImaging::Sort', traits => ['NameInRequest'], request_name => 'sort');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::SearchImageSetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageSetsMetadataSummaries => ArrayRef[L<Paws::MedicalImaging::ImageSetsMetadataSummary>]

The model containing the image set results.


=head2 NextToken => Str

The token for pagination results.


=head2 Sort => L<Paws::MedicalImaging::Sort>

The sort order for image set search results.


=head2 _request_id => Str


=cut

