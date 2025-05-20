
package Paws::Transcribe::ListMedicalVocabulariesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Vocabularies => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::VocabularyInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListMedicalVocabulariesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If C<NextToken> is present in your response, it indicates that not all
results are displayed. To view the next set of results, copy the string
associated with the C<NextToken> parameter in your results output, then
run your request again including C<NextToken> with the value of the
copied string. Repeat as needed to view all your results.


=head2 Status => Str

Lists all custom medical vocabularies that have the status specified in
your request. Custom vocabularies are ordered by creation date, with
the newest vocabulary first.

Valid values are: C<"PENDING">, C<"READY">, C<"FAILED">
=head2 Vocabularies => ArrayRef[L<Paws::Transcribe::VocabularyInfo>]

Provides information about the custom medical vocabularies that match
the criteria specified in your request.


=head2 _request_id => Str


=cut

1;