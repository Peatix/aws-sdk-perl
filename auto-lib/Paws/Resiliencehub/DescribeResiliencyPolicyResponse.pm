
package Paws::Resiliencehub::DescribeResiliencyPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::Resiliencehub::ResiliencyPolicy', traits => ['NameInRequest'], request_name => 'policy', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeResiliencyPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => L<Paws::Resiliencehub::ResiliencyPolicy>

Information about the specific resiliency policy, returned as an
object. This object includes creation time, data location constraints,
its name, description, tags, the recovery time objective (RTO) and
recovery point objective (RPO) in seconds, and more.


=head2 _request_id => Str


=cut

