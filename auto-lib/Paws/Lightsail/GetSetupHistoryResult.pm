
package Paws::Lightsail::GetSetupHistoryResult;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has SetupHistory => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::SetupHistory]', traits => ['NameInRequest'], request_name => 'setupHistory' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetSetupHistoryResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetSetupHistory>
request and specify the next page token using the pageToken parameter.


=head2 SetupHistory => ArrayRef[L<Paws::Lightsail::SetupHistory>]

The historical information that's returned.


=head2 _request_id => Str


=cut

1;