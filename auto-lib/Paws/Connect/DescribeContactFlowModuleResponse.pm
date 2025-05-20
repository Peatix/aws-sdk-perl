
package Paws::Connect::DescribeContactFlowModuleResponse;
  use Moose;
  has ContactFlowModule => (is => 'ro', isa => 'Paws::Connect::ContactFlowModule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeContactFlowModuleResponse

=head1 ATTRIBUTES


=head2 ContactFlowModule => L<Paws::Connect::ContactFlowModule>

Information about the flow module.


=head2 _request_id => Str


=cut

