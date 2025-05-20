
package Paws::Translate::TranslateDocument;
  use Moose;
  has Document => (is => 'ro', isa => 'Paws::Translate::Document', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::Translate::TranslationSettings');
  has SourceLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TargetLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TerminologyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TranslateDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::TranslateDocumentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TranslateDocument - Arguments for method TranslateDocument on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TranslateDocument on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method TranslateDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TranslateDocument.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $TranslateDocumentResponse = $translate->TranslateDocument(
      Document => {
        Content     => 'BlobDocumentContent',    # max: 102400
        ContentType => 'MyContentType',          # max: 256

      },
      SourceLanguageCode => 'MyLanguageCodeString',
      TargetLanguageCode => 'MyLanguageCodeString',
      Settings           => {
        Brevity   => 'ON',        # values: ON; OPTIONAL
        Formality => 'FORMAL',    # values: FORMAL, INFORMAL; OPTIONAL
        Profanity => 'MASK',      # values: MASK; OPTIONAL
      },    # OPTIONAL
      TerminologyNames => [
        'MyResourceName', ...    # min: 1, max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $AppliedSettings      = $TranslateDocumentResponse->AppliedSettings;
    my $AppliedTerminologies = $TranslateDocumentResponse->AppliedTerminologies;
    my $SourceLanguageCode   = $TranslateDocumentResponse->SourceLanguageCode;
    my $TargetLanguageCode   = $TranslateDocumentResponse->TargetLanguageCode;
    my $TranslatedDocument   = $TranslateDocumentResponse->TranslatedDocument;

    # Returns a L<Paws::Translate::TranslateDocumentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/TranslateDocument>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Document => L<Paws::Translate::Document>

The content and content type for the document to be translated. The
document size must not exceed 100 KB.



=head2 Settings => L<Paws::Translate::TranslationSettings>

Settings to configure your translation output. You can configure the
following options:

=over

=item *

Brevity: not supported.

=item *

Formality: sets the formality level of the output text.

=item *

Profanity: masks profane words and phrases in your translation output.

=back




=head2 B<REQUIRED> SourceLanguageCode => Str

The language code for the language of the source text. For a list of
supported language codes, see Supported languages
(https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html).

To have Amazon Translate determine the source language of your text,
you can specify C<auto> in the C<SourceLanguageCode> field. If you
specify C<auto>, Amazon Translate will call Amazon Comprehend
(https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html)
to determine the source language.

If you specify C<auto>, you must send the C<TranslateDocument> request
in a region that supports Amazon Comprehend. Otherwise, the request
returns an error indicating that autodetect is not supported.



=head2 B<REQUIRED> TargetLanguageCode => Str

The language code requested for the translated document. For a list of
supported language codes, see Supported languages
(https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html).



=head2 TerminologyNames => ArrayRef[Str|Undef]

The name of a terminology list file to add to the translation job. This
file provides source terms and the desired translation for each term. A
terminology list can contain a maximum of 256 terms. You can use one
custom terminology resource in your translation request.

Use the ListTerminologies operation to get the available terminology
lists.

For more information about custom terminology lists, see Custom
terminology
(https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TranslateDocument in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

