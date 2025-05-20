
package Paws::QConnect::ListContentAssociations;
  use Moose;
  has ContentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'contentId', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListContentAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::ListContentAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListContentAssociations - Arguments for method ListContentAssociations on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContentAssociations on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method ListContentAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContentAssociations.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $ListContentAssociationsResponse = $wisdom->ListContentAssociations(
      ContentId       => 'MyUuidOrArn',
      KnowledgeBaseId => 'MyUuidOrArn',
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ContentAssociationSummaries =
      $ListContentAssociationsResponse->ContentAssociationSummaries;
    my $NextToken = $ListContentAssociationsResponse->NextToken;

    # Returns a L<Paws::QConnect::ListContentAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/ListContentAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentId => Str

The identifier of the content.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContentAssociations in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

