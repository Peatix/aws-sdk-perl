
package Paws::VerifiedPermissions::GetPolicyStoreOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has CedarVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cedarVersion' );
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has DeletionProtection => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deletionProtection' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has Tags => (is => 'ro', isa => 'Paws::VerifiedPermissions::TagMap', traits => ['NameInRequest'], request_name => 'tags' );
  has ValidationSettings => (is => 'ro', isa => 'Paws::VerifiedPermissions::ValidationSettings', traits => ['NameInRequest'], request_name => 'validationSettings' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::GetPolicyStoreOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the policy store.


=head2 CedarVersion => Str

The version of the Cedar language used with policies, policy templates,
and schemas in this policy store. For more information, see Amazon
Verified Permissions upgrade to Cedar v4 FAQ
(https://docs.aws.amazon.com/verifiedpermissions/latest/userguide/cedar4-faq.html).

Valid values are: C<"CEDAR_2">, C<"CEDAR_4">
=head2 B<REQUIRED> CreatedDate => Str

The date and time that the policy store was originally created.


=head2 DeletionProtection => Str

Specifies whether the policy store can be deleted. If enabled, the
policy store can't be deleted.

The default state is C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Description => Str

Descriptive text that you can provide to help with identification of
the current policy store.


=head2 B<REQUIRED> LastUpdatedDate => Str

The date and time that the policy store was last updated.


=head2 B<REQUIRED> PolicyStoreId => Str

The ID of the policy store;


=head2 Tags => L<Paws::VerifiedPermissions::TagMap>

The list of tags associated with the policy store.


=head2 B<REQUIRED> ValidationSettings => L<Paws::VerifiedPermissions::ValidationSettings>

The current validation settings for the policy store.


=head2 _request_id => Str


=cut

1;