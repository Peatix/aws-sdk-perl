
package Paws::BackupGateway::TagResourceOutput;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::TagResourceOutput

=head1 ATTRIBUTES


=head2 ResourceARN => Str

The Amazon Resource Name (ARN) of the resource you tagged.


=head2 _request_id => Str


=cut

1;