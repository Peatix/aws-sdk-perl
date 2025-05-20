
package Paws::Connect::CreateSecurityProfileResponse;
  use Moose;
  has SecurityProfileArn => (is => 'ro', isa => 'Str');
  has SecurityProfileId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateSecurityProfileResponse

=head1 ATTRIBUTES


=head2 SecurityProfileArn => Str

The Amazon Resource Name (ARN) for the security profile.


=head2 SecurityProfileId => Str

The identifier for the security profle.


=head2 _request_id => Str


=cut

