
package Paws::M2::ListApplicationsResponse;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::M2::ApplicationSummary]', traits => ['NameInRequest'], request_name => 'applications', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Applications => ArrayRef[L<Paws::M2::ApplicationSummary>]

Returns a list of summary details for all the applications in a runtime
environment.


=head2 NextToken => Str

A pagination token that's returned when the response doesn't contain
all applications.


=head2 _request_id => Str


=cut

