
package Paws::DataZone::CancelSubscriptionOutput;
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

Paws::DataZone::CancelSubscriptionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp that specifies when the request to cancel the
subscription was created.


=head2 B<REQUIRED> CreatedBy => Str

Specifies the Amazon DataZone user who is cancelling the subscription.


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Amazon DataZone domain where the
subscription is being cancelled.


=head2 B<REQUIRED> Id => Str

The identifier of the subscription.


=head2 RetainPermissions => Bool

Specifies whether the permissions to the asset are retained after the
subscription is cancelled.


=head2 B<REQUIRED> Status => Str

The status of the request to cancel the subscription.

Valid values are: C<"APPROVED">, C<"REVOKED">, C<"CANCELLED">
=head2 B<REQUIRED> SubscribedListing => L<Paws::DataZone::SubscribedListing>

The asset to which a subscription is being cancelled.


=head2 B<REQUIRED> SubscribedPrincipal => L<Paws::DataZone::SubscribedPrincipal>

The Amazon DataZone user who is made a subscriber to the specified
asset by the subscription that is being cancelled.


=head2 SubscriptionRequestId => Str

The unique ID of the subscripton request for the subscription that is
being cancelled.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp that specifies when the subscription was cancelled.


=head2 UpdatedBy => Str

The Amazon DataZone user that cancelled the subscription.


=head2 _request_id => Str


=cut

