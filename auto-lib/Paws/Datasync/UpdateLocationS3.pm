
package Paws::Datasync::UpdateLocationS3;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has S3Config => (is => 'ro', isa => 'Paws::Datasync::S3Config');
  has S3StorageClass => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationS3');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationS3Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationS3 - Arguments for method UpdateLocationS3 on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationS3 on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationS3.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationS3Response = $datasync->UpdateLocationS3(
      LocationArn => 'MyLocationArn',
      S3Config    => {
        BucketAccessRoleArn => 'MyIamRoleArn',    # max: 2048

      },    # OPTIONAL
      S3StorageClass => 'STANDARD',            # OPTIONAL
      Subdirectory   => 'MyS3Subdirectory',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationS3>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

Specifies the Amazon Resource Name (ARN) of the Amazon S3 transfer
location that you're updating.



=head2 S3Config => L<Paws::Datasync::S3Config>





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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationS3 in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

