
package Paws::Repostspace::GetSpaceOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has ClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientId', required => 1);
  has ConfigurationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationStatus', required => 1);
  has ContentSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contentSize');
  has CreateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createDateTime', required => 1);
  has CustomerRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerRoleArn');
  has DeleteDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deleteDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GroupAdmins => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'groupAdmins');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RandomDomain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'randomDomain', required => 1);
  has Roles => (is => 'ro', isa => 'Paws::Repostspace::Roles', traits => ['NameInRequest'], request_name => 'roles');
  has SpaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StorageLimit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'storageLimit', required => 1);
  has Tier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tier', required => 1);
  has UserAdmins => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'userAdmins');
  has UserCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'userCount');
  has UserKMSKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userKMSKey');
  has VanityDomain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vanityDomain', required => 1);
  has VanityDomainStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vanityDomainStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::GetSpaceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the private re:Post.


=head2 B<REQUIRED> ClientId => Str

The Identity Center identifier for the Application Instance.


=head2 B<REQUIRED> ConfigurationStatus => Str

The configuration status of the private re:Post.

Valid values are: C<"CONFIGURED">, C<"UNCONFIGURED">
=head2 ContentSize => Int

The content size of the private re:Post.


=head2 B<REQUIRED> CreateDateTime => Str

The date when the private re:Post was created.


=head2 CustomerRoleArn => Str

The IAM role that grants permissions to the private re:Post to convert
unanswered questions into AWS support tickets.


=head2 DeleteDateTime => Str

The date when the private re:Post was deleted.


=head2 Description => Str

The description of the private re:Post.


=head2 GroupAdmins => ArrayRef[Str|Undef]

The list of groups that are administrators of the private re:Post.


=head2 B<REQUIRED> Name => Str

The name of the private re:Post.


=head2 B<REQUIRED> RandomDomain => Str

The AWS generated subdomain of the private re:Post


=head2 Roles => L<Paws::Repostspace::Roles>

A map of accessor identifiers and their roles.


=head2 B<REQUIRED> SpaceId => Str

The unique ID of the private re:Post.


=head2 B<REQUIRED> Status => Str

The creation or deletion status of the private re:Post.


=head2 B<REQUIRED> StorageLimit => Int

The storage limit of the private re:Post.


=head2 B<REQUIRED> Tier => Str

The pricing tier of the private re:Post.

Valid values are: C<"BASIC">, C<"STANDARD">
=head2 UserAdmins => ArrayRef[Str|Undef]

The list of users that are administrators of the private re:Post.


=head2 UserCount => Int

The number of users that have onboarded to the private re:Post.


=head2 UserKMSKey => Str

The custom AWS KMS key ARN thatE<rsquo>s used for the AWS KMS
encryption.


=head2 B<REQUIRED> VanityDomain => Str

The custom subdomain that you use to access your private re:Post. All
custom subdomains must be approved by AWS before use.


=head2 B<REQUIRED> VanityDomainStatus => Str

The approval status of the custom subdomain.

Valid values are: C<"PENDING">, C<"APPROVED">, C<"UNAPPROVED">
=head2 _request_id => Str


=cut

