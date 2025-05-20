
package Paws::LookoutEquipment::PutResourcePolicyResponse;
  use Moose;
  has PolicyRevisionId => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyRevisionId => Str

A unique identifier for a revision of the resource policy.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resource for which the policy was
created.


=head2 _request_id => Str


=cut

1;