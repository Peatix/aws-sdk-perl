
package Paws::BackupGateway::DeleteGatewayOutput;
  use Moose;
  has GatewayArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::DeleteGatewayOutput

=head1 ATTRIBUTES


=head2 GatewayArn => Str

The Amazon Resource Name (ARN) of the gateway you deleted.


=head2 _request_id => Str


=cut

1;