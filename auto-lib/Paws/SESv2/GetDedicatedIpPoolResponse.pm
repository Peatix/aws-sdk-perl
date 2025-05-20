
package Paws::SESv2::GetDedicatedIpPoolResponse;
  use Moose;
  has DedicatedIpPool => (is => 'ro', isa => 'Paws::SESv2::DedicatedIpPool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDedicatedIpPoolResponse

=head1 ATTRIBUTES


=head2 DedicatedIpPool => L<Paws::SESv2::DedicatedIpPool>

An object that contains information about a dedicated IP pool.


=head2 _request_id => Str


=cut

