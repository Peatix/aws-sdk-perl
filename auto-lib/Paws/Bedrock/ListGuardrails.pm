
package Paws::Bedrock::ListGuardrails;
  use Moose;
  has GuardrailIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'guardrailIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGuardrails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/guardrails');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListGuardrailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListGuardrails - Arguments for method ListGuardrails on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGuardrails on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListGuardrails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGuardrails.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListGuardrailsResponse = $bedrock->ListGuardrails(
      GuardrailIdentifier => 'MyGuardrailIdentifier',    # OPTIONAL
      MaxResults          => 1,                          # OPTIONAL
      NextToken           => 'MyPaginationToken',        # OPTIONAL
    );

    # Results:
    my $Guardrails = $ListGuardrailsResponse->Guardrails;
    my $NextToken  = $ListGuardrailsResponse->NextToken;

    # Returns a L<Paws::Bedrock::ListGuardrailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListGuardrails>

=head1 ATTRIBUTES


=head2 GuardrailIdentifier => Str

The unique identifier of the guardrail. This can be an ID or the ARN.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

If there are more results than were returned in the response, the
response returns a C<nextToken> that you can send in another
C<ListGuardrails> request to see the next batch of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGuardrails in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

