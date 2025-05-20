
package Paws::BedrockAgent::DeleteFlowAliasResponse;
  use Moose;
  has FlowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteFlowAliasResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowId => Str

The unique identifier of the flow that the alias belongs to.


=head2 B<REQUIRED> Id => Str

The unique identifier of the flow.


=head2 _request_id => Str


=cut

