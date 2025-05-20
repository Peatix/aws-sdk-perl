
package Paws::Comprehend::ClassifyDocument;
  use Moose;
  has Bytes => (is => 'ro', isa => 'Str');
  has DocumentReaderConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentReaderConfig');
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has Text => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ClassifyDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::ClassifyDocumentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ClassifyDocument - Arguments for method ClassifyDocument on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ClassifyDocument on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ClassifyDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ClassifyDocument.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ClassifyDocumentResponse = $comprehend->ClassifyDocument(
      EndpointArn          => 'MyDocumentClassifierEndpointArn',
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
      Text => 'MyCustomerInputString',    # OPTIONAL
    );

    # Results:
    my $Classes          = $ClassifyDocumentResponse->Classes;
    my $DocumentMetadata = $ClassifyDocumentResponse->DocumentMetadata;
    my $DocumentType     = $ClassifyDocumentResponse->DocumentType;
    my $Errors           = $ClassifyDocumentResponse->Errors;
    my $Labels           = $ClassifyDocumentResponse->Labels;
    my $Warnings         = $ClassifyDocumentResponse->Warnings;

    # Returns a L<Paws::Comprehend::ClassifyDocumentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ClassifyDocument>

=head1 ATTRIBUTES


=head2 Bytes => Str

Use the C<Bytes> parameter to input a text, PDF, Word or image file.

When you classify a document using a custom model, you can also use the
C<Bytes> parameter to input an Amazon Textract C<DetectDocumentText> or
C<AnalyzeDocument> output file.

To classify a document using the prompt safety classifier, use the
C<Text> parameter for input.

Provide the input document as a sequence of base64-encoded bytes. If
your code uses an Amazon Web Services SDK to classify documents, the
SDK may encode the document file bytes for you.

The maximum length of this field depends on the input document type.
For details, see Inputs for real-time custom analysis
(https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html)
in the Comprehend Developer Guide.

If you use the C<Bytes> parameter, do not use the C<Text> parameter.



=head2 DocumentReaderConfig => L<Paws::Comprehend::DocumentReaderConfig>

Provides configuration parameters to override the default actions for
extracting text from PDF documents and image files.



=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Number (ARN) of the endpoint.

For prompt safety classification, Amazon Comprehend provides the
endpoint ARN. For more information about prompt safety classifiers, see
Prompt safety classification
(https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification)
in the I<Amazon Comprehend Developer Guide>

For custom classification, you create an endpoint for your custom
model. For more information, see Using Amazon Comprehend endpoints
(https://docs.aws.amazon.com/comprehend/latest/dg/using-endpoints.html).



=head2 Text => Str

The document text to be analyzed. If you enter text using this
parameter, do not use the C<Bytes> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ClassifyDocument in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

