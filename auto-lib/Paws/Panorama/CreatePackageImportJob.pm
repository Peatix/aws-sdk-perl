
package Paws::Panorama::CreatePackageImportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has InputConfig => (is => 'ro', isa => 'Paws::Panorama::PackageImportJobInputConfig', required => 1);
  has JobTags => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::JobResourceTags]');
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::Panorama::PackageImportJobOutputConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePackageImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/import-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::CreatePackageImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::CreatePackageImportJob - Arguments for method CreatePackageImportJob on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePackageImportJob on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method CreatePackageImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePackageImportJob.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $CreatePackageImportJobResponse = $panorama->CreatePackageImportJob(
      ClientToken => 'MyClientToken',
      InputConfig => {
        PackageVersionInputConfig => {
          S3Location => {
            BucketName => 'MyBucketName',    # min: 1, max: 255
            ObjectKey  => 'MyObjectKey',     # min: 1, max: 255
            Region     => 'MyRegion',        # min: 1, max: 255; OPTIONAL
          },

        },    # OPTIONAL
      },
      JobType      => 'NODE_PACKAGE_VERSION',
      OutputConfig => {
        PackageVersionOutputConfig => {
          PackageName    => 'MyNodePackageName',       # min: 1, max: 128
          PackageVersion => 'MyNodePackageVersion',    # min: 1, max: 255
          MarkLatest     => 1,                         # OPTIONAL
        },    # OPTIONAL
      },
      JobTags => [
        {
          ResourceType => 'PACKAGE',    # values: PACKAGE
          Tags         => {
            'MyTagKey' => 'MyTagValue', # key: min: 1, max: 128, value: max: 256
          },    # max: 50

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $JobId = $CreatePackageImportJobResponse->JobId;

    # Returns a L<Paws::Panorama::CreatePackageImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/CreatePackageImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A client token for the package import job.



=head2 B<REQUIRED> InputConfig => L<Paws::Panorama::PackageImportJobInputConfig>

An input config for the package import job.



=head2 JobTags => ArrayRef[L<Paws::Panorama::JobResourceTags>]

Tags for the package import job.



=head2 B<REQUIRED> JobType => Str

A job type for the package import job.

Valid values are: C<"NODE_PACKAGE_VERSION">, C<"MARKETPLACE_NODE_PACKAGE_VERSION">

=head2 B<REQUIRED> OutputConfig => L<Paws::Panorama::PackageImportJobOutputConfig>

An output config for the package import job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePackageImportJob in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

