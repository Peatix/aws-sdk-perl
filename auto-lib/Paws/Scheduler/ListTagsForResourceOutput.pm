
package Paws::Scheduler::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Scheduler::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::Scheduler::Tag>]

The list of tags associated with the specified resource.


=head2 _request_id => Str


=cut

