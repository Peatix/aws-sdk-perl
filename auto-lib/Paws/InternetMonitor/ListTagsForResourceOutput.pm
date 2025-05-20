
package Paws::InternetMonitor::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::InternetMonitor::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::InternetMonitor::TagMap>

Tags for a resource.


=head2 _request_id => Str


=cut

