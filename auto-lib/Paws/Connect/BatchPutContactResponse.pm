
package Paws::Connect::BatchPutContactResponse;
  use Moose;
  has FailedRequestList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::FailedRequest]');
  has SuccessfulRequestList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::SuccessfulRequest]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::BatchPutContactResponse

=head1 ATTRIBUTES


=head2 FailedRequestList => ArrayRef[L<Paws::Connect::FailedRequest>]

List of requests for which contact creation failed.


=head2 SuccessfulRequestList => ArrayRef[L<Paws::Connect::SuccessfulRequest>]

List of requests for which contact was successfully created.


=head2 _request_id => Str


=cut

