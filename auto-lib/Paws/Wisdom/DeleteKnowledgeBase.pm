
package Paws::Wisdom::DeleteKnowledgeBase;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKnowledgeBase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::DeleteKnowledgeBaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::DeleteKnowledgeBase - Arguments for method DeleteKnowledgeBase on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKnowledgeBase on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method DeleteKnowledgeBase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKnowledgeBase.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $DeleteKnowledgeBaseResponse = $wisdom->DeleteKnowledgeBase(
      KnowledgeBaseId => 'MyUuidOrArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/DeleteKnowledgeBase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The knowledge base to delete content from. Can be either the ID or the
ARN. URLs cannot contain the ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKnowledgeBase in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

