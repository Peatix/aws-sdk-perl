
package Paws::Inspector2::CreateSbomExport;
  use Moose;
  has ReportFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportFormat', required => 1);
  has ResourceFilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::ResourceFilterCriteria', traits => ['NameInRequest'], request_name => 'resourceFilterCriteria');
  has S3Destination => (is => 'ro', isa => 'Paws::Inspector2::Destination', traits => ['NameInRequest'], request_name => 's3Destination', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSbomExport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sbomexport/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::CreateSbomExportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CreateSbomExport - Arguments for method CreateSbomExport on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSbomExport on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method CreateSbomExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSbomExport.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $CreateSbomExportResponse = $inspector2->CreateSbomExport(
      ReportFormat  => 'CYCLONEDX_1_4',
      S3Destination => {
        BucketName => 'MyString',
        KmsKeyArn  => 'MyString',
        KeyPrefix  => 'MyString',
      },
      ResourceFilterCriteria => {
        AccountId => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyResourceStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        Ec2InstanceTags => [
          {
            Comparison => 'EQUALS',              # values: EQUALS
            Key        => 'MyNonEmptyString',    # min: 1
            Value      => 'MyNonEmptyString',    # min: 1
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrImageTags => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyResourceStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrRepositoryName => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyResourceStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionName => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyResourceStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionTags => [
          {
            Comparison => 'EQUALS',              # values: EQUALS
            Key        => 'MyNonEmptyString',    # min: 1
            Value      => 'MyNonEmptyString',    # min: 1
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ResourceId => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyResourceStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ResourceType => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyResourceStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ReportId = $CreateSbomExportResponse->ReportId;

    # Returns a L<Paws::Inspector2::CreateSbomExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/CreateSbomExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportFormat => Str

The output format for the software bill of materials (SBOM) report.

Valid values are: C<"CYCLONEDX_1_4">, C<"SPDX_2_3">

=head2 ResourceFilterCriteria => L<Paws::Inspector2::ResourceFilterCriteria>

The resource filter criteria for the software bill of materials (SBOM)
report.



=head2 B<REQUIRED> S3Destination => L<Paws::Inspector2::Destination>

Contains details of the Amazon S3 bucket and KMS key used to export
findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSbomExport in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

