
package Paws::Config::PutServiceLinkedConfigurationRecorderResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutServiceLinkedConfigurationRecorderResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the specified configuration recorder.


=head2 Name => Str

The name of the specified configuration recorder.

For service-linked configuration recorders, Config automatically
assigns a name that has the prefix "C<AWS>" to the new service-linked
configuration recorder.


=head2 _request_id => Str


=cut

1;