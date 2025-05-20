
package Paws::Inspector2::CreateFindingsReport;
  use Moose;
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::FilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has ReportFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportFormat', required => 1);
  has S3Destination => (is => 'ro', isa => 'Paws::Inspector2::Destination', traits => ['NameInRequest'], request_name => 's3Destination', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFindingsReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reporting/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::CreateFindingsReportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CreateFindingsReport - Arguments for method CreateFindingsReport on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFindingsReport on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method CreateFindingsReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFindingsReport.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $CreateFindingsReportResponse = $inspector2->CreateFindingsReport(
      ReportFormat  => 'CSV',
      S3Destination => {
        BucketName => 'MyString',
        KmsKeyArn  => 'MyString',
        KeyPrefix  => 'MyString',
      },
      FilterCriteria => {
        AwsAccountId => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        CodeVulnerabilityDetectorName => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        CodeVulnerabilityDetectorTags => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        CodeVulnerabilityFilePath => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ComponentId => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ComponentType => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        Ec2InstanceImageId => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        Ec2InstanceSubnetId => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        Ec2InstanceVpcId => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrImageArchitecture => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrImageHash => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrImagePushedAt => [
          {
            EndInclusive   => '1970-01-01T01:00:00',    # OPTIONAL
            StartInclusive => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrImageRegistry => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrImageRepositoryName => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrImageTags => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EpssScore => [
          {
            LowerInclusive => 1,    # OPTIONAL
            UpperInclusive => 1,    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ExploitAvailable => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        FindingArn => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        FindingStatus => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        FindingType => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        FirstObservedAt => [
          {
            EndInclusive   => '1970-01-01T01:00:00',    # OPTIONAL
            StartInclusive => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        FixAvailable => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        InspectorScore => [
          {
            LowerInclusive => 1,    # OPTIONAL
            UpperInclusive => 1,    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionExecutionRoleArn => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionLastModifiedAt => [
          {
            EndInclusive   => '1970-01-01T01:00:00',    # OPTIONAL
            StartInclusive => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionLayers => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionName => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionRuntime => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LastObservedAt => [
          {
            EndInclusive   => '1970-01-01T01:00:00',    # OPTIONAL
            StartInclusive => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        NetworkProtocol => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        PortRange => [
          {
            BeginInclusive => 1,    # max: 65535; OPTIONAL
            EndInclusive   => 1,    # max: 65535; OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        RelatedVulnerabilities => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ResourceId => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ResourceTags => [
          {
            Comparison => 'EQUALS',        # values: EQUALS
            Key        => 'MyMapKey',      # min: 1, max: 128
            Value      => 'MyMapValue',    # max: 256; OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ResourceType => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        Severity => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        Title => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        UpdatedAt => [
          {
            EndInclusive   => '1970-01-01T01:00:00',    # OPTIONAL
            StartInclusive => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        VendorSeverity => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        VulnerabilityId => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        VulnerabilitySource => [
          {
            Comparison => 'EQUALS',         # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        VulnerablePackages => [
          {
            Architecture => {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            Epoch => {
              LowerInclusive => 1,              # OPTIONAL
              UpperInclusive => 1,              # OPTIONAL
            },
            FilePath => {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            Name => {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            Release => {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            SourceLambdaLayerArn => {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            SourceLayerHash => {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
            Version => {
              Comparison => 'EQUALS',    # values: EQUALS, PREFIX, NOT_EQUALS
              Value      => 'MyStringInput',    # min: 1, max: 1024

            },
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ReportId = $CreateFindingsReportResponse->ReportId;

    # Returns a L<Paws::Inspector2::CreateFindingsReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/CreateFindingsReport>

=head1 ATTRIBUTES


=head2 FilterCriteria => L<Paws::Inspector2::FilterCriteria>

The filter criteria to apply to the results of the finding report.



=head2 B<REQUIRED> ReportFormat => Str

The format to generate the report in.

Valid values are: C<"CSV">, C<"JSON">

=head2 B<REQUIRED> S3Destination => L<Paws::Inspector2::Destination>

The Amazon S3 export destination for the report.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFindingsReport in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

