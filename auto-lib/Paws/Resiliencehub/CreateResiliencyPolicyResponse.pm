
package Paws::Resiliencehub::CreateResiliencyPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::Resiliencehub::ResiliencyPolicy', traits => ['NameInRequest'], request_name => 'policy', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::CreateResiliencyPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => L<Paws::Resiliencehub::ResiliencyPolicy>

The type of resiliency policy that was created, including the recovery
time objective (RTO) and recovery point objective (RPO) in seconds.


=head2 _request_id => Str


=cut

