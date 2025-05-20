
package Paws::QConnect::ListAIGuardrails;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAIGuardrails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/aiguardrails');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::ListAIGuardrailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListAIGuardrails - Arguments for method ListAIGuardrails on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAIGuardrails on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method ListAIGuardrails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAIGuardrails.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $ListAIGuardrailsResponse = $wisdom->ListAIGuardrails(
      AssistantId => 'MyUuidOrArn',
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AiGuardrailSummaries = $ListAIGuardrailsResponse->AiGuardrailSummaries;
    my $NextToken            = $ListAIGuardrailsResponse->NextToken;

    # Returns a L<Paws::QConnect::ListAIGuardrailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/ListAIGuardrails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAIGuardrails in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

