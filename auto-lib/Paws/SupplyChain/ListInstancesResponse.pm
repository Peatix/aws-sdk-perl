
package Paws::SupplyChain::ListInstancesResponse;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::SupplyChain::Instance]', traits => ['NameInRequest'], request_name => 'instances', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListInstancesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Instances => ArrayRef[L<Paws::SupplyChain::Instance>]

The list of instances resource data details.


=head2 NextToken => Str

The pagination token to fetch the next page of instances.


=head2 _request_id => Str


=cut

