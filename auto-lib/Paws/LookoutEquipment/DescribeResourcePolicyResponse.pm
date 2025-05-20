
package Paws::LookoutEquipment::DescribeResourcePolicyResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has PolicyRevisionId => (is => 'ro', isa => 'Str');
  has ResourcePolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeResourcePolicyResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time when the resource policy was created.


=head2 LastModifiedTime => Str

The time when the resource policy was last modified.


=head2 PolicyRevisionId => Str

A unique identifier for a revision of the resource policy.


=head2 ResourcePolicy => Str

The resource policy in a JSON-formatted string.


=head2 _request_id => Str


=cut

1;