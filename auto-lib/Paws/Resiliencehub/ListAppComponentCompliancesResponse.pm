
package Paws::Resiliencehub::ListAppComponentCompliancesResponse;
  use Moose;
  has ComponentCompliances => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::AppComponentCompliance]', traits => ['NameInRequest'], request_name => 'componentCompliances', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppComponentCompliancesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentCompliances => ArrayRef[L<Paws::Resiliencehub::AppComponentCompliance>]

The compliances for an Resilience Hub Application Component, returned
as an object. This object contains the names of the Application
Components, compliances, costs, resiliency scores, outage scores, and
more.


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

