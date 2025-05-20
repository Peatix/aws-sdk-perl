
package Paws::CodeConnections::CreateHostOutput;
  use Moose;
  has HostArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeConnections::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::CreateHostOutput

=head1 ATTRIBUTES


=head2 HostArn => Str

The Amazon Resource Name (ARN) of the host to be created.


=head2 Tags => ArrayRef[L<Paws::CodeConnections::Tag>]

Tags for the created host.


=head2 _request_id => Str


=cut

1;