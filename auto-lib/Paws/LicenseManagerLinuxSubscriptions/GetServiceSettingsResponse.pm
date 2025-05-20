
package Paws::LicenseManagerLinuxSubscriptions::GetServiceSettingsResponse;
  use Moose;
  has HomeRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LinuxSubscriptionsDiscovery => (is => 'ro', isa => 'Str');
  has LinuxSubscriptionsDiscoverySettings => (is => 'ro', isa => 'Paws::LicenseManagerLinuxSubscriptions::LinuxSubscriptionsDiscoverySettings');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Paws::LicenseManagerLinuxSubscriptions::StringMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::GetServiceSettingsResponse

=head1 ATTRIBUTES


=head2 HomeRegions => ArrayRef[Str|Undef]

The Region in which License Manager displays the aggregated data for
Linux subscriptions.


=head2 LinuxSubscriptionsDiscovery => Str

Lists if discovery has been enabled for Linux subscriptions.

Valid values are: C<"Enabled">, C<"Disabled">
=head2 LinuxSubscriptionsDiscoverySettings => L<Paws::LicenseManagerLinuxSubscriptions::LinuxSubscriptionsDiscoverySettings>

Lists the settings defined for Linux subscriptions discovery. The
settings include if Organizations integration has been enabled, and
which Regions data will be aggregated from.


=head2 Status => Str

Indicates the status of Linux subscriptions settings being applied.

Valid values are: C<"InProgress">, C<"Completed">, C<"Successful">, C<"Failed">
=head2 StatusMessage => L<Paws::LicenseManagerLinuxSubscriptions::StringMap>

A message which details the Linux subscriptions service settings
current status.


=head2 _request_id => Str


=cut

