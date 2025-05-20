
package Paws::KafkaConnect::DeleteCustomPluginResponse;
  use Moose;
  has CustomPluginArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customPluginArn');
  has CustomPluginState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customPluginState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DeleteCustomPluginResponse

=head1 ATTRIBUTES


=head2 CustomPluginArn => Str

The Amazon Resource Name (ARN) of the custom plugin that you requested
to delete.


=head2 CustomPluginState => Str

The state of the custom plugin.

Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"UPDATING">, C<"UPDATE_FAILED">, C<"DELETING">
=head2 _request_id => Str


=cut

