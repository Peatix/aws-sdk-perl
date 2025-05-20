
package Paws::Transcribe::DescribeLanguageModelResponse;
  use Moose;
  has LanguageModel => (is => 'ro', isa => 'Paws::Transcribe::LanguageModel');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::DescribeLanguageModelResponse

=head1 ATTRIBUTES


=head2 LanguageModel => L<Paws::Transcribe::LanguageModel>

Provides information about the specified custom language model.

This parameter also shows if the base language model you used to create
your custom language model has been updated. If Amazon Transcribe has
updated the base model, you can create a new custom language model
using the updated base model.

If you tried to create a new custom language model and the request
wasn't successful, you can use this C<DescribeLanguageModel> to help
identify the reason for this failure.


=head2 _request_id => Str


=cut

1;