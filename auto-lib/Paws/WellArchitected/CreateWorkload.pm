
package Paws::WellArchitected::CreateWorkload;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Applications => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ArchitecturalDesign => (is => 'ro', isa => 'Str');
  has AwsRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has DiscoveryConfig => (is => 'ro', isa => 'Paws::WellArchitected::WorkloadDiscoveryConfig');
  has Environment => (is => 'ro', isa => 'Str', required => 1);
  has Industry => (is => 'ro', isa => 'Str');
  has IndustryType => (is => 'ro', isa => 'Str');
  has JiraConfiguration => (is => 'ro', isa => 'Paws::WellArchitected::WorkloadJiraConfigurationInput');
  has Lenses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NonAwsRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Notes => (is => 'ro', isa => 'Str');
  has PillarPriorities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ProfileArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReviewOwner => (is => 'ro', isa => 'Str');
  has ReviewTemplateArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'Paws::WellArchitected::TagMap');
  has WorkloadName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::CreateWorkloadOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateWorkload - Arguments for method CreateWorkload on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkload on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method CreateWorkload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkload.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $CreateWorkloadOutput = $wellarchitected->CreateWorkload(
      ClientRequestToken => 'MyClientRequestToken',
      Description        => 'MyWorkloadDescription',
      Environment        => 'PRODUCTION',
      Lenses             => [
        'MyLensAlias', ...    # min: 1, max: 128
      ],
      WorkloadName => 'MyWorkloadName',
      AccountIds   => [
        'MyAwsAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      Applications => [
        'MyApplicationArn', ...    # max: 2084
      ],    # OPTIONAL
      ArchitecturalDesign => 'MyWorkloadArchitecturalDesign',    # OPTIONAL
      AwsRegions          => [
        'MyAwsRegion', ...                                       # max: 100
      ],    # OPTIONAL
      DiscoveryConfig => {
        TrustedAdvisorIntegrationStatus =>
          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        WorkloadResourceDefinition => [
          'WORKLOAD_METADATA', ...    # values: WORKLOAD_METADATA, APP_REGISTRY
        ],    # OPTIONAL
      },    # OPTIONAL
      Industry          => 'MyWorkloadIndustry',        # OPTIONAL
      IndustryType      => 'MyWorkloadIndustryType',    # OPTIONAL
      JiraConfiguration => {
        IssueManagementStatus =>
          'ENABLED',    # values: ENABLED, DISABLED, INHERIT; OPTIONAL
        IssueManagementType => 'AUTO',    # values: AUTO, MANUAL; OPTIONAL
        JiraProjectKey      => 'MyJiraProjectKey',  # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      NonAwsRegions => [
        'MyWorkloadNonAwsRegion', ...    # min: 3, max: 25
      ],    # OPTIONAL
      Notes            => 'MyNotes',    # OPTIONAL
      PillarPriorities => [
        'MyPillarId', ...               # min: 1, max: 64
      ],    # OPTIONAL
      ProfileArns => [
        'MyProfileArn', ...    # max: 2084
      ],    # OPTIONAL
      ReviewOwner        => 'MyWorkloadReviewOwner',    # OPTIONAL
      ReviewTemplateArns => [
        'MyTemplateArn', ...                            # min: 50, max: 250
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $WorkloadArn = $CreateWorkloadOutput->WorkloadArn;
    my $WorkloadId  = $CreateWorkloadOutput->WorkloadId;

    # Returns a L<Paws::WellArchitected::CreateWorkloadOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/CreateWorkload>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]





=head2 Applications => ArrayRef[Str|Undef]

List of AppRegistry application ARNs associated to the workload.



=head2 ArchitecturalDesign => Str





=head2 AwsRegions => ArrayRef[Str|Undef]





=head2 B<REQUIRED> ClientRequestToken => Str





=head2 B<REQUIRED> Description => Str





=head2 DiscoveryConfig => L<Paws::WellArchitected::WorkloadDiscoveryConfig>

Well-Architected discovery configuration settings associated to the
workload.



=head2 B<REQUIRED> Environment => Str



Valid values are: C<"PRODUCTION">, C<"PREPRODUCTION">

=head2 Industry => Str





=head2 IndustryType => Str





=head2 JiraConfiguration => L<Paws::WellArchitected::WorkloadJiraConfigurationInput>

Jira configuration settings when creating a workload.



=head2 B<REQUIRED> Lenses => ArrayRef[Str|Undef]





=head2 NonAwsRegions => ArrayRef[Str|Undef]





=head2 Notes => Str





=head2 PillarPriorities => ArrayRef[Str|Undef]





=head2 ProfileArns => ArrayRef[Str|Undef]

The list of profile ARNs associated with the workload.



=head2 ReviewOwner => Str





=head2 ReviewTemplateArns => ArrayRef[Str|Undef]

The list of review template ARNs to associate with the workload.



=head2 Tags => L<Paws::WellArchitected::TagMap>

The tags to be associated with the workload.



=head2 B<REQUIRED> WorkloadName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkload in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

