
package Paws::Wisdom::DeleteQuickResponse;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has QuickResponseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'quickResponseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQuickResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::DeleteQuickResponseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::DeleteQuickResponse - Arguments for method DeleteQuickResponse on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteQuickResponse on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method DeleteQuickResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteQuickResponse.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $DeleteQuickResponseResponse = $wisdom->DeleteQuickResponse(
      KnowledgeBaseId => 'MyUuidOrArn',
      QuickResponseId => 'MyUuidOrArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/DeleteQuickResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The knowledge base from which the quick response is deleted. The
identifier of the knowledge base. This should not be a QUICK_RESPONSES
type knowledge base if you're storing Wisdom Content resource to it.



=head2 B<REQUIRED> QuickResponseId => Str

The identifier of the quick response to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteQuickResponse in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

