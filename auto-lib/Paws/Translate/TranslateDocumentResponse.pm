
package Paws::Translate::TranslateDocumentResponse;
  use Moose;
  has AppliedSettings => (is => 'ro', isa => 'Paws::Translate::TranslationSettings');
  has AppliedTerminologies => (is => 'ro', isa => 'ArrayRef[Paws::Translate::AppliedTerminology]');
  has SourceLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TargetLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TranslatedDocument => (is => 'ro', isa => 'Paws::Translate::TranslatedDocument', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TranslateDocumentResponse

=head1 ATTRIBUTES


=head2 AppliedSettings => L<Paws::Translate::TranslationSettings>




=head2 AppliedTerminologies => ArrayRef[L<Paws::Translate::AppliedTerminology>]

The names of the custom terminologies applied to the input text by
Amazon Translate to produce the translated text document.


=head2 B<REQUIRED> SourceLanguageCode => Str

The language code of the source document.


=head2 B<REQUIRED> TargetLanguageCode => Str

The language code of the translated document.


=head2 B<REQUIRED> TranslatedDocument => L<Paws::Translate::TranslatedDocument>

The document containing the translated content. The document format
matches the source document format.


=head2 _request_id => Str


=cut

1;