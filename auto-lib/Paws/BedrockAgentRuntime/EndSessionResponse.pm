
package Paws::BedrockAgentRuntime::EndSessionResponse;
  use Moose;
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has SessionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::EndSessionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionArn => Str

The Amazon Resource Name (ARN) of the session you ended.


=head2 B<REQUIRED> SessionId => Str

The unique identifier of the session you ended.


=head2 B<REQUIRED> SessionStatus => Str

The current status of the session you ended.

Valid values are: C<"ACTIVE">, C<"EXPIRED">, C<"ENDED">
=head2 _request_id => Str


=cut

