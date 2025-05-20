
package Paws::Wisdom::UpdateKnowledgeBaseTemplateUri;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has TemplateUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateUri', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKnowledgeBaseTemplateUri');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/templateUri');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::UpdateKnowledgeBaseTemplateUriResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::UpdateKnowledgeBaseTemplateUri - Arguments for method UpdateKnowledgeBaseTemplateUri on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKnowledgeBaseTemplateUri on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method UpdateKnowledgeBaseTemplateUri.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKnowledgeBaseTemplateUri.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $UpdateKnowledgeBaseTemplateUriResponse =
      $wisdom->UpdateKnowledgeBaseTemplateUri(
      KnowledgeBaseId => 'MyUuidOrArn',
      TemplateUri     => 'MyUri',

      );

    # Results:
    my $KnowledgeBase = $UpdateKnowledgeBaseTemplateUriResponse->KnowledgeBase;

    # Returns a L<Paws::Wisdom::UpdateKnowledgeBaseTemplateUriResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/UpdateKnowledgeBaseTemplateUri>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should not be a
QUICK_RESPONSES type knowledge base if you're storing Wisdom Content
resource to it. Can be either the ID or the ARN. URLs cannot contain
the ARN.



=head2 B<REQUIRED> TemplateUri => Str

The template URI to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKnowledgeBaseTemplateUri in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

