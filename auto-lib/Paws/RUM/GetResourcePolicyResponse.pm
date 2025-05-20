
package Paws::RUM::GetResourcePolicyResponse;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has PolicyRevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyDocument => Str

The JSON policy document that you requested.


=head2 PolicyRevisionId => Str

The revision ID information for this version of the policy document
that you requested.


=head2 _request_id => Str


=cut

