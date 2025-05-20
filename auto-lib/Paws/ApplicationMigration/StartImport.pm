
package Paws::ApplicationMigration::StartImport;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has S3BucketSource => (is => 'ro', isa => 'Paws::ApplicationMigration::S3BucketSource', traits => ['NameInRequest'], request_name => 's3BucketSource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartImport');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::StartImportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::StartImport - Arguments for method StartImport on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImport on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method StartImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImport.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $StartImportResponse = $mgn->StartImport(
      S3BucketSource => {
        S3Bucket      => 'MyS3BucketName',
        S3Key         => 'MyS3Key',
        S3BucketOwner => 'MyAccountID',      # min: 12, max: 12; OPTIONAL
      },
      ClientToken => 'MyClientIdempotencyToken',    # OPTIONAL
    );

    # Results:
    my $ImportTask = $StartImportResponse->ImportTask;

    # Returns a L<Paws::ApplicationMigration::StartImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/StartImport>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Start import request client token.



=head2 B<REQUIRED> S3BucketSource => L<Paws::ApplicationMigration::S3BucketSource>

Start import request s3 bucket source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImport in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

