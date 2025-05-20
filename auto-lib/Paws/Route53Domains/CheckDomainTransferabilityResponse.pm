
package Paws::Route53Domains::CheckDomainTransferabilityResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
  has Transferability => (is => 'ro', isa => 'Paws::Route53Domains::DomainTransferability');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::CheckDomainTransferabilityResponse

=head1 ATTRIBUTES


=head2 Message => Str

Provides an explanation for when a domain can't be transferred.


=head2 Transferability => L<Paws::Route53Domains::DomainTransferability>

A complex type that contains information about whether the specified
domain can be transferred to Route 53.


=head2 _request_id => Str


=cut

1;