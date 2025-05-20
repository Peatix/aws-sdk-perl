
package Paws::OAM::PutSinkPolicyOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');
  has SinkArn => (is => 'ro', isa => 'Str');
  has SinkId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::PutSinkPolicyOutput

=head1 ATTRIBUTES


=head2 Policy => Str

The policy that you specified.


=head2 SinkArn => Str

The ARN of the sink.


=head2 SinkId => Str

The random ID string that Amazon Web Services generated as part of the
sink ARN.


=head2 _request_id => Str


=cut

