
package Paws::VerifiedPermissions::UpdatePolicyOutput;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::ActionIdentifier]', traits => ['NameInRequest'], request_name => 'actions' );
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has Effect => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'effect' );
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate' , required => 1);
  has PolicyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyId' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has PolicyType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyType' , required => 1);
  has Principal => (is => 'ro', isa => 'Paws::VerifiedPermissions::EntityIdentifier', traits => ['NameInRequest'], request_name => 'principal' );
  has Resource => (is => 'ro', isa => 'Paws::VerifiedPermissions::EntityIdentifier', traits => ['NameInRequest'], request_name => 'resource' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdatePolicyOutput

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::VerifiedPermissions::ActionIdentifier>]

The action that a policy permits or forbids. For example, C<{"actions":
[{"actionId": "ViewPhoto", "actionType": "PhotoFlash::Action"},
{"entityID": "SharePhoto", "entityType": "PhotoFlash::Action"}]}>.


=head2 B<REQUIRED> CreatedDate => Str

The date and time that the policy was originally created.


=head2 Effect => Str

The effect of the decision that a policy returns to an authorization
request. For example, C<"effect": "Permit">.

Valid values are: C<"Permit">, C<"Forbid">
=head2 B<REQUIRED> LastUpdatedDate => Str

The date and time that the policy was most recently updated.


=head2 B<REQUIRED> PolicyId => Str

The ID of the policy that was updated.


=head2 B<REQUIRED> PolicyStoreId => Str

The ID of the policy store that contains the policy that was updated.


=head2 B<REQUIRED> PolicyType => Str

The type of the policy that was updated.

Valid values are: C<"STATIC">, C<"TEMPLATE_LINKED">
=head2 Principal => L<Paws::VerifiedPermissions::EntityIdentifier>

The principal specified in the policy's scope. This element isn't
included in the response when C<Principal> isn't present in the policy
content.


=head2 Resource => L<Paws::VerifiedPermissions::EntityIdentifier>

The resource specified in the policy's scope. This element isn't
included in the response when C<Resource> isn't present in the policy
content.


=head2 _request_id => Str


=cut

1;