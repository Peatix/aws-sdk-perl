
package Paws::Translate::TranslateText;
  use Moose;
  has Settings => (is => 'ro', isa => 'Paws::Translate::TranslationSettings');
  has SourceLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TargetLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TerminologyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TranslateText');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::TranslateTextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TranslateText - Arguments for method TranslateText on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TranslateText on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method TranslateText.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TranslateText.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $TranslateTextResponse = $translate->TranslateText(
      SourceLanguageCode => 'MyLanguageCodeString',
      TargetLanguageCode => 'MyLanguageCodeString',
      Text               => 'MyBoundedLengthString',
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
    my $AppliedSettings      = $TranslateTextResponse->AppliedSettings;
    my $AppliedTerminologies = $TranslateTextResponse->AppliedTerminologies;
    my $SourceLanguageCode   = $TranslateTextResponse->SourceLanguageCode;
    my $TargetLanguageCode   = $TranslateTextResponse->TargetLanguageCode;
    my $TranslatedText       = $TranslateTextResponse->TranslatedText;

    # Returns a L<Paws::Translate::TranslateTextResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/TranslateText>

=head1 ATTRIBUTES


=head2 Settings => L<Paws::Translate::TranslationSettings>

Settings to configure your translation output. You can configure the
following options:

=over

=item *

Brevity: reduces the length of the translated output for most
translations.

=item *

Formality: sets the formality level of the output text.

=item *

Profanity: masks profane words and phrases in your translation output.

=back




=head2 B<REQUIRED> SourceLanguageCode => Str

The language code for the language of the source text. For a list of
language codes, see Supported languages
(https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html).

To have Amazon Translate determine the source language of your text,
you can specify C<auto> in the C<SourceLanguageCode> field. If you
specify C<auto>, Amazon Translate will call Amazon Comprehend
(https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html)
to determine the source language.

If you specify C<auto>, you must send the C<TranslateText> request in a
region that supports Amazon Comprehend. Otherwise, the request returns
an error indicating that autodetect is not supported.



=head2 B<REQUIRED> TargetLanguageCode => Str

The language code requested for the language of the target text. For a
list of language codes, see Supported languages
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



=head2 B<REQUIRED> Text => Str

The text to translate. The text string can be a maximum of 10,000 bytes
long. Depending on your character set, this may be fewer than 10,000
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TranslateText in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

