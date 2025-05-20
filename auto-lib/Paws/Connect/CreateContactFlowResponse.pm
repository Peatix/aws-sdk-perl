
package Paws::Connect::CreateContactFlowResponse;
  use Moose;
  has ContactFlowArn => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str');
  has FlowContentSha256 => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateContactFlowResponse

=head1 ATTRIBUTES


=head2 ContactFlowArn => Str

The Amazon Resource Name (ARN) of the flow.


=head2 ContactFlowId => Str

The identifier of the flow.


=head2 FlowContentSha256 => Str

Indicates the checksum value of the latest published flow content.


=head2 _request_id => Str


=cut

