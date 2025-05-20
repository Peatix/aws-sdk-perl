
package Paws::ApplicationMigration::StartExport;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Bucket', required => 1);
  has S3BucketOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3BucketOwner');
  has S3Key => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Key', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartExport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartExport');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::StartExportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::StartExport - Arguments for method StartExport on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExport on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method StartExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExport.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $StartExportResponse = $mgn->StartExport(
      S3Bucket      => 'MyS3BucketName',
      S3Key         => 'MyS3Key',
      S3BucketOwner => 'MyAccountID',      # OPTIONAL
    );

    # Results:
    my $ExportTask = $StartExportResponse->ExportTask;

    # Returns a L<Paws::ApplicationMigration::StartExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/StartExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Bucket => Str

Start export request s3 bucket.



=head2 S3BucketOwner => Str

Start export request s3 bucket owner.



=head2 B<REQUIRED> S3Key => Str

Start export request s3key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExport in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

