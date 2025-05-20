
package Paws::BedrockAgent::DeleteFlowResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteFlowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the flow.


=head2 _request_id => Str


=cut

