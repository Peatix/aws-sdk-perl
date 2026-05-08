
package Paws::OpenSearch::StartServiceSoftwareUpdateResponse;
  use Moose;
  has ServiceSoftwareOptions => (is => 'ro', isa => 'Paws::OpenSearch::ServiceSoftwareOptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::StartServiceSoftwareUpdateResponse

=head1 ATTRIBUTES


=head2 ServiceSoftwareOptions => L<Paws::OpenSearch::ServiceSoftwareOptions>

The current status of the OpenSearch Service software update.


=head2 _request_id => Str


=cut

