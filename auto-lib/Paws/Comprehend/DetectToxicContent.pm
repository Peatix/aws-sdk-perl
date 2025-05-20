
package Paws::Comprehend::DetectToxicContent;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TextSegments => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::TextSegment]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectToxicContent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::DetectToxicContentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectToxicContent - Arguments for method DetectToxicContent on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectToxicContent on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method DetectToxicContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectToxicContent.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $DetectToxicContentResponse = $comprehend->DetectToxicContent(
      LanguageCode => 'en',
      TextSegments => [
        {
          Text => 'MyCustomerInputString',    # min: 1

        },
        ...
      ],

    );

    # Results:
    my $ResultList = $DetectToxicContentResponse->ResultList;

    # Returns a L<Paws::Comprehend::DetectToxicContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/DetectToxicContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language of the input text. Currently, English is the only
supported language.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">, C<"ar">, C<"hi">, C<"ja">, C<"ko">, C<"zh">, C<"zh-TW">

=head2 B<REQUIRED> TextSegments => ArrayRef[L<Paws::Comprehend::TextSegment>]

A list of up to 10 text strings. Each string has a maximum size of 1
KB, and the maximum size of the list is 10 KB.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectToxicContent in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

