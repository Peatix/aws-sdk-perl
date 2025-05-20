
package Paws::Transcribe::ListLanguageModels;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLanguageModels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::ListLanguageModelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListLanguageModels - Arguments for method ListLanguageModels on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLanguageModels on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method ListLanguageModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLanguageModels.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $ListLanguageModelsResponse = $transcribe->ListLanguageModels(
      MaxResults   => 1,                # OPTIONAL
      NameContains => 'MyModelName',    # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      StatusEquals => 'IN_PROGRESS',    # OPTIONAL
    );

    # Results:
    my $Models    = $ListLanguageModelsResponse->Models;
    my $NextToken = $ListLanguageModelsResponse->NextToken;

    # Returns a L<Paws::Transcribe::ListLanguageModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/ListLanguageModels>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of custom language models to return in each page of
results. If there are fewer results than the value that you specify,
only the actual results are returned. If you do not specify a value, a
default of 5 is used.



=head2 NameContains => Str

Returns only the custom language models that contain the specified
string. The search is not case sensitive.



=head2 NextToken => Str

If your C<ListLanguageModels> request returns more results than can be
displayed, C<NextToken> is displayed in the response with an associated
string. To get the next page of results, copy this string and repeat
your request, including C<NextToken> with the value of the copied
string. Repeat as needed to view all your results.



=head2 StatusEquals => Str

Returns only custom language models with the specified status. Language
models are ordered by creation date, with the newest model first. If
you do not include C<StatusEquals>, all custom language models are
returned.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLanguageModels in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

