
package Paws::EMRServerless::GetDashboardForJobRunResponse;
  use Moose;
  has Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'url');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::GetDashboardForJobRunResponse

=head1 ATTRIBUTES


=head2 Url => Str

The URL to view job run's dashboard.


=head2 _request_id => Str


=cut

