
package Paws::OpenSearch::CancelServiceSoftwareUpdateResponse;
  use Moose;
  has ServiceSoftwareOptions => (is => 'ro', isa => 'Paws::OpenSearch::ServiceSoftwareOptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CancelServiceSoftwareUpdateResponse

=head1 ATTRIBUTES


=head2 ServiceSoftwareOptions => L<Paws::OpenSearch::ServiceSoftwareOptions>

Container for the state of your domain relative to the latest service
software.


=head2 _request_id => Str


=cut

