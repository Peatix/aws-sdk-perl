
package Paws::LicenseManagerLinuxSubscriptions::GetRegisteredSubscriptionProviderResponse;
  use Moose;
  has LastSuccessfulDataRetrievalTime => (is => 'ro', isa => 'Str');
  has SecretArn => (is => 'ro', isa => 'Str');
  has SubscriptionProviderArn => (is => 'ro', isa => 'Str');
  has SubscriptionProviderSource => (is => 'ro', isa => 'Str');
  has SubscriptionProviderStatus => (is => 'ro', isa => 'Str');
  has SubscriptionProviderStatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::GetRegisteredSubscriptionProviderResponse

=head1 ATTRIBUTES


=head2 LastSuccessfulDataRetrievalTime => Str

The timestamp from the last time License Manager retrieved subscription
details from your registered third-party Linux subscription provider.


=head2 SecretArn => Str

The Amazon Resource Name (ARN) of the third-party access secret stored
in Secrets Manager for the BYOL registration resource specified in the
request.


=head2 SubscriptionProviderArn => Str

The Amazon Resource Name (ARN) for the BYOL registration resource
specified in the request.


=head2 SubscriptionProviderSource => Str

The subscription provider for the BYOL registration resource specified
in the request.

Valid values are: C<"RedHat">
=head2 SubscriptionProviderStatus => Str

The status of the Linux subscription provider access token from the
last successful subscription data request.

Valid values are: C<"ACTIVE">, C<"INVALID">, C<"PENDING">
=head2 SubscriptionProviderStatusMessage => Str

The detailed message from your subscription provider token status.


=head2 _request_id => Str


=cut

