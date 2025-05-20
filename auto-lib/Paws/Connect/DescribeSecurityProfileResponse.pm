
package Paws::Connect::DescribeSecurityProfileResponse;
  use Moose;
  has SecurityProfile => (is => 'ro', isa => 'Paws::Connect::SecurityProfile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeSecurityProfileResponse

=head1 ATTRIBUTES


=head2 SecurityProfile => L<Paws::Connect::SecurityProfile>

The security profile.


=head2 _request_id => Str


=cut

