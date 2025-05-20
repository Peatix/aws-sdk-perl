
package Paws::Inspector2::ListFindings;
  use Moose;
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::FilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortCriteria => (is => 'ro', isa => 'Paws::Inspector2::SortCriteria', traits => ['NameInRequest'], request_name => 'sortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::ListFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListFindings - Arguments for method ListFindings on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFindings on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method ListFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFindings.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $ListFindingsResponse = $inspector2->ListFindings(
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
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      SortCriteria => {
        Field => 'AWS_ACCOUNT_ID'
        , # values: AWS_ACCOUNT_ID, FINDING_TYPE, SEVERITY, FIRST_OBSERVED_AT, LAST_OBSERVED_AT, FINDING_STATUS, RESOURCE_TYPE, ECR_IMAGE_PUSHED_AT, ECR_IMAGE_REPOSITORY_NAME, ECR_IMAGE_REGISTRY, NETWORK_PROTOCOL, COMPONENT_TYPE, VULNERABILITY_ID, VULNERABILITY_SOURCE, INSPECTOR_SCORE, VENDOR_SEVERITY, EPSS_SCORE
        SortOrder => 'ASC',    # values: ASC, DESC

      },    # OPTIONAL
    );

    # Results:
    my $Findings  = $ListFindingsResponse->Findings;
    my $NextToken = $ListFindingsResponse->NextToken;

    # Returns a L<Paws::Inspector2::ListFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/ListFindings>

=head1 ATTRIBUTES


=head2 FilterCriteria => L<Paws::Inspector2::FilterCriteria>

Details on the filters to apply to your finding results.



=head2 MaxResults => Int

The maximum number of results the response can return. If your request
would return more than the maximum the response will return a
C<nextToken> value, use this value when you call the action again to
get the remaining results.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. If your response returns more than the C<maxResults>
maximum value it will also return a C<nextToken> value. For subsequent
calls, use the C<nextToken> value returned from the previous request to
continue listing results after the first page.



=head2 SortCriteria => L<Paws::Inspector2::SortCriteria>

Details on the sort criteria to apply to your finding results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFindings in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

