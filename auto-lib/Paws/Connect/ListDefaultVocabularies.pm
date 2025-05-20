
package Paws::Connect::ListDefaultVocabularies;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDefaultVocabularies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/default-vocabulary-summary/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListDefaultVocabulariesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListDefaultVocabularies - Arguments for method ListDefaultVocabularies on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDefaultVocabularies on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListDefaultVocabularies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDefaultVocabularies.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListDefaultVocabulariesResponse = $connect->ListDefaultVocabularies(
      InstanceId   => 'MyInstanceId',
      LanguageCode => 'ar-AE',                    # OPTIONAL
      MaxResults   => 1,                          # OPTIONAL
      NextToken    => 'MyVocabularyNextToken',    # OPTIONAL
    );

    # Results:
    my $DefaultVocabularyList =
      $ListDefaultVocabulariesResponse->DefaultVocabularyList;
    my $NextToken = $ListDefaultVocabulariesResponse->NextToken;

    # Returns a L<Paws::Connect::ListDefaultVocabulariesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListDefaultVocabularies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 LanguageCode => Str

The language code of the vocabulary entries. For a list of languages
and their corresponding language codes, see What is Amazon Transcribe?
(https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html)

Valid values are: C<"ar-AE">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fr-CA">, C<"fr-FR">, C<"hi-IN">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"pt-BR">, C<"pt-PT">, C<"zh-CN">, C<"en-NZ">, C<"en-ZA">, C<"ca-ES">, C<"da-DK">, C<"fi-FI">, C<"id-ID">, C<"ms-MY">, C<"nl-NL">, C<"no-NO">, C<"pl-PL">, C<"sv-SE">, C<"tl-PH">

=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDefaultVocabularies in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

