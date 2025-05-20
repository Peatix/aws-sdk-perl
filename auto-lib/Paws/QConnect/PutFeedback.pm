
package Paws::QConnect::PutFeedback;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has ContentFeedback => (is => 'ro', isa => 'Paws::QConnect::ContentFeedbackData', traits => ['NameInRequest'], request_name => 'contentFeedback', required => 1);
  has TargetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetId', required => 1);
  has TargetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFeedback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/feedback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::PutFeedbackResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::PutFeedback - Arguments for method PutFeedback on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFeedback on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method PutFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFeedback.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $PutFeedbackResponse = $wisdom->PutFeedback(
      AssistantId     => 'MyUuidOrArn',
      ContentFeedback => {
        GenerativeContentFeedbackData => {
          Relevance => 'HELPFUL',    # values: HELPFUL, NOT_HELPFUL

        },    # OPTIONAL
      },
      TargetId   => 'MyUuid',
      TargetType => 'RECOMMENDATION',

    );

    # Results:
    my $AssistantArn    = $PutFeedbackResponse->AssistantArn;
    my $AssistantId     = $PutFeedbackResponse->AssistantId;
    my $ContentFeedback = $PutFeedbackResponse->ContentFeedback;
    my $TargetId        = $PutFeedbackResponse->TargetId;
    my $TargetType      = $PutFeedbackResponse->TargetType;

    # Returns a L<Paws::QConnect::PutFeedbackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/PutFeedback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant.



=head2 B<REQUIRED> ContentFeedback => L<Paws::QConnect::ContentFeedbackData>

Information about the feedback provided.



=head2 B<REQUIRED> TargetId => Str

The identifier of the feedback target.



=head2 B<REQUIRED> TargetType => Str

The type of the feedback target.

Valid values are: C<"RECOMMENDATION">, C<"RESULT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFeedback in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

