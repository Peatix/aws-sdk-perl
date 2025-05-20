
package Paws::DynamoDB::PutResourcePolicyOutput;
  use Moose;
  has RevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::PutResourcePolicyOutput

=head1 ATTRIBUTES


=head2 RevisionId => Str

A unique string that represents the revision ID of the policy. If
you're comparing revision IDs, make sure to always use string
comparison logic.


=head2 _request_id => Str


=cut

1;