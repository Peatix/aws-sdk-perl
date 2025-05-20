
package Paws::EntityResolution::DeletePolicyStatementOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has Token => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'token', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::DeletePolicyStatementOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the resource for which the policy need to be deleted.


=head2 Policy => Str

The resource-based policy.


=head2 B<REQUIRED> Token => Str

A unique identifier for the deleted policy.


=head2 _request_id => Str


=cut

