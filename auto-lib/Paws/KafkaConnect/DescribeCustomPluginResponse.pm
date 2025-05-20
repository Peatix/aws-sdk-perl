
package Paws::KafkaConnect::DescribeCustomPluginResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has CustomPluginArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customPluginArn');
  has CustomPluginState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customPluginState');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LatestRevision => (is => 'ro', isa => 'Paws::KafkaConnect::CustomPluginRevisionSummary', traits => ['NameInRequest'], request_name => 'latestRevision');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StateDescription => (is => 'ro', isa => 'Paws::KafkaConnect::StateDescription', traits => ['NameInRequest'], request_name => 'stateDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DescribeCustomPluginResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the custom plugin was created.


=head2 CustomPluginArn => Str

The Amazon Resource Name (ARN) of the custom plugin.


=head2 CustomPluginState => Str

The state of the custom plugin.

Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"UPDATING">, C<"UPDATE_FAILED">, C<"DELETING">
=head2 Description => Str

The description of the custom plugin.


=head2 LatestRevision => L<Paws::KafkaConnect::CustomPluginRevisionSummary>

The latest successfully created revision of the custom plugin. If there
are no successfully created revisions, this field will be absent.


=head2 Name => Str

The name of the custom plugin.


=head2 StateDescription => L<Paws::KafkaConnect::StateDescription>

Details about the state of a custom plugin.


=head2 _request_id => Str


=cut

