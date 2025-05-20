
package Paws::BedrockAgent::DeleteFlowVersionResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteFlowVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the flow.


=head2 B<REQUIRED> Version => Str

The version of the flow being deleted.


=head2 _request_id => Str


=cut

