
package Paws::DataZone::UpdateSubscriptionRequestOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has DecisionComment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'decisionComment');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has ExistingSubscriptionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'existingSubscriptionId');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has MetadataForms => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormOutput]', traits => ['NameInRequest'], request_name => 'metadataForms');
  has RequestReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestReason', required => 1);
  has ReviewerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reviewerId');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has SubscribedListings => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SubscribedListing]', traits => ['NameInRequest'], request_name => 'subscribedListings', required => 1);
  has SubscribedPrincipals => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SubscribedPrincipal]', traits => ['NameInRequest'], request_name => 'subscribedPrincipals', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateSubscriptionRequestOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the subscription request was created.


=head2 B<REQUIRED> CreatedBy => Str

The Amazon DataZone user who created the subscription request.


=head2 DecisionComment => Str

The decision comment of the C<UpdateSubscriptionRequest> action.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain in which a subscription
request is to be updated.


=head2 ExistingSubscriptionId => Str

The ID of the existing subscription.


=head2 B<REQUIRED> Id => Str

The identifier of the subscription request that is to be updated.


=head2 MetadataForms => ArrayRef[L<Paws::DataZone::FormOutput>]

Metadata forms included in the subscription request.


=head2 B<REQUIRED> RequestReason => Str

The reason for the C<UpdateSubscriptionRequest> action.


=head2 ReviewerId => Str

The identifier of the Amazon DataZone user who reviews the subscription
request.


=head2 B<REQUIRED> Status => Str

The status of the subscription request.

Valid values are: C<"PENDING">, C<"ACCEPTED">, C<"REJECTED">
=head2 B<REQUIRED> SubscribedListings => ArrayRef[L<Paws::DataZone::SubscribedListing>]

The subscribed listings of the subscription request.


=head2 B<REQUIRED> SubscribedPrincipals => ArrayRef[L<Paws::DataZone::SubscribedPrincipal>]

The subscribed principals of the subscription request.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the subscription request was updated.


=head2 UpdatedBy => Str

The Amazon DataZone user who updated the subscription request.


=head2 _request_id => Str


=cut

