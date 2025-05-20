
package Paws::BedrockAgent::DeleteKnowledgeBaseResponse;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'knowledgeBaseId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteKnowledgeBaseResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base that was deleted.


=head2 B<REQUIRED> Status => Str

The status of the knowledge base and whether it has been successfully
deleted.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"UPDATING">, C<"FAILED">, C<"DELETE_UNSUCCESSFUL">
=head2 _request_id => Str


=cut

