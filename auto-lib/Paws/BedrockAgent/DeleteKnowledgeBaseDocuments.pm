
package Paws::BedrockAgent::DeleteKnowledgeBaseDocuments;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has DocumentIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::DocumentIdentifier]', traits => ['NameInRequest'], request_name => 'documentIdentifiers', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKnowledgeBaseDocuments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents/deleteDocuments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::DeleteKnowledgeBaseDocumentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteKnowledgeBaseDocuments - Arguments for method DeleteKnowledgeBaseDocuments on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKnowledgeBaseDocuments on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method DeleteKnowledgeBaseDocuments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKnowledgeBaseDocuments.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $DeleteKnowledgeBaseDocumentsResponse =
      $bedrock -agent->DeleteKnowledgeBaseDocuments(
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
      ClientToken     => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $DocumentDetails =
      $DeleteKnowledgeBaseDocumentsResponse->DocumentDetails;

 # Returns a L<Paws::BedrockAgent::DeleteKnowledgeBaseDocumentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/DeleteKnowledgeBaseDocuments>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> DataSourceId => Str

The unique identifier of the data source that contains the documents.



=head2 B<REQUIRED> DocumentIdentifiers => ArrayRef[L<Paws::BedrockAgent::DocumentIdentifier>]

A list of objects, each of which contains information to identify a
document to delete.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base that is connected to the
data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKnowledgeBaseDocuments in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

