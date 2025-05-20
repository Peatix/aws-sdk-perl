
package Paws::Proton::CreateServiceInstanceOutput;
  use Moose;
  has ServiceInstance => (is => 'ro', isa => 'Paws::Proton::ServiceInstance', traits => ['NameInRequest'], request_name => 'serviceInstance' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateServiceInstanceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceInstance => L<Paws::Proton::ServiceInstance>

The detailed data of the service instance being created.


=head2 _request_id => Str


=cut

1;