
package Paws::KafkaConnect::CreateCustomPluginResponse;
  use Moose;
  has CustomPluginArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customPluginArn');
  has CustomPluginState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customPluginState');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Revision => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'revision');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::CreateCustomPluginResponse

=head1 ATTRIBUTES


=head2 CustomPluginArn => Str

The Amazon Resource Name (ARN) that Amazon assigned to the custom
plugin.


=head2 CustomPluginState => Str

The state of the custom plugin.

Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"UPDATING">, C<"UPDATE_FAILED">, C<"DELETING">
=head2 Name => Str

The name of the custom plugin.


=head2 Revision => Int

The revision of the custom plugin.


=head2 _request_id => Str


=cut

