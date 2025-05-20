
package Paws::MWAA::InvokeRestApiResponse;
  use Moose;
  has RestApiResponse => (is => 'ro', isa => 'Paws::MWAA::RestApiResponse');
  has RestApiStatusCode => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::InvokeRestApiResponse

=head1 ATTRIBUTES


=head2 RestApiResponse => L<Paws::MWAA::RestApiResponse>

The response data from the Apache Airflow REST API call, provided as a
JSON object.


=head2 RestApiStatusCode => Int

The HTTP status code returned by the Apache Airflow REST API call.


=head2 _request_id => Str


=cut

