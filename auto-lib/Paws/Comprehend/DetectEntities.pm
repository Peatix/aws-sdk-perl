
package Paws::Comprehend::DetectEntities;
  use Moose;
  has Bytes => (is => 'ro', isa => 'Str');
  has DocumentReaderConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentReaderConfig');
  has EndpointArn => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Text => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectEntities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::DetectEntitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectEntities - Arguments for method DetectEntities on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectEntities on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method DetectEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectEntities.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $DetectEntitiesResponse = $comprehend->DetectEntities(
      Bytes                => 'BlobSemiStructuredDocumentBlob',    # OPTIONAL
      DocumentReaderConfig => {
        DocumentReadAction => 'TEXTRACT_DETECT_DOCUMENT_TEXT'
        ,    # values: TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
        DocumentReadMode => 'SERVICE_DEFAULT'
        ,    # values: SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION; OPTIONAL
        FeatureTypes => [
          'TABLES', ...    # values: TABLES, FORMS
        ],    # min: 1, max: 2; OPTIONAL
      },    # OPTIONAL
      EndpointArn  => 'MyEntityRecognizerEndpointArn',    # OPTIONAL
      LanguageCode => 'en',                               # OPTIONAL
      Text         => 'MyCustomerInputString',            # OPTIONAL
    );

    # Results:
    my $Blocks           = $DetectEntitiesResponse->Blocks;
    my $DocumentMetadata = $DetectEntitiesResponse->DocumentMetadata;
    my $DocumentType     = $DetectEntitiesResponse->DocumentType;
    my $Entities         = $DetectEntitiesResponse->Entities;
    my $Errors           = $DetectEntitiesResponse->Errors;

    # Returns a L<Paws::Comprehend::DetectEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/DetectEntities>

=head1 ATTRIBUTES


=head2 Bytes => Str

This field applies only when you use a custom entity recognition model
that was trained with PDF annotations. For other cases, enter your text
input in the C<Text> field.

Use the C<Bytes> parameter to input a text, PDF, Word or image file.
Using a plain-text file in the C<Bytes> parameter is equivelent to
using the C<Text> parameter (the C<Entities> field in the response is
identical).

You can also use the C<Bytes> parameter to input an Amazon Textract
C<DetectDocumentText> or C<AnalyzeDocument> output file.

Provide the input document as a sequence of base64-encoded bytes. If
your code uses an Amazon Web Services SDK to detect entities, the SDK
may encode the document file bytes for you.

The maximum length of this field depends on the input document type.
For details, see Inputs for real-time custom analysis
(https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html)
in the Comprehend Developer Guide.

If you use the C<Bytes> parameter, do not use the C<Text> parameter.



=head2 DocumentReaderConfig => L<Paws::Comprehend::DocumentReaderConfig>

Provides configuration parameters to override the default actions for
extracting text from PDF documents and image files.



=head2 EndpointArn => Str

The Amazon Resource Name of an endpoint that is associated with a
custom entity recognition model. Provide an endpoint if you want to
detect entities by using your own custom model instead of the default
model that is used by Amazon Comprehend.

If you specify an endpoint, Amazon Comprehend uses the language of your
custom model, and it ignores any language code that you provide in your
request.

For information about endpoints, see Managing endpoints
(https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).



=head2 LanguageCode => Str

The language of the input documents. You can specify any of the primary
languages supported by Amazon Comprehend. If your request includes the
endpoint for a custom entity recognition model, Amazon Comprehend uses
the language of your custom model, and it ignores any language code
that you specify here.

All input documents must be in the same language.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">, C<"ar">, C<"hi">, C<"ja">, C<"ko">, C<"zh">, C<"zh-TW">

=head2 Text => Str

A UTF-8 text string. The maximum string size is 100 KB. If you enter
text using this parameter, do not use the C<Bytes> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectEntities in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

