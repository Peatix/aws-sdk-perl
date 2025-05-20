
package Paws::BackupGateway::ListTagsForResourceOutput;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::BackupGateway::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resource's tags that you listed.


=head2 Tags => ArrayRef[L<Paws::BackupGateway::Tag>]

A list of the resource's tags.


=head2 _request_id => Str


=cut

1;