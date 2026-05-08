
package Paws::ES::ListVpcEndpointsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', required => 1);
  has VpcEndpointSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ES::VpcEndpointSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListVpcEndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 B<REQUIRED> VpcEndpointSummaryList => ArrayRef[L<Paws::ES::VpcEndpointSummary>]

Information about each endpoint.


=head2 _request_id => Str


=cut

