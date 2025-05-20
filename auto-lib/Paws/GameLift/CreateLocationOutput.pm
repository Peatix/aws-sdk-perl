
package Paws::GameLift::CreateLocationOutput;
  use Moose;
  has Location => (is => 'ro', isa => 'Paws::GameLift::LocationModel');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateLocationOutput

=head1 ATTRIBUTES


=head2 Location => L<Paws::GameLift::LocationModel>

The details of the custom location you created.


=head2 _request_id => Str


=cut

1;