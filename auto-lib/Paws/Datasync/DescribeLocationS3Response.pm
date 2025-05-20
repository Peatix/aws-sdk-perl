
package Paws::Datasync::DescribeLocationS3Response;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has S3Config => (is => 'ro', isa => 'Paws::Datasync::S3Config');
  has S3StorageClass => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationS3Response

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

The ARNs of the DataSync agents deployed on your Outpost when using
working with Amazon S3 on Outposts.

For more information, see Deploy your DataSync agent on Outposts
(https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent).


=head2 CreationTime => Str

The time that the Amazon S3 location was created.


=head2 LocationArn => Str

The ARN of the Amazon S3 location.


=head2 LocationUri => Str

The URL of the Amazon S3 location that was described.


=head2 S3Config => L<Paws::Datasync::S3Config>




=head2 S3StorageClass => Str

When Amazon S3 is a destination location, this is the storage class
that you chose for your objects.

Some storage classes have behaviors that can affect your Amazon S3
storage costs. For more information, see Storage class considerations
with Amazon S3 transfers
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes).

Valid values are: C<"STANDARD">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">, C<"GLACIER_INSTANT_RETRIEVAL">
=head2 _request_id => Str


=cut

1;