
package Paws::QConnect::ListMessages;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMessages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/sessions/{sessionId}/messages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::ListMessagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListMessages - Arguments for method ListMessages on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMessages on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method ListMessages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMessages.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $ListMessagesResponse = $wisdom->ListMessages(
      AssistantId => 'MyUuidOrArn',
      SessionId   => 'MyUuidOrArn',
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Messages  = $ListMessagesResponse->Messages;
    my $NextToken = $ListMessagesResponse->NextToken;

    # Returns a L<Paws::QConnect::ListMessagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/ListMessages>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> SessionId => Str

The identifier of the Amazon Q in Connect session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMessages in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

