
package Paws::EntityResolution::PutPolicyOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has Token => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'token', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::PutPolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Entity Resolution resource ARN.


=head2 Policy => Str

The resource-based policy.


=head2 B<REQUIRED> Token => Str

A unique identifier for the current revision of the policy.


=head2 _request_id => Str


=cut

