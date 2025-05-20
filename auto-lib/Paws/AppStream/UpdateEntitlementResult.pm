
package Paws::AppStream::UpdateEntitlementResult;
  use Moose;
  has Entitlement => (is => 'ro', isa => 'Paws::AppStream::Entitlement');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateEntitlementResult

=head1 ATTRIBUTES


=head2 Entitlement => L<Paws::AppStream::Entitlement>

The entitlement.


=head2 _request_id => Str


=cut

1;