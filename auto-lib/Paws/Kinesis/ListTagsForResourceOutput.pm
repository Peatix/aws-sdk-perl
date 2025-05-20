
package Paws::Kinesis::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::Kinesis::Tag>]

An array of tags associated with the specified Kinesis resource.


=head2 _request_id => Str


=cut

1;