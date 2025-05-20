
package Paws::Config::DeleteServiceLinkedConfigurationRecorderResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteServiceLinkedConfigurationRecorderResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the specified configuration recorder.


=head2 B<REQUIRED> Name => Str

The name of the specified configuration recorder.


=head2 _request_id => Str


=cut

1;