
package Paws::ApplicationMigration::Application;
  use Moose;
  has ApplicationAggregatedStatus => (is => 'ro', isa => 'Paws::ApplicationMigration::ApplicationAggregatedStatus', traits => ['NameInRequest'], request_name => 'applicationAggregatedStatus');
  has ApplicationID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationID');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IsArchived => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isArchived');
  has LastModifiedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDateTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has WaveID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'waveID');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::Application

=head1 ATTRIBUTES


=head2 ApplicationAggregatedStatus => L<Paws::ApplicationMigration::ApplicationAggregatedStatus>

Application aggregated status.


=head2 ApplicationID => Str

Application ID.


=head2 Arn => Str

Application ARN.


=head2 CreationDateTime => Str

Application creation dateTime.


=head2 Description => Str

Application description.


=head2 IsArchived => Bool

Application archival status.


=head2 LastModifiedDateTime => Str

Application last modified dateTime.


=head2 Name => Str

Application name.


=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Application tags.


=head2 WaveID => Str

Application wave ID.


=head2 _request_id => Str


=cut

