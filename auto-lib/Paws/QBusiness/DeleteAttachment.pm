
package Paws::QBusiness::DeleteAttachment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attachmentId', required => 1);
  has ConversationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'conversationId', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/conversations/{conversationId}/attachments/{attachmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::DeleteAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::DeleteAttachment - Arguments for method DeleteAttachment on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAttachment on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method DeleteAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAttachment.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $DeleteAttachmentResponse = $qbusiness->DeleteAttachment(
      ApplicationId  => 'MyApplicationId',
      AttachmentId   => 'MyAttachmentId',
      ConversationId => 'MyConversationId',
      UserId         => 'MyUserId',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/DeleteAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the Amazon Q Business application
environment.



=head2 B<REQUIRED> AttachmentId => Str

The unique identifier for the attachment.



=head2 B<REQUIRED> ConversationId => Str

The unique identifier of the conversation.



=head2 UserId => Str

The unique identifier of the user involved in the conversation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAttachment in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

