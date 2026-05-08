
package Paws::OpenSearch::DeleteVpcEndpointResponse;
  use Moose;
  has VpcEndpointSummary => (is => 'ro', isa => 'Paws::OpenSearch::VpcEndpointSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DeleteVpcEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcEndpointSummary => L<Paws::OpenSearch::VpcEndpointSummary>

Information about the deleted endpoint, including its current status
(C<DELETING> or C<DELETE_FAILED>).


=head2 _request_id => Str


=cut

