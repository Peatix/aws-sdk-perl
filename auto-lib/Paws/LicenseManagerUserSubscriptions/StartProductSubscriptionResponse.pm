
package Paws::LicenseManagerUserSubscriptions::StartProductSubscriptionResponse;
  use Moose;
  has ProductUserSummary => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::ProductUserSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::StartProductSubscriptionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProductUserSummary => L<Paws::LicenseManagerUserSubscriptions::ProductUserSummary>

Metadata that describes the start product subscription operation.


=head2 _request_id => Str


=cut

