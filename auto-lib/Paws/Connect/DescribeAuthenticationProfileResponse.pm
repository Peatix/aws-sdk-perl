
package Paws::Connect::DescribeAuthenticationProfileResponse;
  use Moose;
  has AuthenticationProfile => (is => 'ro', isa => 'Paws::Connect::AuthenticationProfile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeAuthenticationProfileResponse

=head1 ATTRIBUTES


=head2 AuthenticationProfile => L<Paws::Connect::AuthenticationProfile>

The authentication profile object being described.


=head2 _request_id => Str


=cut

