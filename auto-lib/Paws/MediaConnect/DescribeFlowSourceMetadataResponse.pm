
package Paws::MediaConnect::DescribeFlowSourceMetadataResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::MessageDetail]', traits => ['NameInRequest'], request_name => 'messages');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timestamp');
  has TransportMediaInfo => (is => 'ro', isa => 'Paws::MediaConnect::TransportMediaInfo', traits => ['NameInRequest'], request_name => 'transportMediaInfo');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeFlowSourceMetadataResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that DescribeFlowSourceMetadata was performed on.


=head2 Messages => ArrayRef[L<Paws::MediaConnect::MessageDetail>]

Provides a status code and message regarding issues found with the flow
source metadata.


=head2 Timestamp => Str

The timestamp of the most recent change in metadata for this
flowE<rsquo>s source.


=head2 TransportMediaInfo => L<Paws::MediaConnect::TransportMediaInfo>

Information about the flow's transport media.


=head2 _request_id => Str


=cut

