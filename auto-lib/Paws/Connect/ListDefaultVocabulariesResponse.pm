
package Paws::Connect::ListDefaultVocabulariesResponse;
  use Moose;
  has DefaultVocabularyList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::DefaultVocabulary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListDefaultVocabulariesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultVocabularyList => ArrayRef[L<Paws::Connect::DefaultVocabulary>]

A list of default vocabularies.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

