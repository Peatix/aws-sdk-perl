
package Paws::IVS::BatchStartViewerSessionRevocationResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::IVS::BatchStartViewerSessionRevocationError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::BatchStartViewerSessionRevocationResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::IVS::BatchStartViewerSessionRevocationError>]

Each error object is related to a specific C<channelArn> and
C<viewerId> pair in the request.


=head2 _request_id => Str


=cut

