
package Paws::Connect::CreateVocabularyResponse;
  use Moose;
  has State => (is => 'ro', isa => 'Str', required => 1);
  has VocabularyArn => (is => 'ro', isa => 'Str', required => 1);
  has VocabularyId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateVocabularyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> State => Str

The current state of the custom vocabulary.

Valid values are: C<"CREATION_IN_PROGRESS">, C<"ACTIVE">, C<"CREATION_FAILED">, C<"DELETE_IN_PROGRESS">
=head2 B<REQUIRED> VocabularyArn => Str

The Amazon Resource Name (ARN) of the custom vocabulary.


=head2 B<REQUIRED> VocabularyId => Str

The identifier of the custom vocabulary.


=head2 _request_id => Str


=cut

