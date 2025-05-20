
package Paws::Datasync::CreateLocationS3;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has S3BucketArn => (is => 'ro', isa => 'Str', required => 1);
  has S3Config => (is => 'ro', isa => 'Paws::Datasync::S3Config', required => 1);
  has S3StorageClass => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationS3');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationS3Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationS3 - Arguments for method CreateLocationS3 on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationS3 on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationS3.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationS3Response = $datasync->CreateLocationS3(
      S3BucketArn => 'MyS3BucketArn',
      S3Config    => {
        BucketAccessRoleArn => 'MyIamRoleArn',    # max: 2048

      },
      AgentArns => [
        'MyAgentArn', ...                         # max: 128
      ],    # OPTIONAL
      S3StorageClass => 'STANDARD',            # OPTIONAL
      Subdirectory   => 'MyS3Subdirectory',    # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationS3Response->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationS3Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationS3>

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

(Amazon S3 on Outposts only) Specifies the Amazon Resource Name (ARN)
of the DataSync agent on your Outpost.

For more information, see Deploy your DataSync agent on Outposts
(https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent).



=head2 B<REQUIRED> S3BucketArn => Str

Specifies the ARN of the S3 bucket that you want to use as a location.
(When creating your DataSync task later, you specify whether this
location is a transfer source or destination.)

If your S3 bucket is located on an Outposts resource, you must specify
an Amazon S3 access point. For more information, see Managing data
access with Amazon S3 access points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html)
in the I<Amazon S3 User Guide>.



=head2 B<REQUIRED> S3Config => L<Paws::Datasync::S3Config>





=head2 S3StorageClass => Str

Specifies the storage class that you want your objects to use when
Amazon S3 is a transfer destination.

For buckets in Amazon Web Services Regions, the storage class defaults
to C<STANDARD>. For buckets on Outposts, the storage class defaults to
C<OUTPOSTS>.

For more information, see Storage class considerations with Amazon S3
transfers
(https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes).

Valid values are: C<"STANDARD">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">, C<"GLACIER_INSTANT_RETRIEVAL">

=head2 Subdirectory => Str

Specifies a prefix in the S3 bucket that DataSync reads from or writes
to (depending on whether the bucket is a source or destination
location).

DataSync can't transfer objects with a prefix that begins with a slash
(C</>) or includes C<//>, C</./>, or C</../> patterns. For example:

=over

=item *

C</photos>

=item *

C<photos//2006/January>

=item *

C<photos/./2006/February>

=item *

C<photos/../2006/March>

=back




=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies labels that help you categorize, filter, and search for your
Amazon Web Services resources. We recommend creating at least a name
tag for your transfer location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationS3 in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

