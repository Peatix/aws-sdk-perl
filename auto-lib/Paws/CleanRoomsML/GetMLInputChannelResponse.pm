
package Paws::CleanRoomsML::GetMLInputChannelResponse;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaborationIdentifier', required => 1);
  has ConfiguredModelAlgorithmAssociations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociations', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InputChannel => (is => 'ro', isa => 'Paws::CleanRoomsML::InputChannel', traits => ['NameInRequest'], request_name => 'inputChannel', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipIdentifier', required => 1);
  has MlInputChannelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mlInputChannelArn', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has NumberOfFiles => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'numberOfFiles');
  has NumberOfRecords => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfRecords');
  has ProtectedQueryIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protectedQueryIdentifier');
  has RetentionInDays => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'retentionInDays', required => 1);
  has SizeInGb => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'sizeInGb');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusDetails => (is => 'ro', isa => 'Paws::CleanRoomsML::StatusDetails', traits => ['NameInRequest'], request_name => 'statusDetails');
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetMLInputChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The collaboration ID of the collaboration that contains the ML input
channel.


=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociations => ArrayRef[Str|Undef]

The configured model algorithm associations that were used to create
the ML input channel.


=head2 B<REQUIRED> CreateTime => Str

The time at which the ML input channel was created.


=head2 Description => Str

The description of the ML input channel.


=head2 B<REQUIRED> InputChannel => L<Paws::CleanRoomsML::InputChannel>

The input channel that was used to create the ML input channel.


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key that was used to create
the ML input channel.


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the membership that contains the ML input channel.


=head2 B<REQUIRED> MlInputChannelArn => Str

The Amazon Resource Name (ARN) of the ML input channel.


=head2 B<REQUIRED> Name => Str

The name of the ML input channel.


=head2 NumberOfFiles => Num

The number of files in the ML input channel.


=head2 NumberOfRecords => Int

The number of records in the ML input channel.


=head2 ProtectedQueryIdentifier => Str

The ID of the protected query that was used to create the ML input
channel.


=head2 B<REQUIRED> RetentionInDays => Int

The number of days to keep the data in the ML input channel.


=head2 SizeInGb => Num

The size, in GB, of the ML input channel.


=head2 B<REQUIRED> Status => Str

The status of the ML input channel.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"DELETE_PENDING">, C<"DELETE_IN_PROGRESS">, C<"DELETE_FAILED">, C<"INACTIVE">
=head2 StatusDetails => L<Paws::CleanRoomsML::StatusDetails>




=head2 Tags => L<Paws::CleanRoomsML::TagMap>

The optional metadata that you applied to the resource to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50.

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8.

=item *

Maximum value length - 256 Unicode characters in UTF-8.

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case sensitive.

=item *

Do not use aws:, AWS:, or any upper or lowercase combination of such as
a prefix for keys as it is reserved for AWS use. You cannot edit or
delete tag keys with this prefix. Values can have this prefix. If a tag
value has aws as its prefix but the key does not, then Clean Rooms ML
considers it to be a user tag and will count against the limit of 50
tags. Tags with only the key prefix of aws do not count against your
tags per resource limit.

=back



=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the ML input channel was updated.


=head2 _request_id => Str


=cut

