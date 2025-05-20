
package Paws::BedrockAgent::GetKnowledgeBase;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKnowledgeBase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::GetKnowledgeBaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetKnowledgeBase - Arguments for method GetKnowledgeBase on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKnowledgeBase on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method GetKnowledgeBase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKnowledgeBase.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $GetKnowledgeBaseResponse = $bedrock -agent->GetKnowledgeBase(
      KnowledgeBaseId => 'MyId',

    );

    # Results:
    my $KnowledgeBase = $GetKnowledgeBaseResponse->KnowledgeBase;

    # Returns a L<Paws::BedrockAgent::GetKnowledgeBaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/GetKnowledgeBase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base you want to get information
on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKnowledgeBase in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

