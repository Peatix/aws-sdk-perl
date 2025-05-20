
package Paws::Connect::CreateVocabulary;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');
  has VocabularyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVocabulary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vocabulary/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateVocabularyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateVocabulary - Arguments for method CreateVocabulary on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVocabulary on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateVocabulary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVocabulary.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateVocabularyResponse = $connect->CreateVocabulary(
      Content        => 'MyVocabularyContent',
      InstanceId     => 'MyInstanceId',
      LanguageCode   => 'ar-AE',
      VocabularyName => 'MyVocabularyName',
      ClientToken    => 'MyClientToken',         # OPTIONAL
      Tags           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $State         = $CreateVocabularyResponse->State;
    my $VocabularyArn = $CreateVocabularyResponse->VocabularyArn;
    my $VocabularyId  = $CreateVocabularyResponse->VocabularyId;

    # Returns a L<Paws::Connect::CreateVocabularyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateVocabulary>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).
If a create request is received more than once with same client token,
subsequent requests return the previous response without creating a
vocabulary again.



=head2 B<REQUIRED> Content => Str

The content of the custom vocabulary in plain-text format with a table
of values. Each row in the table represents a word or a phrase,
described with C<Phrase>, C<IPA>, C<SoundsLike>, and C<DisplayAs>
fields. Separate the fields with TAB characters. The size limit is
50KB. For more information, see Create a custom vocabulary using a
table
(https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table).



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> LanguageCode => Str

The language code of the vocabulary entries. For a list of languages
and their corresponding language codes, see What is Amazon Transcribe?
(https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html)

Valid values are: C<"ar-AE">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fr-CA">, C<"fr-FR">, C<"hi-IN">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"pt-BR">, C<"pt-PT">, C<"zh-CN">, C<"en-NZ">, C<"en-ZA">, C<"ca-ES">, C<"da-DK">, C<"fi-FI">, C<"id-ID">, C<"ms-MY">, C<"nl-NL">, C<"no-NO">, C<"pl-PL">, C<"sv-SE">, C<"tl-PH">

=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.



=head2 B<REQUIRED> VocabularyName => Str

A unique name of the custom vocabulary.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVocabulary in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

