
package Paws::InternetMonitor::GetQueryStatusOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::GetQueryStatusOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The current status for a query.

Valid values are: C<"QUEUED">, C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"CANCELED">
=head2 _request_id => Str


=cut

