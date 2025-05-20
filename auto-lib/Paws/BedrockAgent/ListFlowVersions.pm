
package Paws::BedrockAgent::ListFlowVersions;
  use Moose;
  has FlowIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFlowVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/{flowIdentifier}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::ListFlowVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListFlowVersions - Arguments for method ListFlowVersions on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFlowVersions on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method ListFlowVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFlowVersions.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $ListFlowVersionsResponse = $bedrock -agent->ListFlowVersions(
      FlowIdentifier => 'MyFlowIdentifier',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $FlowVersionSummaries = $ListFlowVersionsResponse->FlowVersionSummaries;
    my $NextToken            = $ListFlowVersionsResponse->NextToken;

    # Returns a L<Paws::BedrockAgent::ListFlowVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/ListFlowVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowIdentifier => Str

The unique identifier of the flow.



=head2 MaxResults => Int

The maximum number of results to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the C<nextToken> field when making another request to
return the next batch of results.



=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFlowVersions in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

