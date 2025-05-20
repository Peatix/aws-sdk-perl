
package Paws::BedrockAgent::DeleteDataSource;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::DeleteDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteDataSource - Arguments for method DeleteDataSource on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataSource on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method DeleteDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataSource.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $DeleteDataSourceResponse = $bedrock -agent->DeleteDataSource(
      DataSourceId    => 'MyId',
      KnowledgeBaseId => 'MyId',

    );

    # Results:
    my $DataSourceId    = $DeleteDataSourceResponse->DataSourceId;
    my $KnowledgeBaseId = $DeleteDataSourceResponse->KnowledgeBaseId;
    my $Status          = $DeleteDataSourceResponse->Status;

    # Returns a L<Paws::BedrockAgent::DeleteDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/DeleteDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceId => Str

The unique identifier of the data source to delete.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base from which to delete the
data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataSource in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

