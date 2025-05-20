
package Paws::RUM::PutResourcePolicyResponse;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has PolicyRevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyDocument => Str

The JSON policy document that you specified.


=head2 PolicyRevisionId => Str

The policy revision ID information that you specified.


=head2 _request_id => Str


=cut

