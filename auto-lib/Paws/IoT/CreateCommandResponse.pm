
package Paws::IoT::CreateCommandResponse;
  use Moose;
  has CommandArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commandArn');
  has CommandId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commandId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateCommandResponse

=head1 ATTRIBUTES


=head2 CommandArn => Str

The Amazon Resource Number (ARN) of the command. For example,
C<arn:aws:iot:E<lt>regionE<gt>:E<lt>accountidE<gt>:command/E<lt>commandIdE<gt>>


=head2 CommandId => Str

The unique identifier for the command.


=head2 _request_id => Str


=cut

