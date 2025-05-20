
package Paws::InternetMonitor::StartQueryOutput;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::StartQueryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The internally-generated identifier of a specific query.


=head2 _request_id => Str


=cut

