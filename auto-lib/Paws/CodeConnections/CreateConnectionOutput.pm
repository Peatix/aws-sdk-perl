
package Paws::CodeConnections::CreateConnectionOutput;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeConnections::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::CreateConnectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionArn => Str

The Amazon Resource Name (ARN) of the connection to be created. The ARN
is used as the connection reference when the connection is shared
between Amazon Web Services services.

The ARN is never reused if the connection is deleted.


=head2 Tags => ArrayRef[L<Paws::CodeConnections::Tag>]

Specifies the tags applied to the resource.


=head2 _request_id => Str


=cut

1;