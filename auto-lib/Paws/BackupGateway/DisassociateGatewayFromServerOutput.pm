
package Paws::BackupGateway::DisassociateGatewayFromServerOutput;
  use Moose;
  has GatewayArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::DisassociateGatewayFromServerOutput

=head1 ATTRIBUTES


=head2 GatewayArn => Str

The Amazon Resource Name (ARN) of the gateway you disassociated.


=head2 _request_id => Str


=cut

1;