
package Paws::DataZone::RevokeSubscriptionOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has RetainPermissions => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'retainPermissions');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has SubscribedListing => (is => 'ro', isa => 'Paws::DataZone::SubscribedListing', traits => ['NameInRequest'], request_name => 'subscribedListing', required => 1);
  has SubscribedPrincipal => (is => 'ro', isa => 'Paws::DataZone::SubscribedPrincipal', traits => ['NameInRequest'], request_name => 'subscribedPrincipal', required => 1);
  has SubscriptionRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriptionRequestId');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::RevokeSubscriptionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the subscription was revoked.


=head2 B<REQUIRED> CreatedBy => Str

The identifier of the user who revoked the subscription.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain where you want to revoke a
subscription.


=head2 B<REQUIRED> Id => Str

The identifier of the revoked subscription.


=head2 RetainPermissions => Bool

Specifies whether permissions are retained when the subscription is
revoked.


=head2 B<REQUIRED> Status => Str

The status of the revoked subscription.

Valid values are: C<"APPROVED">, C<"REVOKED">, C<"CANCELLED">
=head2 B<REQUIRED> SubscribedListing => L<Paws::DataZone::SubscribedListing>

The subscribed listing of the revoked subscription.


=head2 B<REQUIRED> SubscribedPrincipal => L<Paws::DataZone::SubscribedPrincipal>

The subscribed principal of the revoked subscription.


=head2 SubscriptionRequestId => Str

The identifier of the subscription request for the revoked
subscription.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the subscription was revoked.


=head2 UpdatedBy => Str

The Amazon DataZone user who revoked the subscription.


=head2 _request_id => Str


=cut

