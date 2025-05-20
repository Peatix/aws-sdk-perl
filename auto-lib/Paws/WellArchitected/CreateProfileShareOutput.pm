
package Paws::WellArchitected::CreateProfileShareOutput;
  use Moose;
  has ProfileArn => (is => 'ro', isa => 'Str');
  has ShareId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateProfileShareOutput

=head1 ATTRIBUTES


=head2 ProfileArn => Str

The profile ARN.


=head2 ShareId => Str




=head2 _request_id => Str


=cut

