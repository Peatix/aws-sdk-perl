
package Paws::QApps::ListQAppSessionDataOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn', required => 1);
  has SessionData => (is => 'ro', isa => 'ArrayRef[Paws::QApps::QAppSessionData]', traits => ['NameInRequest'], request_name => 'sessionData');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ListQAppSessionDataOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 B<REQUIRED> SessionArn => Str

The Amazon Resource Name (ARN) of the Q App data collection session.


=head2 SessionData => ArrayRef[L<Paws::QApps::QAppSessionData>]

The collected responses of a Q App session.


=head2 B<REQUIRED> SessionId => Str

The unique identifier of the Q App data collection session.


=head2 _request_id => Str


=cut

