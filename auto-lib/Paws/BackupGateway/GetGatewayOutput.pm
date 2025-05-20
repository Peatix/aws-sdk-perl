
package Paws::BackupGateway::GetGatewayOutput;
  use Moose;
  has Gateway => (is => 'ro', isa => 'Paws::BackupGateway::GatewayDetails');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::GetGatewayOutput

=head1 ATTRIBUTES


=head2 Gateway => L<Paws::BackupGateway::GatewayDetails>

By providing the ARN (Amazon Resource Name), this API returns the
gateway.


=head2 _request_id => Str


=cut

1;