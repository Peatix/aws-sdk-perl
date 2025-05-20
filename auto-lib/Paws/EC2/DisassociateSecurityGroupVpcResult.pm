
package Paws::EC2::DisassociateSecurityGroupVpcResult;
  use Moose;
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateSecurityGroupVpcResult

=head1 ATTRIBUTES


=head2 State => Str

The state of the disassociation.

Valid values are: C<"associating">, C<"associated">, C<"association-failed">, C<"disassociating">, C<"disassociated">, C<"disassociation-failed">
=head2 _request_id => Str


=cut

