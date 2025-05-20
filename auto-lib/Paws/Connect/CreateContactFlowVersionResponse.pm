
package Paws::Connect::CreateContactFlowVersionResponse;
  use Moose;
  has ContactFlowArn => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateContactFlowVersionResponse

=head1 ATTRIBUTES


=head2 ContactFlowArn => Str

The Amazon Resource Name (ARN) of the flow.


=head2 Version => Int

The identifier of the flow version.


=head2 _request_id => Str


=cut

