
package Paws::Kendra::DescribeIndexResponse;
  use Moose;
  has CapacityUnits => (is => 'ro', isa => 'Paws::Kendra::CapacityUnitsConfiguration');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DocumentMetadataConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentMetadataConfiguration]');
  has Edition => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IndexStatistics => (is => 'ro', isa => 'Paws::Kendra::IndexStatistics');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::Kendra::ServerSideEncryptionConfiguration');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');
  has UserContextPolicy => (is => 'ro', isa => 'Str');
  has UserGroupResolutionConfiguration => (is => 'ro', isa => 'Paws::Kendra::UserGroupResolutionConfiguration');
  has UserTokenConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::UserTokenConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeIndexResponse

=head1 ATTRIBUTES


=head2 CapacityUnits => L<Paws::Kendra::CapacityUnitsConfiguration>

For Enterprise Edition indexes, you can choose to use additional
capacity to meet the needs of your application. This contains the
capacity units used for the index. A query or document storage capacity
of zero indicates that the index is using the default capacity. For
more information on the default capacity for an index and adjusting
this, see Adjusting capacity
(https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html).


=head2 CreatedAt => Str

The Unix timestamp when the index was created.


=head2 Description => Str

The description for the index.


=head2 DocumentMetadataConfigurations => ArrayRef[L<Paws::Kendra::DocumentMetadataConfiguration>]

Configuration information for document metadata or fields. Document
metadata are fields or attributes associated with your documents. For
example, the company department name associated with each document.


=head2 Edition => Str

The Amazon Kendra edition used for the index. You decide the edition
when you create the index.

Valid values are: C<"DEVELOPER_EDITION">, C<"ENTERPRISE_EDITION">, C<"GEN_AI_ENTERPRISE_EDITION">
=head2 ErrorMessage => Str

When the C<Status> field value is C<FAILED>, the C<ErrorMessage> field
contains a message that explains why.


=head2 Id => Str

The identifier of the index.


=head2 IndexStatistics => L<Paws::Kendra::IndexStatistics>

Provides information about the number of FAQ questions and answers and
the number of text documents indexed.


=head2 Name => Str

The name of the index.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that gives Amazon Kendra
permission to write to your Amazon CloudWatch logs.


=head2 ServerSideEncryptionConfiguration => L<Paws::Kendra::ServerSideEncryptionConfiguration>

The identifier of the KMS customer master key (CMK) that is used to
encrypt your data. Amazon Kendra doesn't support asymmetric CMKs.


=head2 Status => Str

The current status of the index. When the value is C<ACTIVE>, the index
is ready for use. If the C<Status> field value is C<FAILED>, the
C<ErrorMessage> field contains a message that explains why.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">, C<"SYSTEM_UPDATING">
=head2 UpdatedAt => Str

The Unix timestamp when the index was last updated.


=head2 UserContextPolicy => Str

The user context policy for the Amazon Kendra index.

Valid values are: C<"ATTRIBUTE_FILTER">, C<"USER_TOKEN">
=head2 UserGroupResolutionConfiguration => L<Paws::Kendra::UserGroupResolutionConfiguration>

Whether you have enabled IAM Identity Center identity source for your
users and groups. This is useful for user context filtering, where
search results are filtered based on the user or their group access to
documents.


=head2 UserTokenConfigurations => ArrayRef[L<Paws::Kendra::UserTokenConfiguration>]

The user token configuration for the Amazon Kendra index.


=head2 _request_id => Str


=cut

1;