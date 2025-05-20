
package Paws::QBusiness::ListMessages;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ConversationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'conversationId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMessages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/conversations/{conversationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ListMessagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListMessages - Arguments for method ListMessages on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMessages on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method ListMessages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMessages.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ListMessagesResponse = $qbusiness->ListMessages(
      ApplicationId  => 'MyApplicationId',
      ConversationId => 'MyConversationId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
      UserId         => 'MyUserId',           # OPTIONAL
    );

    # Results:
    my $Messages  = $ListMessagesResponse->Messages;
    my $NextToken = $ListMessagesResponse->NextToken;

    # Returns a L<Paws::QBusiness::ListMessagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/ListMessages>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier for the Amazon Q Business application.



=head2 B<REQUIRED> ConversationId => Str

The identifier of the Amazon Q Business web experience conversation.



=head2 MaxResults => Int

The maximum number of messages to return.



=head2 NextToken => Str

If the number of messages returned exceeds C<maxResults>, Amazon Q
Business returns a next token as a pagination token to retrieve the
next set of messages.



=head2 UserId => Str

The identifier of the user involved in the Amazon Q Business web
experience conversation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMessages in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

