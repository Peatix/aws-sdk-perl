
package Paws::RUM::GetAppMonitorDataResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::GetAppMonitorDataResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[Str|Undef]

The events that RUM collected that match your request.


=head2 NextToken => Str

A token that you can use in a subsequent operation to retrieve the next
set of results.


=head2 _request_id => Str


=cut

