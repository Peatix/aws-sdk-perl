
package Paws::QBusiness::CreatePluginResponse;
  use Moose;
  has BuildStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildStatus');
  has PluginArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pluginArn');
  has PluginId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pluginId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreatePluginResponse

=head1 ATTRIBUTES


=head2 BuildStatus => Str

The current status of a plugin. A plugin is modified asynchronously.

Valid values are: C<"READY">, C<"CREATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_FAILED">, C<"DELETE_IN_PROGRESS">, C<"DELETE_FAILED">
=head2 PluginArn => Str

The Amazon Resource Name (ARN) of a plugin.


=head2 PluginId => Str

The identifier of the plugin created.


=head2 _request_id => Str


=cut

