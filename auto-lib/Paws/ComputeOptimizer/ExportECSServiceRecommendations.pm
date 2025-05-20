
package Paws::ComputeOptimizer::ExportECSServiceRecommendations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds' );
  has FieldsToExport => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'fieldsToExport' );
  has FileFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileFormat' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::ECSServiceRecommendationFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has IncludeMemberAccounts => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeMemberAccounts' );
  has S3DestinationConfig => (is => 'ro', isa => 'Paws::ComputeOptimizer::S3DestinationConfig', traits => ['NameInRequest'], request_name => 's3DestinationConfig' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportECSServiceRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::ExportECSServiceRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::ExportECSServiceRecommendations - Arguments for method ExportECSServiceRecommendations on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportECSServiceRecommendations on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method ExportECSServiceRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportECSServiceRecommendations.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $ExportECSServiceRecommendationsResponse =
      $compute -optimizer->ExportECSServiceRecommendations(
      S3DestinationConfig => {
        Bucket    => 'MyDestinationBucket',       # OPTIONAL
        KeyPrefix => 'MyDestinationKeyPrefix',    # OPTIONAL
      },
      AccountIds     => [ 'MyAccountId', ... ],    # OPTIONAL
      FieldsToExport => [
        'AccountId',
        ... # values: AccountId, ServiceArn, LookbackPeriodInDays, LastRefreshTimestamp, LaunchType, CurrentPerformanceRisk, CurrentServiceConfigurationMemory, CurrentServiceConfigurationCpu, CurrentServiceConfigurationTaskDefinitionArn, CurrentServiceConfigurationAutoScalingConfiguration, CurrentServiceContainerConfigurations, UtilizationMetricsCpuMaximum, UtilizationMetricsMemoryMaximum, Finding, FindingReasonCodes, RecommendationOptionsMemory, RecommendationOptionsCpu, RecommendationOptionsSavingsOpportunityPercentage, RecommendationOptionsEstimatedMonthlySavingsCurrency, RecommendationOptionsEstimatedMonthlySavingsValue, RecommendationOptionsContainerRecommendations, RecommendationOptionsProjectedUtilizationMetricsCpuMaximum, RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum, Tags, EffectiveRecommendationPreferencesSavingsEstimationMode, RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage, RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts, RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts
      ],    # OPTIONAL
      FileFormat => 'Csv',    # OPTIONAL
      Filters    => [
        {
          Name   => 'Finding',    # values: Finding, FindingReasonCode; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IncludeMemberAccounts => 1,    # OPTIONAL
      );

    # Results:
    my $JobId         = $ExportECSServiceRecommendationsResponse->JobId;
    my $S3Destination = $ExportECSServiceRecommendationsResponse->S3Destination;

# Returns a L<Paws::ComputeOptimizer::ExportECSServiceRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/ExportECSServiceRecommendations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The Amazon Web Services account IDs for the export Amazon ECS service
recommendations.

If your account is the management account or the delegated
administrator of an organization, use this parameter to specify the
member account you want to export recommendations to.

This parameter can't be specified together with the include member
accounts parameter. The parameters are mutually exclusive.

If this parameter or the include member accounts parameter is omitted,
the recommendations for member accounts aren't included in the export.

You can specify multiple account IDs per request.



=head2 FieldsToExport => ArrayRef[Str|Undef]

The recommendations data to include in the export file. For more
information about the fields that can be exported, see Exported files
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files)
in the I<Compute Optimizer User Guide>.



=head2 FileFormat => Str

The format of the export file.

The CSV file is the only export file format currently supported.

Valid values are: C<"Csv">

=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::ECSServiceRecommendationFilter>]

An array of objects to specify a filter that exports a more specific
set of Amazon ECS service recommendations.



=head2 IncludeMemberAccounts => Bool

If your account is the management account or the delegated
administrator of an organization, this parameter indicates whether to
include recommendations for resources in all member accounts of the
organization.

The member accounts must also be opted in to Compute Optimizer, and
trusted access for Compute Optimizer must be enabled in the
organization account. For more information, see Compute Optimizer and
Amazon Web Services Organizations trusted access
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access)
in the I<Compute Optimizer User Guide>.

If this parameter is omitted, recommendations for member accounts of
the organization aren't included in the export file.

If this parameter or the account ID parameter is omitted,
recommendations for member accounts aren't included in the export.



=head2 B<REQUIRED> S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportECSServiceRecommendations in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

