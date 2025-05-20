
package Paws::EMRServerless::ListApplicationsResponse;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::EMRServerless::ApplicationSummary]', traits => ['NameInRequest'], request_name => 'applications', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Applications => ArrayRef[L<Paws::EMRServerless::ApplicationSummary>]

The output lists the specified applications.


=head2 NextToken => Str

The output displays the token for the next set of application results.
This is required for pagination and is available as a response of the
previous request.


=head2 _request_id => Str


=cut

