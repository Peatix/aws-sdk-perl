
package Paws::RDS::DisableHttpEndpointResponse;
  use Moose;
  has HttpEndpointEnabled => (is => 'ro', isa => 'Bool');
  has ResourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DisableHttpEndpointResponse

=head1 ATTRIBUTES


=head2 HttpEndpointEnabled => Bool

Indicates whether the HTTP endpoint is enabled or disabled for the DB
cluster.


=head2 ResourceArn => Str

The ARN of the DB cluster.


=head2 _request_id => Str


=cut

