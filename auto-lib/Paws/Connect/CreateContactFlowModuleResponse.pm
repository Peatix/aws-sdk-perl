
package Paws::Connect::CreateContactFlowModuleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateContactFlowModuleResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the flow module.


=head2 Id => Str

The identifier of the flow module.


=head2 _request_id => Str


=cut

