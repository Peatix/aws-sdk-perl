
package Paws::SupplyChain::GetInstanceResponse;
  use Moose;
  has Instance => (is => 'ro', isa => 'Paws::SupplyChain::Instance', traits => ['NameInRequest'], request_name => 'instance', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetInstanceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Instance => L<Paws::SupplyChain::Instance>

The instance resource data details.


=head2 _request_id => Str


=cut

