
package Paws::Proton::UpdateServiceInstanceOutput;
  use Moose;
  has ServiceInstance => (is => 'ro', isa => 'Paws::Proton::ServiceInstance', traits => ['NameInRequest'], request_name => 'serviceInstance' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateServiceInstanceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceInstance => L<Paws::Proton::ServiceInstance>

The service instance summary data that's returned by Proton.


=head2 _request_id => Str


=cut

1;