
package Paws::BackupGateway::GetBandwidthRateLimitScheduleOutput;
  use Moose;
  has BandwidthRateLimitIntervals => (is => 'ro', isa => 'ArrayRef[Paws::BackupGateway::BandwidthRateLimitInterval]');
  has GatewayArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::GetBandwidthRateLimitScheduleOutput

=head1 ATTRIBUTES


=head2 BandwidthRateLimitIntervals => ArrayRef[L<Paws::BackupGateway::BandwidthRateLimitInterval>]

An array containing bandwidth rate limit schedule intervals for a
gateway. When no bandwidth rate limit intervals have been scheduled,
the array is empty.


=head2 GatewayArn => Str

The Amazon Resource Name (ARN) of the gateway. Use the C<ListGateways>
(https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html)
operation to return a list of gateways for your account and Amazon Web
Services Region.


=head2 _request_id => Str


=cut

1;