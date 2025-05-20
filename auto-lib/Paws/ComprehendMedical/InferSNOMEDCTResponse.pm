
package Paws::ComprehendMedical::InferSNOMEDCTResponse;
  use Moose;
  has Characters => (is => 'ro', isa => 'Paws::ComprehendMedical::Characters');
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::ComprehendMedical::SNOMEDCTEntity]', required => 1);
  has ModelVersion => (is => 'ro', isa => 'Str');
  has PaginationToken => (is => 'ro', isa => 'Str');
  has SNOMEDCTDetails => (is => 'ro', isa => 'Paws::ComprehendMedical::SNOMEDCTDetails');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::InferSNOMEDCTResponse

=head1 ATTRIBUTES


=head2 Characters => L<Paws::ComprehendMedical::Characters>

The number of characters in the input request documentation.


=head2 B<REQUIRED> Entities => ArrayRef[L<Paws::ComprehendMedical::SNOMEDCTEntity>]

The collection of medical concept entities extracted from the input
text and their associated information. For each entity, the response
provides the entity text, the entity category, where the entity text
begins and ends, and the level of confidence that Amazon Comprehend
Medical has in the detection and analysis. Attributes and traits of the
entity are also returned.


=head2 ModelVersion => Str

The version of the model used to analyze the documents, in the format
n.n.n You can use this information to track the model used for a
particular batch of documents.


=head2 PaginationToken => Str

If the result of the request is truncated, the pagination token can be
used to fetch the next page of entities.


=head2 SNOMEDCTDetails => L<Paws::ComprehendMedical::SNOMEDCTDetails>

The details of the SNOMED-CT revision, including the edition, language,
and version date.


=head2 _request_id => Str


=cut

1;