
package Paws::BackupGateway::PutMaintenanceStartTimeOutput;
  use Moose;
  has GatewayArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::PutMaintenanceStartTimeOutput

=head1 ATTRIBUTES


=head2 GatewayArn => Str

The Amazon Resource Name (ARN) of a gateway for which you set the
maintenance start time.


=head2 _request_id => Str


=cut

1;