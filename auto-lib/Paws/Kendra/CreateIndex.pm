
package Paws::Kendra::CreateIndex;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Edition => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::Kendra::ServerSideEncryptionConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Tag]');
  has UserContextPolicy => (is => 'ro', isa => 'Str');
  has UserGroupResolutionConfiguration => (is => 'ro', isa => 'Paws::Kendra::UserGroupResolutionConfiguration');
  has UserTokenConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::UserTokenConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIndex');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateIndexResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateIndex - Arguments for method CreateIndex on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIndex on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIndex.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateIndexResponse = $kendra->CreateIndex(
      Name                              => 'MyIndexName',
      RoleArn                           => 'MyRoleArn',
      ClientToken                       => 'MyClientTokenName',    # OPTIONAL
      Description                       => 'MyDescription',        # OPTIONAL
      Edition                           => 'DEVELOPER_EDITION',    # OPTIONAL
      ServerSideEncryptionConfiguration => {
        KmsKeyId => 'MyKmsKeyId',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      UserContextPolicy                => 'ATTRIBUTE_FILTER',    # OPTIONAL
      UserGroupResolutionConfiguration => {
        UserGroupResolutionMode => 'AWS_SSO',    # values: AWS_SSO, NONE

      },    # OPTIONAL
      UserTokenConfigurations => [
        {
          JsonTokenTypeConfiguration => {
            GroupAttributeField    => 'MyString',    # min: 1, max: 2048
            UserNameAttributeField => 'MyString',    # min: 1, max: 2048

          },    # OPTIONAL
          JwtTokenTypeConfiguration => {
            KeyLocation         => 'URL',          # values: URL, SECRET_MANAGER
            ClaimRegex          => 'MyClaimRegex', # min: 1, max: 100; OPTIONAL
            GroupAttributeField =>
              'MyGroupAttributeField',             # min: 1, max: 100; OPTIONAL
            Issuer                 => 'MyIssuer',  # min: 1, max: 65; OPTIONAL
            SecretManagerArn       => 'MyRoleArn', # max: 1284
            URL                    => 'MyUrl',     # min: 1, max: 2048; OPTIONAL
            UserNameAttributeField =>
              'MyUserNameAttributeField',          # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Id = $CreateIndexResponse->Id;

    # Returns a L<Paws::Kendra::CreateIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateIndex>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that you provide to identify the request to create an index.
Multiple calls to the C<CreateIndex> API with the same client token
will create only one index.



=head2 Description => Str

A description for the index.



=head2 Edition => Str

The Amazon Kendra edition to use for the index. Choose
C<DEVELOPER_EDITION> for indexes intended for development, testing, or
proof of concept. Use C<ENTERPRISE_EDITION> for production. Use
C<GEN_AI_ENTERPRISE_EDITION> for creating generative AI applications.
Once you set the edition for an index, it can't be changed.

The C<Edition> parameter is optional. If you don't supply a value, the
default is C<ENTERPRISE_EDITION>.

For more information on quota limits for Gen AI Enterprise Edition,
Enterprise Edition, and Developer Edition indices, see Quotas
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

Valid values are: C<"DEVELOPER_EDITION">, C<"ENTERPRISE_EDITION">, C<"GEN_AI_ENTERPRISE_EDITION">

=head2 B<REQUIRED> Name => Str

A name for the index.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
your Amazon CloudWatch logs and metrics. For more information, see IAM
access roles for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).



=head2 ServerSideEncryptionConfiguration => L<Paws::Kendra::ServerSideEncryptionConfiguration>

The identifier of the KMS customer managed key (CMK) that's used to
encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
asymmetric CMKs.



=head2 Tags => ArrayRef[L<Paws::Kendra::Tag>]

A list of key-value pairs that identify or categorize the index. You
can also use tags to help control access to the index. Tag keys and
values can consist of Unicode letters, digits, white space, and any of
the following symbols: _ . : / = + - @.



=head2 UserContextPolicy => Str

The user context policy.

If you're using an Amazon Kendra Gen AI Enterprise Edition index, you
can only use C<ATTRIBUTE_FILTER> to filter search results by user
context. If you're using an Amazon Kendra Gen AI Enterprise Edition
index and you try to use C<USER_TOKEN> to configure user context
policy, Amazon Kendra returns a C<ValidationException> error.

=over

=item ATTRIBUTE_FILTER

All indexed content is searchable and displayable for all users. If you
want to filter search results on user context, you can use the
attribute filters of C<_user_id> and C<_group_ids> or you can provide
user and group information in C<UserContext>.

=item USER_TOKEN

Enables token-based user access control to filter search results on
user context. All documents with no access control and all documents
accessible to the user will be searchable and displayable.

=back


Valid values are: C<"ATTRIBUTE_FILTER">, C<"USER_TOKEN">

=head2 UserGroupResolutionConfiguration => L<Paws::Kendra::UserGroupResolutionConfiguration>

Gets users and groups from IAM Identity Center identity source. To
configure this, see UserGroupResolutionConfiguration
(https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html).
This is useful for user context filtering, where search results are
filtered based on the user or their group access to documents.

If you're using an Amazon Kendra Gen AI Enterprise Edition index,
C<UserGroupResolutionConfiguration> isn't supported.



=head2 UserTokenConfigurations => ArrayRef[L<Paws::Kendra::UserTokenConfiguration>]

The user token configuration.

If you're using an Amazon Kendra Gen AI Enterprise Edition index and
you try to use C<UserTokenConfigurations> to configure user context
policy, Amazon Kendra returns a C<ValidationException> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIndex in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

