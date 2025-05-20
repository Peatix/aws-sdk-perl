
package Paws::MediaConnect::DescribeFlowResponse;
  use Moose;
  has Flow => (is => 'ro', isa => 'Paws::MediaConnect::Flow', traits => ['NameInRequest'], request_name => 'flow');
  has Messages => (is => 'ro', isa => 'Paws::MediaConnect::Messages', traits => ['NameInRequest'], request_name => 'messages');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeFlowResponse

=head1 ATTRIBUTES


=head2 Flow => L<Paws::MediaConnect::Flow>

The flow that you requested a description of.


=head2 Messages => L<Paws::MediaConnect::Messages>

Any errors that apply currently to the flow. If there are no errors,
MediaConnect will not include this field in the response.


=head2 _request_id => Str


=cut

