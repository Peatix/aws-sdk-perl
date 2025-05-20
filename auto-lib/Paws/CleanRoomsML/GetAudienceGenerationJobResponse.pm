
package Paws::CleanRoomsML::GetAudienceGenerationJobResponse;
  use Moose;
  has AudienceGenerationJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audienceGenerationJobArn', required => 1);
  has CollaborationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaborationId');
  has ConfiguredAudienceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredAudienceModelArn', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IncludeSeedInOutput => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeSeedInOutput');
  has Metrics => (is => 'ro', isa => 'Paws::CleanRoomsML::AudienceQualityMetrics', traits => ['NameInRequest'], request_name => 'metrics');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProtectedQueryIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protectedQueryIdentifier');
  has SeedAudience => (is => 'ro', isa => 'Paws::CleanRoomsML::AudienceGenerationJobDataSource', traits => ['NameInRequest'], request_name => 'seedAudience');
  has StartedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedBy');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusDetails => (is => 'ro', isa => 'Paws::CleanRoomsML::StatusDetails', traits => ['NameInRequest'], request_name => 'statusDetails');
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetAudienceGenerationJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceGenerationJobArn => Str

The Amazon Resource Name (ARN) of the audience generation job.


=head2 CollaborationId => Str

The identifier of the collaboration that this audience generation job
is associated with.


=head2 B<REQUIRED> ConfiguredAudienceModelArn => Str

The Amazon Resource Name (ARN) of the configured audience model used
for this audience generation job.


=head2 B<REQUIRED> CreateTime => Str

The time at which the audience generation job was created.


=head2 Description => Str

The description of the audience generation job.


=head2 IncludeSeedInOutput => Bool

Configure whether the seed users are included in the output audience.
By default, Clean Rooms ML removes seed users from the output audience.
If you specify C<TRUE>, the seed users will appear first in the output.
Clean Rooms ML does not explicitly reveal whether a user was in the
seed, but the recipient of the audience will know that the first
C<minimumSeedSize> count of users are from the seed.


=head2 Metrics => L<Paws::CleanRoomsML::AudienceQualityMetrics>

The relevance scores for different audience sizes and the recall score
of the generated audience.


=head2 B<REQUIRED> Name => Str

The name of the audience generation job.


=head2 ProtectedQueryIdentifier => Str

The unique identifier of the protected query for this audience
generation job.


=head2 SeedAudience => L<Paws::CleanRoomsML::AudienceGenerationJobDataSource>

The seed audience that was used for this audience generation job. This
field will be null if the account calling the API is the account that
started this audience generation job.


=head2 StartedBy => Str

The AWS account that started this audience generation job.


=head2 B<REQUIRED> Status => Str

The status of the audience generation job.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"DELETE_PENDING">, C<"DELETE_IN_PROGRESS">, C<"DELETE_FAILED">
=head2 StatusDetails => L<Paws::CleanRoomsML::StatusDetails>

Details about the status of the audience generation job.


=head2 Tags => L<Paws::CleanRoomsML::TagMap>

The tags that are associated to this audience generation job.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the audience generation job was updated.


=head2 _request_id => Str


=cut

