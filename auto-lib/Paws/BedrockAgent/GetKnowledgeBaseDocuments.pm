
package Paws::BedrockAgent::GetKnowledgeBaseDocuments;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has DocumentIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::DocumentIdentifier]', traits => ['NameInRequest'], request_name => 'documentIdentifiers', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKnowledgeBaseDocuments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents/getDocuments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::GetKnowledgeBaseDocumentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetKnowledgeBaseDocuments - Arguments for method GetKnowledgeBaseDocuments on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKnowledgeBaseDocuments on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method GetKnowledgeBaseDocuments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKnowledgeBaseDocuments.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $GetKnowledgeBaseDocumentsResponse =
      $bedrock -agent->GetKnowledgeBaseDocuments(
      DataSourceId        => 'MyId',
      DocumentIdentifiers => [
        {
          DataSourceType => 'CUSTOM',    # values: CUSTOM, S3
          Custom         => {
            Id => 'MyCustomDocumentIdentifierIdString',    # min: 1, max: 2048

          },    # OPTIONAL
          S3 => {
            Uri => 'MyS3BucketUri',    # min: 1, max: 2048

          },    # OPTIONAL
        },
        ...
      ],
      KnowledgeBaseId => 'MyId',

      );

    # Results:
    my $DocumentDetails = $GetKnowledgeBaseDocumentsResponse->DocumentDetails;

    # Returns a L<Paws::BedrockAgent::GetKnowledgeBaseDocumentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/GetKnowledgeBaseDocuments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceId => Str

The unique identifier of the data source that contains the documents.



=head2 B<REQUIRED> DocumentIdentifiers => ArrayRef[L<Paws::BedrockAgent::DocumentIdentifier>]

A list of objects, each of which contains information to identify a
document for which to retrieve information.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base that is connected to the
data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKnowledgeBaseDocuments in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

