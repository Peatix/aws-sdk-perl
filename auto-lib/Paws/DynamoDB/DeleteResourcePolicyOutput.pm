
package Paws::DynamoDB::DeleteResourcePolicyOutput;
  use Moose;
  has RevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DeleteResourcePolicyOutput

=head1 ATTRIBUTES


=head2 RevisionId => Str

A unique string that represents the revision ID of the policy. If
you're comparing revision IDs, make sure to always use string
comparison logic.

This value will be empty if you make a request against a resource
without a policy.


=head2 _request_id => Str


=cut

1;