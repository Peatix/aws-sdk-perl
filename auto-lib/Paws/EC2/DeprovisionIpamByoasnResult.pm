
package Paws::EC2::DeprovisionIpamByoasnResult;
  use Moose;
  has Byoasn => (is => 'ro', isa => 'Paws::EC2::Byoasn', request_name => 'byoasn', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeprovisionIpamByoasnResult

=head1 ATTRIBUTES


=head2 Byoasn => L<Paws::EC2::Byoasn>

An ASN and BYOIP CIDR association.


=head2 _request_id => Str


=cut

