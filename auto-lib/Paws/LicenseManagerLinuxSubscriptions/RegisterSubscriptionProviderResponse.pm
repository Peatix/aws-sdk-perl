
package Paws::LicenseManagerLinuxSubscriptions::RegisterSubscriptionProviderResponse;
  use Moose;
  has SubscriptionProviderArn => (is => 'ro', isa => 'Str');
  has SubscriptionProviderSource => (is => 'ro', isa => 'Str');
  has SubscriptionProviderStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::RegisterSubscriptionProviderResponse

=head1 ATTRIBUTES


=head2 SubscriptionProviderArn => Str

The Amazon Resource Name (ARN) of the Linux subscription provider
resource that you registered.


=head2 SubscriptionProviderSource => Str

The Linux subscription provider that you registered.

Valid values are: C<"RedHat">
=head2 SubscriptionProviderStatus => Str

Indicates the status of the registration action for the Linux
subscription provider that you requested.

Valid values are: C<"ACTIVE">, C<"INVALID">, C<"PENDING">
=head2 _request_id => Str


=cut

