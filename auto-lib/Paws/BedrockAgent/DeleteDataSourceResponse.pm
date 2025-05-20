
package Paws::BedrockAgent::DeleteDataSourceResponse;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceId', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'knowledgeBaseId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteDataSourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceId => Str

The unique identifier of the data source that was deleted.


=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base to which the data source
that was deleted belonged.


=head2 B<REQUIRED> Status => Str

The status of the data source.

Valid values are: C<"AVAILABLE">, C<"DELETING">, C<"DELETE_UNSUCCESSFUL">
=head2 _request_id => Str


=cut

