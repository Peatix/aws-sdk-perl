
package Paws::EC2::DisassociateIpamByoasnResult;
  use Moose;
  has AsnAssociation => (is => 'ro', isa => 'Paws::EC2::AsnAssociation', request_name => 'asnAssociation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateIpamByoasnResult

=head1 ATTRIBUTES


=head2 AsnAssociation => L<Paws::EC2::AsnAssociation>

An ASN and BYOIP CIDR association.


=head2 _request_id => Str


=cut

