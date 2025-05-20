
package Paws::ApplicationMigration::Connector;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ConnectorID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorID');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SsmCommandConfig => (is => 'ro', isa => 'Paws::ApplicationMigration::ConnectorSsmCommandConfig', traits => ['NameInRequest'], request_name => 'ssmCommandConfig');
  has SsmInstanceID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ssmInstanceID');
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::Connector

=head1 ATTRIBUTES


=head2 Arn => Str

Connector arn.


=head2 ConnectorID => Str

Connector ID.


=head2 Name => Str

Connector name.


=head2 SsmCommandConfig => L<Paws::ApplicationMigration::ConnectorSsmCommandConfig>

Connector SSM command config.


=head2 SsmInstanceID => Str

Connector SSM instance ID.


=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Connector tags.


=head2 _request_id => Str


=cut

