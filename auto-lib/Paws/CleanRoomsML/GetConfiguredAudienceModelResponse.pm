
package Paws::CleanRoomsML::GetConfiguredAudienceModelResponse;
  use Moose;
  has AudienceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audienceModelArn', required => 1);
  has AudienceSizeConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::AudienceSizeConfig', traits => ['NameInRequest'], request_name => 'audienceSizeConfig');
  has ChildResourceTagOnCreatePolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'childResourceTagOnCreatePolicy');
  has ConfiguredAudienceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredAudienceModelArn', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MinMatchingSeedSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minMatchingSeedSize');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::ConfiguredAudienceModelOutputConfig', traits => ['NameInRequest'], request_name => 'outputConfig', required => 1);
  has SharedAudienceMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sharedAudienceMetrics', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetConfiguredAudienceModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceModelArn => Str

The Amazon Resource Name (ARN) of the audience model used for this
configured audience model.


=head2 AudienceSizeConfig => L<Paws::CleanRoomsML::AudienceSizeConfig>

The list of output sizes of audiences that can be created using this
configured audience model. A request to StartAudienceGenerationJob that
uses this configured audience model must have an C<audienceSize>
selected from this list. You can use the C<ABSOLUTE> AudienceSize to
configure out audience sizes using the count of identifiers in the
output. You can use the C<Percentage> AudienceSize to configure sizes
in the range 1-100 percent.


=head2 ChildResourceTagOnCreatePolicy => Str

Provides the C<childResourceTagOnCreatePolicy> that was used for this
configured audience model.

Valid values are: C<"FROM_PARENT_RESOURCE">, C<"NONE">
=head2 B<REQUIRED> ConfiguredAudienceModelArn => Str

The Amazon Resource Name (ARN) of the configured audience model.


=head2 B<REQUIRED> CreateTime => Str

The time at which the configured audience model was created.


=head2 Description => Str

The description of the configured audience model.


=head2 MinMatchingSeedSize => Int

The minimum number of users from the seed audience that must match with
users in the training data of the audience model.


=head2 B<REQUIRED> Name => Str

The name of the configured audience model.


=head2 B<REQUIRED> OutputConfig => L<Paws::CleanRoomsML::ConfiguredAudienceModelOutputConfig>

The output configuration of the configured audience model


=head2 B<REQUIRED> SharedAudienceMetrics => ArrayRef[Str|Undef]

Whether audience metrics are shared.


=head2 B<REQUIRED> Status => Str

The status of the configured audience model.

Valid values are: C<"ACTIVE">
=head2 Tags => L<Paws::CleanRoomsML::TagMap>

The tags that are associated to this configured audience model.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the configured audience model was
updated.


=head2 _request_id => Str


=cut

