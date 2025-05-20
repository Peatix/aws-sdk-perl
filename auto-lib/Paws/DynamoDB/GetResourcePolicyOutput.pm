
package Paws::DynamoDB::GetResourcePolicyOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');
  has RevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GetResourcePolicyOutput

=head1 ATTRIBUTES


=head2 Policy => Str

The resource-based policy document attached to the resource, which can
be a table or stream, in JSON format.


=head2 RevisionId => Str

A unique string that represents the revision ID of the policy. If
you're comparing revision IDs, make sure to always use string
comparison logic.


=head2 _request_id => Str


=cut

1;