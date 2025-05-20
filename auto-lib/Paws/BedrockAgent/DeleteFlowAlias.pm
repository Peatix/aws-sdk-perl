
package Paws::BedrockAgent::DeleteFlowAlias;
  use Moose;
  has AliasIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'aliasIdentifier', required => 1);
  has FlowIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFlowAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/{flowIdentifier}/aliases/{aliasIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::DeleteFlowAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteFlowAlias - Arguments for method DeleteFlowAlias on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFlowAlias on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method DeleteFlowAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFlowAlias.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $DeleteFlowAliasResponse = $bedrock -agent->DeleteFlowAlias(
      AliasIdentifier => 'MyFlowAliasIdentifier',
      FlowIdentifier  => 'MyFlowIdentifier',

    );

    # Results:
    my $FlowId = $DeleteFlowAliasResponse->FlowId;
    my $Id     = $DeleteFlowAliasResponse->Id;

    # Returns a L<Paws::BedrockAgent::DeleteFlowAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/DeleteFlowAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasIdentifier => Str

The unique identifier of the alias to be deleted.



=head2 B<REQUIRED> FlowIdentifier => Str

The unique identifier of the flow that the alias belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFlowAlias in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

