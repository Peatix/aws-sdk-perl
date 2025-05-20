
package Paws::VerifiedPermissions::IsAuthorizedOutput;
  use Moose;
  has Decision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'decision' , required => 1);
  has DeterminingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::DeterminingPolicyItem]', traits => ['NameInRequest'], request_name => 'determiningPolicies' , required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::EvaluationErrorItem]', traits => ['NameInRequest'], request_name => 'errors' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::IsAuthorizedOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Decision => Str

An authorization decision that indicates if the authorization request
should be allowed or denied.

Valid values are: C<"ALLOW">, C<"DENY">
=head2 B<REQUIRED> DeterminingPolicies => ArrayRef[L<Paws::VerifiedPermissions::DeterminingPolicyItem>]

The list of determining policies used to make the authorization
decision. For example, if there are two matching policies, where one is
a forbid and the other is a permit, then the forbid policy will be the
determining policy. In the case of multiple matching permit policies
then there would be multiple determining policies. In the case that no
policies match, and hence the response is DENY, there would be no
determining policies.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::VerifiedPermissions::EvaluationErrorItem>]

Errors that occurred while making an authorization decision, for
example, a policy references an Entity or entity Attribute that does
not exist in the slice.


=head2 _request_id => Str


=cut

1;