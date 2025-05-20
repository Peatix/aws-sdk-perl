
package Paws::DataZone::UpdateSubscriptionTargetOutput;
  use Moose;
  has ApplicableAssetTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'applicableAssetTypes', required => 1);
  has AuthorizedPrincipals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authorizedPrincipals', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has ManageAccessRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'manageAccessRole');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId', required => 1);
  has Provider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provider', required => 1);
  has SubscriptionTargetConfig => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SubscriptionTargetForm]', traits => ['NameInRequest'], request_name => 'subscriptionTargetConfig', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateSubscriptionTargetOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicableAssetTypes => ArrayRef[Str|Undef]

The applicable asset types to be updated as part of the
C<UpdateSubscriptionTarget> action.


=head2 B<REQUIRED> AuthorizedPrincipals => ArrayRef[Str|Undef]

The authorized principals to be updated as part of the
C<UpdateSubscriptionTarget> action. Updates are supported in batches of
5 at a time.


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when a subscription target was created.


=head2 B<REQUIRED> CreatedBy => Str

The Amazon DataZone user who created the subscription target.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain in which a subscription
target is to be updated.


=head2 B<REQUIRED> EnvironmentId => Str

The identifier of the environment in which a subscription target is to
be updated.


=head2 B<REQUIRED> Id => Str

Identifier of the subscription target that is to be updated.


=head2 ManageAccessRole => Str

The manage access role to be updated as part of the
C<UpdateSubscriptionTarget> action.


=head2 B<REQUIRED> Name => Str

The name to be updated as part of the C<UpdateSubscriptionTarget>
action.


=head2 B<REQUIRED> ProjectId => Str

The identifier of the project in which a subscription target is to be
updated.


=head2 B<REQUIRED> Provider => Str

The provider to be updated as part of the C<UpdateSubscriptionTarget>
action.


=head2 B<REQUIRED> SubscriptionTargetConfig => ArrayRef[L<Paws::DataZone::SubscriptionTargetForm>]

The configuration to be updated as part of the
C<UpdateSubscriptionTarget> action.


=head2 B<REQUIRED> Type => Str

The type to be updated as part of the C<UpdateSubscriptionTarget>
action.


=head2 UpdatedAt => Str

The timestamp of when the subscription target was updated.


=head2 UpdatedBy => Str

The Amazon DataZone user who updated the subscription target.


=head2 _request_id => Str


=cut

