
package Paws::Organizations::PutResourcePolicyResponse;
  use Moose;
  has ResourcePolicy => (is => 'ro', isa => 'Paws::Organizations::ResourcePolicy');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 ResourcePolicy => L<Paws::Organizations::ResourcePolicy>

A structure that contains details about the resource policy.


=head2 _request_id => Str


=cut

1;