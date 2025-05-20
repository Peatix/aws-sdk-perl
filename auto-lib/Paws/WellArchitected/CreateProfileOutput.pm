
package Paws::WellArchitected::CreateProfileOutput;
  use Moose;
  has ProfileArn => (is => 'ro', isa => 'Str');
  has ProfileVersion => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateProfileOutput

=head1 ATTRIBUTES


=head2 ProfileArn => Str

The profile ARN.


=head2 ProfileVersion => Str

Version of the profile.


=head2 _request_id => Str


=cut

