
package Paws::Wisdom::GetKnowledgeBase;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKnowledgeBase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::GetKnowledgeBaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::GetKnowledgeBase - Arguments for method GetKnowledgeBase on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKnowledgeBase on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method GetKnowledgeBase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKnowledgeBase.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $GetKnowledgeBaseResponse = $wisdom->GetKnowledgeBase(
      KnowledgeBaseId => 'MyUuidOrArn',

    );

    # Results:
    my $KnowledgeBase = $GetKnowledgeBaseResponse->KnowledgeBase;

    # Returns a L<Paws::Wisdom::GetKnowledgeBaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/GetKnowledgeBase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should not be a
QUICK_RESPONSES type knowledge base if you're storing Wisdom Content
resource to it. Can be either the ID or the ARN. URLs cannot contain
the ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKnowledgeBase in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

