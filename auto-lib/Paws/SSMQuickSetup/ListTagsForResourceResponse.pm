
package Paws::SSMQuickSetup::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::TagEntry]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::SSMQuickSetup::TagEntry>]

Key-value pairs of metadata assigned to the resource.


=head2 _request_id => Str


=cut

