
package Paws::CleanRoomsML::GetCollaborationMLInputChannelResponse;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaborationIdentifier', required => 1);
  has ConfiguredModelAlgorithmAssociations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociations', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has CreatorAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creatorAccountId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipIdentifier', required => 1);
  has MlInputChannelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mlInputChannelArn', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has NumberOfRecords => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfRecords');
  has RetentionInDays => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'retentionInDays', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusDetails => (is => 'ro', isa => 'Paws::CleanRoomsML::StatusDetails', traits => ['NameInRequest'], request_name => 'statusDetails');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetCollaborationMLInputChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The collaboration ID of the collaboration that contains the ML input
channel.


=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociations => ArrayRef[Str|Undef]

The configured model algorithm associations that were used to create
the ML input channel.


=head2 B<REQUIRED> CreateTime => Str

The time at which the ML input channel was created.


=head2 B<REQUIRED> CreatorAccountId => Str

The account ID of the member who created the ML input channel.


=head2 Description => Str

The description of the ML input channel.


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the membership that contains the ML input channel.


=head2 B<REQUIRED> MlInputChannelArn => Str

The Amazon Resource Name (ARN) of the ML input channel.


=head2 B<REQUIRED> Name => Str

The name of the ML input channel.


=head2 NumberOfRecords => Int

The number of records in the ML input channel.


=head2 B<REQUIRED> RetentionInDays => Int

The number of days to retain the data for the ML input channel.


=head2 B<REQUIRED> Status => Str

The status of the ML input channel.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"DELETE_PENDING">, C<"DELETE_IN_PROGRESS">, C<"DELETE_FAILED">, C<"INACTIVE">
=head2 StatusDetails => L<Paws::CleanRoomsML::StatusDetails>




=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the ML input channel was updated.


=head2 _request_id => Str


=cut

