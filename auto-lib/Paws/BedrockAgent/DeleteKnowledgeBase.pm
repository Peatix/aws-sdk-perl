
package Paws::BedrockAgent::DeleteKnowledgeBase;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKnowledgeBase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::DeleteKnowledgeBaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteKnowledgeBase - Arguments for method DeleteKnowledgeBase on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKnowledgeBase on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method DeleteKnowledgeBase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKnowledgeBase.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $DeleteKnowledgeBaseResponse = $bedrock -agent->DeleteKnowledgeBase(
      KnowledgeBaseId => 'MyId',

    );

    # Results:
    my $KnowledgeBaseId = $DeleteKnowledgeBaseResponse->KnowledgeBaseId;
    my $Status          = $DeleteKnowledgeBaseResponse->Status;

    # Returns a L<Paws::BedrockAgent::DeleteKnowledgeBaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/DeleteKnowledgeBase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKnowledgeBase in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

