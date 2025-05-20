
package Paws::SSMContacts::CreateRotationOverrideResult;
  use Moose;
  has RotationOverrideId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::CreateRotationOverrideResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> RotationOverrideId => Str

The Amazon Resource Name (ARN) of the created rotation override.


=head2 _request_id => Str


=cut

1;