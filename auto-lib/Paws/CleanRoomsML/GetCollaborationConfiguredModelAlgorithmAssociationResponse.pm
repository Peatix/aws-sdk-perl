
package Paws::CleanRoomsML::GetCollaborationConfiguredModelAlgorithmAssociationResponse;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaborationIdentifier', required => 1);
  has ConfiguredModelAlgorithmArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmArn', required => 1);
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociationArn', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has CreatorAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creatorAccountId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PrivacyConfiguration => (is => 'ro', isa => 'Paws::CleanRoomsML::PrivacyConfiguration', traits => ['NameInRequest'], request_name => 'privacyConfiguration');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetCollaborationConfiguredModelAlgorithmAssociationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The collaboration ID of the collaboration that contains the configured
model algorithm association.


=head2 B<REQUIRED> ConfiguredModelAlgorithmArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association.


=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociationArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association.


=head2 B<REQUIRED> CreateTime => Str

The time at which the configured model algorithm association was
created.


=head2 B<REQUIRED> CreatorAccountId => Str

The account ID of the member that created the configured model
algorithm association.


=head2 Description => Str

The description of the configured model algorithm association.


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that created the configured model
algorithm association.


=head2 B<REQUIRED> Name => Str

The name of the configured model algorithm association.


=head2 PrivacyConfiguration => L<Paws::CleanRoomsML::PrivacyConfiguration>




=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the configured model algorithm
association was updated.


=head2 _request_id => Str


=cut

