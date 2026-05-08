
package Paws::ES::ListVpcEndpointsForDomainResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', required => 1);
  has VpcEndpointSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ES::VpcEndpointSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListVpcEndpointsForDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NextToken => Str

Information about each endpoint associated with the domain.


=head2 B<REQUIRED> VpcEndpointSummaryList => ArrayRef[L<Paws::ES::VpcEndpointSummary>]

Provides list of C<VpcEndpointSummary> summarizing details of the VPC
endpoints.


=head2 _request_id => Str


=cut

