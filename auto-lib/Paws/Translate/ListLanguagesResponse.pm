
package Paws::Translate::ListLanguagesResponse;
  use Moose;
  has DisplayLanguageCode => (is => 'ro', isa => 'Str');
  has Languages => (is => 'ro', isa => 'ArrayRef[Paws::Translate::Language]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListLanguagesResponse

=head1 ATTRIBUTES


=head2 DisplayLanguageCode => Str

The language code passed in with the request.

Valid values are: C<"de">, C<"en">, C<"es">, C<"fr">, C<"it">, C<"ja">, C<"ko">, C<"pt">, C<"zh">, C<"zh-TW">
=head2 Languages => ArrayRef[L<Paws::Translate::Language>]

The list of supported languages.


=head2 NextToken => Str

If the response does not include all remaining results, use the
NextToken in the next request to fetch the next group of supported
languages.


=head2 _request_id => Str


=cut

1;