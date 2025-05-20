
package Paws::CleanRoomsML::GetConfiguredModelAlgorithmAssociationResponse;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaborationIdentifier', required => 1);
  has ConfiguredModelAlgorithmArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmArn', required => 1);
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociationArn', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PrivacyConfiguration => (is => 'ro', isa => 'Paws::CleanRoomsML::PrivacyConfiguration', traits => ['NameInRequest'], request_name => 'privacyConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetConfiguredModelAlgorithmAssociationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The collaboration ID of the collaboration that contains the configured
model algorithm association.


=head2 B<REQUIRED> ConfiguredModelAlgorithmArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm that
was associated to the collaboration.


=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociationArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association.


=head2 B<REQUIRED> CreateTime => Str

The time at which the configured model algorithm association was
created.


=head2 Description => Str

The description of the configured model algorithm association.


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that created the configured model
algorithm association.


=head2 B<REQUIRED> Name => Str

The name of the configured model algorithm association.


=head2 PrivacyConfiguration => L<Paws::CleanRoomsML::PrivacyConfiguration>

The privacy configuration information for the configured model
algorithm association.


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

The most recent time at which the configured model algorithm
association was updated.


=head2 _request_id => Str


=cut

