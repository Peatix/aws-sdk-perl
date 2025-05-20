
package Paws::Kendra::DescribeQuerySuggestionsBlockListResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has FileSizeBytes => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str');
  has ItemCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SourceS3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeQuerySuggestionsBlockListResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The Unix timestamp when a block list for query suggestions was created.


=head2 Description => Str

The description for the block list.


=head2 ErrorMessage => Str

The error message containing details if there are issues processing the
block list.


=head2 FileSizeBytes => Int

The current size of the block list text file in S3.


=head2 Id => Str

The identifier of the block list.


=head2 IndexId => Str

The identifier of the index for the block list.


=head2 ItemCount => Int

The current number of valid, non-empty words or phrases in the block
list text file.


=head2 Name => Str

The name of the block list.


=head2 RoleArn => Str

The IAM (Identity and Access Management) role used by Amazon Kendra to
access the block list text file in S3.

The role needs S3 read permissions to your file in S3 and needs to give
STS (Security Token Service) assume role permissions to Amazon Kendra.


=head2 SourceS3Path => L<Paws::Kendra::S3Path>

Shows the current S3 path to your block list text file in your S3
bucket.

Each block word or phrase should be on a separate line in a text file.

For information on the current quota limits for block lists, see Quotas
for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).


=head2 Status => Str

The current status of the block list. When the value is C<ACTIVE>, the
block list is ready for use.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"DELETING">, C<"UPDATING">, C<"ACTIVE_BUT_UPDATE_FAILED">, C<"FAILED">
=head2 UpdatedAt => Str

The Unix timestamp when a block list for query suggestions was last
updated.


=head2 _request_id => Str


=cut

1;