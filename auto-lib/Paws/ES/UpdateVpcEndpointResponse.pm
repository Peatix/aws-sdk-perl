
package Paws::ES::UpdateVpcEndpointResponse;
  use Moose;
  has VpcEndpoint => (is => 'ro', isa => 'Paws::ES::VpcEndpoint', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpdateVpcEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcEndpoint => L<Paws::ES::VpcEndpoint>

The endpoint to be updated.


=head2 _request_id => Str


=cut

