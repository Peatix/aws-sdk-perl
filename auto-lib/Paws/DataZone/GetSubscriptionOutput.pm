
package Paws::DataZone::GetSubscriptionOutput;
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

Paws::DataZone::GetSubscriptionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the subscription was created.


=head2 B<REQUIRED> CreatedBy => Str

The Amazon DataZone user who created the subscription.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which the subscription exists.


=head2 B<REQUIRED> Id => Str

The ID of the subscription.


=head2 RetainPermissions => Bool

The retain permissions of the subscription.


=head2 B<REQUIRED> Status => Str

The status of the subscription.

Valid values are: C<"APPROVED">, C<"REVOKED">, C<"CANCELLED">
=head2 B<REQUIRED> SubscribedListing => L<Paws::DataZone::SubscribedListing>

The details of the published asset for which the subscription grant is
created.


=head2 B<REQUIRED> SubscribedPrincipal => L<Paws::DataZone::SubscribedPrincipal>

The principal that owns the subscription.


=head2 SubscriptionRequestId => Str

The ID of the subscription request.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the subscription was updated.


=head2 UpdatedBy => Str

The Amazon DataZone user who updated the subscription.


=head2 _request_id => Str


=cut

