
package Paws::Comprehend::DescribeResourcePolicyResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has PolicyRevisionId => (is => 'ro', isa => 'Str');
  has ResourcePolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeResourcePolicyResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time at which the policy was created.


=head2 LastModifiedTime => Str

The time at which the policy was last modified.


=head2 PolicyRevisionId => Str

The revision ID of the policy. Each time you modify a policy, Amazon
Comprehend assigns a new revision ID, and it deletes the prior version
of the policy.


=head2 ResourcePolicy => Str

The JSON body of the resource-based policy.


=head2 _request_id => Str


=cut

1;