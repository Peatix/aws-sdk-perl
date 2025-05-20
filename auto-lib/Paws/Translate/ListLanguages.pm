
package Paws::Translate::ListLanguages;
  use Moose;
  has DisplayLanguageCode => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLanguages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::ListLanguagesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListLanguages - Arguments for method ListLanguages on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLanguages on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method ListLanguages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLanguages.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $ListLanguagesResponse = $translate->ListLanguages(
      DisplayLanguageCode => 'de',             # OPTIONAL
      MaxResults          => 1,                # OPTIONAL
      NextToken           => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DisplayLanguageCode = $ListLanguagesResponse->DisplayLanguageCode;
    my $Languages           = $ListLanguagesResponse->Languages;
    my $NextToken           = $ListLanguagesResponse->NextToken;

    # Returns a L<Paws::Translate::ListLanguagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/ListLanguages>

=head1 ATTRIBUTES


=head2 DisplayLanguageCode => Str

The language code for the language to use to display the language names
in the response. The language code is C<en> by default.

Valid values are: C<"de">, C<"en">, C<"es">, C<"fr">, C<"it">, C<"ja">, C<"ko">, C<"pt">, C<"zh">, C<"zh-TW">

=head2 MaxResults => Int

The maximum number of results to return in each response.



=head2 NextToken => Str

Include the NextToken value to fetch the next group of supported
languages.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLanguages in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

