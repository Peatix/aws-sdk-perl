
package Paws::ApplicationMigration::Wave;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IsArchived => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isArchived');
  has LastModifiedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDateTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has WaveAggregatedStatus => (is => 'ro', isa => 'Paws::ApplicationMigration::WaveAggregatedStatus', traits => ['NameInRequest'], request_name => 'waveAggregatedStatus');
  has WaveID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'waveID');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::Wave

=head1 ATTRIBUTES


=head2 Arn => Str

Wave ARN.


=head2 CreationDateTime => Str

Wave creation dateTime.


=head2 Description => Str

Wave description.


=head2 IsArchived => Bool

Wave archival status.


=head2 LastModifiedDateTime => Str

Wave last modified dateTime.


=head2 Name => Str

Wave name.


=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Wave tags.


=head2 WaveAggregatedStatus => L<Paws::ApplicationMigration::WaveAggregatedStatus>

Wave aggregated status.


=head2 WaveID => Str

Wave ID.


=head2 _request_id => Str


=cut

