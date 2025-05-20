
package Paws::WorkMail::CreateIdentityCenterApplicationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateIdentityCenterApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The Amazon Resource Name (ARN) of the application.


=head2 _request_id => Str


=cut

1;