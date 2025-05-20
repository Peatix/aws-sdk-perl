
package Paws::Support::DescribeSupportedLanguagesResponse;
  use Moose;
  has SupportedLanguages => (is => 'ro', isa => 'ArrayRef[Paws::Support::SupportedLanguage]', traits => ['NameInRequest'], request_name => 'supportedLanguages' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeSupportedLanguagesResponse

=head1 ATTRIBUTES


=head2 SupportedLanguages => ArrayRef[L<Paws::Support::SupportedLanguage>]

A JSON-formatted array that contains the available ISO 639-1 language
codes.


=head2 _request_id => Str


=cut

1;