
package Paws::AppRunner::ListServicesForAutoScalingConfigurationResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListServicesForAutoScalingConfigurationResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that you can pass in a subsequent request to get the next
result page. It's returned in a paginated request.


=head2 B<REQUIRED> ServiceArnList => ArrayRef[Str|Undef]

A list of service ARN records. In a paginated request, the request
returns up to C<MaxResults> records for each call.


=head2 _request_id => Str


=cut

1;