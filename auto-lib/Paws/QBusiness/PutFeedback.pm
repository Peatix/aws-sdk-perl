
package Paws::QBusiness::PutFeedback;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ConversationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'conversationId', required => 1);
  has MessageCopiedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'messageCopiedAt');
  has MessageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageId', required => 1);
  has MessageUsefulness => (is => 'ro', isa => 'Paws::QBusiness::MessageUsefulnessFeedback', traits => ['NameInRequest'], request_name => 'messageUsefulness');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFeedback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/feedback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::PutFeedback - Arguments for method PutFeedback on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFeedback on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method PutFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFeedback.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    $qbusiness->PutFeedback(
      ApplicationId     => 'MyApplicationId',
      ConversationId    => 'MyConversationId',
      MessageId         => 'MySystemMessageId',
      MessageCopiedAt   => '1970-01-01T01:00:00',    # OPTIONAL
      MessageUsefulness => {
        SubmittedAt => '1970-01-01T01:00:00',
        Usefulness  => 'USEFUL',                # values: USEFUL, NOT_USEFUL
        Comment     => 'MyMessageUsefulnessComment',    # max: 1000; OPTIONAL
        Reason      => 'NOT_FACTUALLY_CORRECT'
        , # values: NOT_FACTUALLY_CORRECT, HARMFUL_OR_UNSAFE, INCORRECT_OR_MISSING_SOURCES, NOT_HELPFUL, FACTUALLY_CORRECT, COMPLETE, RELEVANT_SOURCES, HELPFUL, NOT_BASED_ON_DOCUMENTS, NOT_COMPLETE, NOT_CONCISE, OTHER; OPTIONAL
      },    # OPTIONAL
      UserId => 'MyUserId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/PutFeedback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application associated with the feedback.



=head2 B<REQUIRED> ConversationId => Str

The identifier of the conversation the feedback is attached to.



=head2 MessageCopiedAt => Str

The timestamp for when the feedback was recorded.



=head2 B<REQUIRED> MessageId => Str

The identifier of the chat message that the feedback was given for.



=head2 MessageUsefulness => L<Paws::QBusiness::MessageUsefulnessFeedback>

The feedback usefulness value given by the user to the chat message.



=head2 UserId => Str

The identifier of the user giving the feedback.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFeedback in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

