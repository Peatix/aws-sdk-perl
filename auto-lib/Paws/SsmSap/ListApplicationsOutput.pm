
package Paws::SsmSap::ListApplicationsOutput;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::ApplicationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::ListApplicationsOutput

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::SsmSap::ApplicationSummary>]

The applications registered with AWS Systems Manager for SAP.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

