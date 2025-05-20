
package Paws::BedrockAgent::StartIngestionJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartIngestionJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::StartIngestionJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::StartIngestionJob - Arguments for method StartIngestionJob on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartIngestionJob on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method StartIngestionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartIngestionJob.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $StartIngestionJobResponse = $bedrock -agent->StartIngestionJob(
      DataSourceId    => 'MyId',
      KnowledgeBaseId => 'MyId',
      ClientToken     => 'MyClientToken',    # OPTIONAL
      Description     => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $IngestionJob = $StartIngestionJobResponse->IngestionJob;

    # Returns a L<Paws::BedrockAgent::StartIngestionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/StartIngestionJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> DataSourceId => Str

The unique identifier of the data source you want to ingest into your
knowledge base.



=head2 Description => Str

A description of the data ingestion job.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base for the data ingestion job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartIngestionJob in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

