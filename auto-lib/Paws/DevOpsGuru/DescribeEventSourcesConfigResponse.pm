
package Paws::DevOpsGuru::DescribeEventSourcesConfigResponse;
  use Moose;
  has EventSources => (is => 'ro', isa => 'Paws::DevOpsGuru::EventSourcesConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeEventSourcesConfigResponse

=head1 ATTRIBUTES


=head2 EventSources => L<Paws::DevOpsGuru::EventSourcesConfig>

Lists the event sources in the configuration.


=head2 _request_id => Str


=cut

