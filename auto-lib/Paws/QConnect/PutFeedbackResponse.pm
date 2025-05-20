
package Paws::QConnect::PutFeedbackResponse;
  use Moose;
  has AssistantArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assistantArn', required => 1);
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assistantId', required => 1);
  has ContentFeedback => (is => 'ro', isa => 'Paws::QConnect::ContentFeedbackData', traits => ['NameInRequest'], request_name => 'contentFeedback', required => 1);
  has TargetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetId', required => 1);
  has TargetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::PutFeedbackResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantArn => Str

The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant.


=head2 B<REQUIRED> ContentFeedback => L<Paws::QConnect::ContentFeedbackData>

Information about the feedback provided.


=head2 B<REQUIRED> TargetId => Str

The identifier of the feedback target.


=head2 B<REQUIRED> TargetType => Str

The type of the feedback target.

Valid values are: C<"RECOMMENDATION">, C<"RESULT">
=head2 _request_id => Str


=cut

