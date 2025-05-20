
package Paws::Inspector2::CreateFilter;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::FilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason');
  has Tags => (is => 'ro', isa => 'Paws::Inspector2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/filters/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::CreateFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CreateFilter - Arguments for method CreateFilter on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFilter on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method CreateFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFilter.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $CreateFilterResponse = $inspector2->CreateFilter(
      Action         => 'NONE',
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
      },
      Name        => 'MyFilterName',
      Description => 'MyFilterDescription',    # OPTIONAL
      Reason      => 'MyFilterReason',         # OPTIONAL
      Tags        => {
        'MyMapKey' =>
          'MyMapValue',    # key: min: 1, max: 128, value: max: 256; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateFilterResponse->Arn;

    # Returns a L<Paws::Inspector2::CreateFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/CreateFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

Defines the action that is to be applied to the findings that match the
filter.

Valid values are: C<"NONE">, C<"SUPPRESS">

=head2 Description => Str

A description of the filter.



=head2 B<REQUIRED> FilterCriteria => L<Paws::Inspector2::FilterCriteria>

Defines the criteria to be used in the filter for querying findings.



=head2 B<REQUIRED> Name => Str

The name of the filter. Minimum length of 3. Maximum length of 64.
Valid characters include alphanumeric characters, dot (.), underscore
(_), and dash (-). Spaces are not allowed.



=head2 Reason => Str

The reason for creating the filter.



=head2 Tags => L<Paws::Inspector2::TagMap>

A list of tags for the filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFilter in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

