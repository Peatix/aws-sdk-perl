
package Paws::Transcribe::CreateLanguageModelResponse;
  use Moose;
  has BaseModelName => (is => 'ro', isa => 'Str');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Transcribe::InputDataConfig');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has ModelStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateLanguageModelResponse

=head1 ATTRIBUTES


=head2 BaseModelName => Str

The Amazon Transcribe standard language model, or base model, you
specified when creating your custom language model.

Valid values are: C<"NarrowBand">, C<"WideBand">
=head2 InputDataConfig => L<Paws::Transcribe::InputDataConfig>

Lists your data access role ARN (Amazon Resource Name) and the Amazon
S3 locations you provided for your training (C<S3Uri>) and tuning
(C<TuningDataS3Uri>) data.


=head2 LanguageCode => Str

The language code you selected for your custom language model.

Valid values are: C<"en-US">, C<"hi-IN">, C<"es-US">, C<"en-GB">, C<"en-AU">, C<"de-DE">, C<"ja-JP">
=head2 ModelName => Str

The name of your custom language model.


=head2 ModelStatus => Str

The status of your custom language model. When the status displays as
C<COMPLETED>, your model is ready to use.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">
=head2 _request_id => Str


=cut

1;