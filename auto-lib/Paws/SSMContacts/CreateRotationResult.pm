
package Paws::SSMContacts::CreateRotationResult;
  use Moose;
  has RotationArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::CreateRotationResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> RotationArn => Str

The Amazon Resource Name (ARN) of the created rotation.


=head2 _request_id => Str


=cut

1;