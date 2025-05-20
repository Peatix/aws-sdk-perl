
package Paws::QConnect::DeleteContentAssociation;
  use Moose;
  has ContentAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'contentAssociationId', required => 1);
  has ContentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'contentId', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteContentAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::DeleteContentAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::DeleteContentAssociation - Arguments for method DeleteContentAssociation on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteContentAssociation on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method DeleteContentAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteContentAssociation.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $DeleteContentAssociationResponse = $wisdom->DeleteContentAssociation(
      ContentAssociationId => 'MyUuidOrArn',
      ContentId            => 'MyUuidOrArn',
      KnowledgeBaseId      => 'MyUuidOrArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/DeleteContentAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentAssociationId => Str

The identifier of the content association. Can be either the ID or the
ARN. URLs cannot contain the ARN.



=head2 B<REQUIRED> ContentId => Str

The identifier of the content.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteContentAssociation in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

