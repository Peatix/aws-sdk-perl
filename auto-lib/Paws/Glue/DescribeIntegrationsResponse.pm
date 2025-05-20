
package Paws::Glue::DescribeIntegrationsResponse;
  use Moose;
  has Integrations => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Integration]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DescribeIntegrationsResponse

=head1 ATTRIBUTES


=head2 Integrations => ArrayRef[L<Paws::Glue::Integration>]

A list of zero-ETL integrations.


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request.


=head2 _request_id => Str


=cut

1;