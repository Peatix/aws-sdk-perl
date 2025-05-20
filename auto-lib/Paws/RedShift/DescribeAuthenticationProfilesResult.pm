
package Paws::RedShift::DescribeAuthenticationProfilesResult;
  use Moose;
  has AuthenticationProfiles => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::AuthenticationProfile]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeAuthenticationProfilesResult

=head1 ATTRIBUTES


=head2 AuthenticationProfiles => ArrayRef[L<Paws::RedShift::AuthenticationProfile>]

The list of authentication profiles.


=head2 _request_id => Str


=cut

