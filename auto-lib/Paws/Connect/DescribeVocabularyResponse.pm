
package Paws::Connect::DescribeVocabularyResponse;
  use Moose;
  has Vocabulary => (is => 'ro', isa => 'Paws::Connect::Vocabulary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeVocabularyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Vocabulary => L<Paws::Connect::Vocabulary>

A list of specific words that you want Contact Lens for Amazon Connect
to recognize in your audio input. They are generally domain-specific
words and phrases, words that Contact Lens is not recognizing, or
proper nouns.


=head2 _request_id => Str


=cut

