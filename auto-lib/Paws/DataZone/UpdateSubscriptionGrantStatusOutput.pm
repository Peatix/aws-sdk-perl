
package Paws::DataZone::UpdateSubscriptionGrantStatusOutput;
  use Moose;
  has Assets => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SubscribedAsset]', traits => ['NameInRequest'], request_name => 'assets');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has GrantedEntity => (is => 'ro', isa => 'Paws::DataZone::GrantedEntity', traits => ['NameInRequest'], request_name => 'grantedEntity', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has SubscriptionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriptionId');
  has SubscriptionTargetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriptionTargetId', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateSubscriptionGrantStatusOutput

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[L<Paws::DataZone::SubscribedAsset>]

The details of the asset for which the subscription grant is created.


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the subscription grant status was created.


=head2 B<REQUIRED> CreatedBy => Str

The Amazon DataZone domain user who created the subscription grant
status.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain in which a subscription
grant status is to be updated.


=head2 B<REQUIRED> GrantedEntity => L<Paws::DataZone::GrantedEntity>

The granted entity to be updated as part of the
C<UpdateSubscriptionGrantStatus> action.


=head2 B<REQUIRED> Id => Str

The identifier of the subscription grant.


=head2 B<REQUIRED> Status => Str

The status to be updated as part of the
C<UpdateSubscriptionGrantStatus> action.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"GRANT_FAILED">, C<"REVOKE_FAILED">, C<"GRANT_AND_REVOKE_FAILED">, C<"COMPLETED">, C<"INACCESSIBLE">
=head2 SubscriptionId => Str

The identifier of the subscription.


=head2 B<REQUIRED> SubscriptionTargetId => Str

The identifier of the subscription target whose subscription grant
status is to be updated.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the subscription grant status is to be updated.


=head2 UpdatedBy => Str

The Amazon DataZone user who updated the subscription grant status.


=head2 _request_id => Str


=cut

