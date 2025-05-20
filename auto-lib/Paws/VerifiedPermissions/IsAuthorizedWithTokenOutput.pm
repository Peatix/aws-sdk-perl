
package Paws::VerifiedPermissions::IsAuthorizedWithTokenOutput;
  use Moose;
  has Decision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'decision' , required => 1);
  has DeterminingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::DeterminingPolicyItem]', traits => ['NameInRequest'], request_name => 'determiningPolicies' , required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::EvaluationErrorItem]', traits => ['NameInRequest'], request_name => 'errors' , required => 1);
  has Principal => (is => 'ro', isa => 'Paws::VerifiedPermissions::EntityIdentifier', traits => ['NameInRequest'], request_name => 'principal' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::IsAuthorizedWithTokenOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Decision => Str

An authorization decision that indicates if the authorization request
should be allowed or denied.

Valid values are: C<"ALLOW">, C<"DENY">
=head2 B<REQUIRED> DeterminingPolicies => ArrayRef[L<Paws::VerifiedPermissions::DeterminingPolicyItem>]

The list of determining policies used to make the authorization
decision. For example, if there are multiple matching policies, where
at least one is a forbid policy, then because forbid always overrides
permit the forbid policies are the determining policies. If all
matching policies are permit policies, then those policies are the
determining policies. When no policies match and the response is the
default DENY, there are no determining policies.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::VerifiedPermissions::EvaluationErrorItem>]

Errors that occurred while making an authorization decision. For
example, a policy references an entity or entity attribute that does
not exist in the slice.


=head2 Principal => L<Paws::VerifiedPermissions::EntityIdentifier>

The identifier of the principal in the ID or access token.


=head2 _request_id => Str


=cut

1;