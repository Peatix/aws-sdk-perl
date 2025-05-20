
package Paws::QApps::GetQAppSessionOutput;
  use Moose;
  has AppVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'appVersion');
  has CardStatus => (is => 'ro', isa => 'Paws::QApps::CardStatusMap', traits => ['NameInRequest'], request_name => 'cardStatus', required => 1);
  has LatestPublishedAppVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'latestPublishedAppVersion');
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has SessionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionName');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UserIsHost => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'userIsHost');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::GetQAppSessionOutput

=head1 ATTRIBUTES


=head2 AppVersion => Int

The version of the Q App used for the session.


=head2 B<REQUIRED> CardStatus => L<Paws::QApps::CardStatusMap>

The current status for each card in the Q App session.


=head2 LatestPublishedAppVersion => Int

The latest published version of the Q App used for the session.


=head2 B<REQUIRED> SessionArn => Str

The Amazon Resource Name (ARN) of the Q App session.


=head2 B<REQUIRED> SessionId => Str

The unique identifier of the Q App session.


=head2 SessionName => Str

The name of the Q App session.


=head2 B<REQUIRED> Status => Str

The current status of the Q App session.

Valid values are: C<"IN_PROGRESS">, C<"WAITING">, C<"COMPLETED">, C<"ERROR">
=head2 UserIsHost => Bool

Indicates whether the current user is the owner of the Q App data
collection session.


=head2 _request_id => Str


=cut

