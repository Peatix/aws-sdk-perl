package Paws::Resiliencehub;
  use Moose;
  sub service { 'resiliencehub' }
  sub signing_name { 'resiliencehub' }
  sub version { '2020-04-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptResourceGroupingRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::AcceptResourceGroupingRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddDraftAppVersionResourceMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::AddDraftAppVersionResourceMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateRecommendationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::BatchUpdateRecommendationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::CreateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppVersionAppComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::CreateAppVersionAppComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppVersionResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::CreateAppVersionResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRecommendationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::CreateRecommendationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResiliencyPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::CreateResiliencyPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DeleteApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DeleteAppAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppInputSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DeleteAppInputSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppVersionAppComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DeleteAppVersionAppComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppVersionResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DeleteAppVersionResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecommendationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DeleteRecommendationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResiliencyPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DeleteResiliencyPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeAppAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeAppVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppVersionAppComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeAppVersionAppComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppVersionResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeAppVersionResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppVersionResourcesResolutionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeAppVersionResourcesResolutionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppVersionTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeAppVersionTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDraftAppVersionResourcesImportStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeDraftAppVersionResourcesImportStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetricsExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeMetricsExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResiliencyPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeResiliencyPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourceGroupingRecommendationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::DescribeResourceGroupingRecommendationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportResourcesToDraftAppVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ImportResourcesToDraftAppVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAlarmRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAlarmRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppAssessmentComplianceDrifts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppAssessmentComplianceDrifts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppAssessmentResourceDrifts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppAssessmentResourceDrifts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppAssessments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppAssessments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppComponentCompliances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppComponentCompliances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppComponentRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppComponentRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppInputSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppInputSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppVersionAppComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppVersionAppComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppVersionResourceMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppVersionResourceMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppVersionResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppVersionResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListAppVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommendationTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListRecommendationTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResiliencyPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListResiliencyPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceGroupingRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListResourceGroupingRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSopRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListSopRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSuggestedResiliencyPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListSuggestedResiliencyPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListTestRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUnsupportedAppVersionResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ListUnsupportedAppVersionResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishAppVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::PublishAppVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDraftAppVersionTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::PutDraftAppVersionTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectResourceGroupingRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::RejectResourceGroupingRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveDraftAppVersionResourceMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::RemoveDraftAppVersionResourceMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveAppVersionResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::ResolveAppVersionResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAppAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::StartAppAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMetricsExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::StartMetricsExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartResourceGroupingRecommendationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::StartResourceGroupingRecommendationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::UpdateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::UpdateAppVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppVersionAppComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::UpdateAppVersionAppComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppVersionResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::UpdateAppVersionResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResiliencyPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Resiliencehub::UpdateResiliencyPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAppAssessmentResourceDrifts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAppAssessmentResourceDrifts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAppAssessmentResourceDrifts(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourceDrifts }, @{ $next_result->resourceDrifts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourceDrifts') foreach (@{ $result->resourceDrifts });
        $result = $self->ListAppAssessmentResourceDrifts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourceDrifts') foreach (@{ $result->resourceDrifts });
    }

    return undef
  }
  sub ListAllMetrics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMetrics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMetrics(@_, nextToken => $next_result->nextToken);
        push @{ $result->rows }, @{ $next_result->rows };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'rows') foreach (@{ $result->rows });
        $result = $self->ListMetrics(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'rows') foreach (@{ $result->rows });
    }

    return undef
  }
  sub ListAllResourceGroupingRecommendations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceGroupingRecommendations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResourceGroupingRecommendations(@_, nextToken => $next_result->nextToken);
        push @{ $result->groupingRecommendations }, @{ $next_result->groupingRecommendations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'groupingRecommendations') foreach (@{ $result->groupingRecommendations });
        $result = $self->ListResourceGroupingRecommendations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'groupingRecommendations') foreach (@{ $result->groupingRecommendations });
    }

    return undef
  }


  sub operations { qw/AcceptResourceGroupingRecommendations AddDraftAppVersionResourceMappings BatchUpdateRecommendationStatus CreateApp CreateAppVersionAppComponent CreateAppVersionResource CreateRecommendationTemplate CreateResiliencyPolicy DeleteApp DeleteAppAssessment DeleteAppInputSource DeleteAppVersionAppComponent DeleteAppVersionResource DeleteRecommendationTemplate DeleteResiliencyPolicy DescribeApp DescribeAppAssessment DescribeAppVersion DescribeAppVersionAppComponent DescribeAppVersionResource DescribeAppVersionResourcesResolutionStatus DescribeAppVersionTemplate DescribeDraftAppVersionResourcesImportStatus DescribeMetricsExport DescribeResiliencyPolicy DescribeResourceGroupingRecommendationTask ImportResourcesToDraftAppVersion ListAlarmRecommendations ListAppAssessmentComplianceDrifts ListAppAssessmentResourceDrifts ListAppAssessments ListAppComponentCompliances ListAppComponentRecommendations ListAppInputSources ListApps ListAppVersionAppComponents ListAppVersionResourceMappings ListAppVersionResources ListAppVersions ListMetrics ListRecommendationTemplates ListResiliencyPolicies ListResourceGroupingRecommendations ListSopRecommendations ListSuggestedResiliencyPolicies ListTagsForResource ListTestRecommendations ListUnsupportedAppVersionResources PublishAppVersion PutDraftAppVersionTemplate RejectResourceGroupingRecommendations RemoveDraftAppVersionResourceMappings ResolveAppVersionResources StartAppAssessment StartMetricsExport StartResourceGroupingRecommendationTask TagResource UntagResource UpdateApp UpdateAppVersion UpdateAppVersionAppComponent UpdateAppVersionResource UpdateResiliencyPolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub - Perl Interface to AWS AWS Resilience Hub

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Resiliencehub');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Resilience Hub helps you proactively prepare and protect your Amazon
Web Services applications from disruptions. It offers continual
resiliency assessment and validation that integrates into your software
development lifecycle. This enables you to uncover resiliency
weaknesses, ensure recovery time objective (RTO) and recovery point
objective (RPO) targets for your applications are met, and resolve
issues before they are released into production.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30>


=head1 METHODS

=head2 AcceptResourceGroupingRecommendations

=over

=item AppArn => Str

=item Entries => ArrayRef[L<Paws::Resiliencehub::AcceptGroupingRecommendationEntry>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::AcceptResourceGroupingRecommendations>

Returns: a L<Paws::Resiliencehub::AcceptResourceGroupingRecommendationsResponse> instance

Accepts the resource grouping recommendations suggested by Resilience
Hub for your application.


=head2 AddDraftAppVersionResourceMappings

=over

=item AppArn => Str

=item ResourceMappings => ArrayRef[L<Paws::Resiliencehub::ResourceMapping>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::AddDraftAppVersionResourceMappings>

Returns: a L<Paws::Resiliencehub::AddDraftAppVersionResourceMappingsResponse> instance

Adds the source of resource-maps to the draft version of an
application. During assessment, Resilience Hub will use these
resource-maps to resolve the latest physical ID for each resource in
the application template. For more information about different types of
resources supported by Resilience Hub and how to add them in your
application, see Step 2: How is your application managed?
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/how-app-manage.html)
in the Resilience Hub User Guide.


=head2 BatchUpdateRecommendationStatus

=over

=item AppArn => Str

=item RequestEntries => ArrayRef[L<Paws::Resiliencehub::UpdateRecommendationStatusRequestEntry>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::BatchUpdateRecommendationStatus>

Returns: a L<Paws::Resiliencehub::BatchUpdateRecommendationStatusResponse> instance

Enables you to include or exclude one or more operational
recommendations.


=head2 CreateApp

=over

=item Name => Str

=item [AssessmentSchedule => Str]

=item [AwsApplicationArn => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [EventSubscriptions => ArrayRef[L<Paws::Resiliencehub::EventSubscription>]]

=item [PermissionModel => L<Paws::Resiliencehub::PermissionModel>]

=item [PolicyArn => Str]

=item [Tags => L<Paws::Resiliencehub::TagMap>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::CreateApp>

Returns: a L<Paws::Resiliencehub::CreateAppResponse> instance

Creates an Resilience Hub application. An Resilience Hub application is
a collection of Amazon Web Services resources structured to prevent and
recover Amazon Web Services application disruptions. To describe a
Resilience Hub application, you provide an application name, resources
from one or more CloudFormation stacks, Resource Groups, Terraform
state files, AppRegistry applications, and an appropriate resiliency
policy. In addition, you can also add resources that are located on
Amazon Elastic Kubernetes Service (Amazon EKS) clusters as optional
resources. For more information about the number of resources supported
per application, see Service quotas
(https://docs.aws.amazon.com/general/latest/gr/resiliencehub.html#limits_resiliencehub).

After you create an Resilience Hub application, you publish it so that
you can run a resiliency assessment on it. You can then use
recommendations from the assessment to improve resiliency by running
another assessment, comparing results, and then iterating the process
until you achieve your goals for recovery time objective (RTO) and
recovery point objective (RPO).


=head2 CreateAppVersionAppComponent

=over

=item AppArn => Str

=item Name => Str

=item Type => Str

=item [AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>]

=item [ClientToken => Str]

=item [Id => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::CreateAppVersionAppComponent>

Returns: a L<Paws::Resiliencehub::CreateAppVersionAppComponentResponse> instance

Creates a new Application Component in the Resilience Hub application.

This API updates the Resilience Hub application draft version. To use
this Application Component for running assessments, you must publish
the Resilience Hub application using the C<PublishAppVersion> API.


=head2 CreateAppVersionResource

=over

=item AppArn => Str

=item AppComponents => ArrayRef[Str|Undef]

=item LogicalResourceId => L<Paws::Resiliencehub::LogicalResourceId>

=item PhysicalResourceId => Str

=item ResourceType => Str

=item [AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>]

=item [AwsAccountId => Str]

=item [AwsRegion => Str]

=item [ClientToken => Str]

=item [ResourceName => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::CreateAppVersionResource>

Returns: a L<Paws::Resiliencehub::CreateAppVersionResourceResponse> instance

Adds a resource to the Resilience Hub application and assigns it to the
specified Application Components. If you specify a new Application
Component, Resilience Hub will automatically create the Application
Component.

=over

=item *

This action has no effect outside Resilience Hub.

=item *

This API updates the Resilience Hub application draft version. To use
this resource for running resiliency assessments, you must publish the
Resilience Hub application using the C<PublishAppVersion> API.

=item *

To update application version with new C<physicalResourceID>, you must
call C<ResolveAppVersionResources> API.

=back



=head2 CreateRecommendationTemplate

=over

=item AssessmentArn => Str

=item Name => Str

=item [BucketName => Str]

=item [ClientToken => Str]

=item [Format => Str]

=item [RecommendationIds => ArrayRef[Str|Undef]]

=item [RecommendationTypes => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::Resiliencehub::TagMap>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::CreateRecommendationTemplate>

Returns: a L<Paws::Resiliencehub::CreateRecommendationTemplateResponse> instance

Creates a new recommendation template for the Resilience Hub
application.


=head2 CreateResiliencyPolicy

=over

=item Policy => L<Paws::Resiliencehub::DisruptionPolicy>

=item PolicyName => Str

=item Tier => Str

=item [ClientToken => Str]

=item [DataLocationConstraint => Str]

=item [PolicyDescription => Str]

=item [Tags => L<Paws::Resiliencehub::TagMap>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::CreateResiliencyPolicy>

Returns: a L<Paws::Resiliencehub::CreateResiliencyPolicyResponse> instance

Creates a resiliency policy for an application.

Resilience Hub allows you to provide a value of zero for C<rtoInSecs>
and C<rpoInSecs> of your resiliency policy. But, while assessing your
application, the lowest possible assessment result is near zero. Hence,
if you provide value zero for C<rtoInSecs> and C<rpoInSecs>, the
estimated workload RTO and estimated workload RPO result will be near
zero and the B<Compliance status> for your application will be set to
B<Policy breached>.


=head2 DeleteApp

=over

=item AppArn => Str

=item [ClientToken => Str]

=item [ForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DeleteApp>

Returns: a L<Paws::Resiliencehub::DeleteAppResponse> instance

Deletes an Resilience Hub application. This is a destructive action
that can't be undone.


=head2 DeleteAppAssessment

=over

=item AssessmentArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DeleteAppAssessment>

Returns: a L<Paws::Resiliencehub::DeleteAppAssessmentResponse> instance

Deletes an Resilience Hub application assessment. This is a destructive
action that can't be undone.


=head2 DeleteAppInputSource

=over

=item AppArn => Str

=item [ClientToken => Str]

=item [EksSourceClusterNamespace => L<Paws::Resiliencehub::EksSourceClusterNamespace>]

=item [SourceArn => Str]

=item [TerraformSource => L<Paws::Resiliencehub::TerraformSource>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DeleteAppInputSource>

Returns: a L<Paws::Resiliencehub::DeleteAppInputSourceResponse> instance

Deletes the input source and all of its imported resources from the
Resilience Hub application.


=head2 DeleteAppVersionAppComponent

=over

=item AppArn => Str

=item Id => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DeleteAppVersionAppComponent>

Returns: a L<Paws::Resiliencehub::DeleteAppVersionAppComponentResponse> instance

Deletes an Application Component from the Resilience Hub application.

=over

=item *

This API updates the Resilience Hub application draft version. To use
this Application Component for running assessments, you must publish
the Resilience Hub application using the C<PublishAppVersion> API.

=item *

You will not be able to delete an Application Component if it has
resources associated with it.

=back



=head2 DeleteAppVersionResource

=over

=item AppArn => Str

=item [AwsAccountId => Str]

=item [AwsRegion => Str]

=item [ClientToken => Str]

=item [LogicalResourceId => L<Paws::Resiliencehub::LogicalResourceId>]

=item [PhysicalResourceId => Str]

=item [ResourceName => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DeleteAppVersionResource>

Returns: a L<Paws::Resiliencehub::DeleteAppVersionResourceResponse> instance

Deletes a resource from the Resilience Hub application.

=over

=item *

You can only delete a manually added resource. To exclude non-manually
added resources, use the C<UpdateAppVersionResource> API.

=item *

This action has no effect outside Resilience Hub.

=item *

This API updates the Resilience Hub application draft version. To use
this resource for running resiliency assessments, you must publish the
Resilience Hub application using the C<PublishAppVersion> API.

=back



=head2 DeleteRecommendationTemplate

=over

=item RecommendationTemplateArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DeleteRecommendationTemplate>

Returns: a L<Paws::Resiliencehub::DeleteRecommendationTemplateResponse> instance

Deletes a recommendation template. This is a destructive action that
can't be undone.


=head2 DeleteResiliencyPolicy

=over

=item PolicyArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DeleteResiliencyPolicy>

Returns: a L<Paws::Resiliencehub::DeleteResiliencyPolicyResponse> instance

Deletes a resiliency policy. This is a destructive action that can't be
undone.


=head2 DescribeApp

=over

=item AppArn => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeApp>

Returns: a L<Paws::Resiliencehub::DescribeAppResponse> instance

Describes an Resilience Hub application.


=head2 DescribeAppAssessment

=over

=item AssessmentArn => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeAppAssessment>

Returns: a L<Paws::Resiliencehub::DescribeAppAssessmentResponse> instance

Describes an assessment for an Resilience Hub application.


=head2 DescribeAppVersion

=over

=item AppArn => Str

=item AppVersion => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeAppVersion>

Returns: a L<Paws::Resiliencehub::DescribeAppVersionResponse> instance

Describes the Resilience Hub application version.


=head2 DescribeAppVersionAppComponent

=over

=item AppArn => Str

=item AppVersion => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeAppVersionAppComponent>

Returns: a L<Paws::Resiliencehub::DescribeAppVersionAppComponentResponse> instance

Describes an Application Component in the Resilience Hub application.


=head2 DescribeAppVersionResource

=over

=item AppArn => Str

=item AppVersion => Str

=item [AwsAccountId => Str]

=item [AwsRegion => Str]

=item [LogicalResourceId => L<Paws::Resiliencehub::LogicalResourceId>]

=item [PhysicalResourceId => Str]

=item [ResourceName => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeAppVersionResource>

Returns: a L<Paws::Resiliencehub::DescribeAppVersionResourceResponse> instance

Describes a resource of the Resilience Hub application.

This API accepts only one of the following parameters to describe the
resource:

=over

=item *

C<resourceName>

=item *

C<logicalResourceId>

=item *

C<physicalResourceId> (Along with C<physicalResourceId>, you can also
provide C<awsAccountId>, and C<awsRegion>)

=back



=head2 DescribeAppVersionResourcesResolutionStatus

=over

=item AppArn => Str

=item AppVersion => Str

=item [ResolutionId => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeAppVersionResourcesResolutionStatus>

Returns: a L<Paws::Resiliencehub::DescribeAppVersionResourcesResolutionStatusResponse> instance

Returns the resolution status for the specified resolution identifier
for an application version. If C<resolutionId> is not specified, the
current resolution status is returned.


=head2 DescribeAppVersionTemplate

=over

=item AppArn => Str

=item AppVersion => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeAppVersionTemplate>

Returns: a L<Paws::Resiliencehub::DescribeAppVersionTemplateResponse> instance

Describes details about an Resilience Hub application.


=head2 DescribeDraftAppVersionResourcesImportStatus

=over

=item AppArn => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeDraftAppVersionResourcesImportStatus>

Returns: a L<Paws::Resiliencehub::DescribeDraftAppVersionResourcesImportStatusResponse> instance

Describes the status of importing resources to an application version.

If you get a 404 error with
C<ResourceImportStatusNotFoundAppMetadataException>, you must call
C<importResourcesToDraftAppVersion> after creating the application and
before calling C<describeDraftAppVersionResourcesImportStatus> to
obtain the status.


=head2 DescribeMetricsExport

=over

=item MetricsExportId => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeMetricsExport>

Returns: a L<Paws::Resiliencehub::DescribeMetricsExportResponse> instance

Describes the metrics of the application configuration being exported.


=head2 DescribeResiliencyPolicy

=over

=item PolicyArn => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeResiliencyPolicy>

Returns: a L<Paws::Resiliencehub::DescribeResiliencyPolicyResponse> instance

Describes a specified resiliency policy for an Resilience Hub
application. The returned policy object includes creation time, data
location constraints, the Amazon Resource Name (ARN) for the policy,
tags, tier, and more.


=head2 DescribeResourceGroupingRecommendationTask

=over

=item AppArn => Str

=item [GroupingId => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::DescribeResourceGroupingRecommendationTask>

Returns: a L<Paws::Resiliencehub::DescribeResourceGroupingRecommendationTaskResponse> instance

Describes the resource grouping recommendation tasks run by Resilience
Hub for your application.


=head2 ImportResourcesToDraftAppVersion

=over

=item AppArn => Str

=item [EksSources => ArrayRef[L<Paws::Resiliencehub::EksSource>]]

=item [ImportStrategy => Str]

=item [SourceArns => ArrayRef[Str|Undef]]

=item [TerraformSources => ArrayRef[L<Paws::Resiliencehub::TerraformSource>]]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ImportResourcesToDraftAppVersion>

Returns: a L<Paws::Resiliencehub::ImportResourcesToDraftAppVersionResponse> instance

Imports resources to Resilience Hub application draft version from
different input sources. For more information about the input sources
supported by Resilience Hub, see Discover the structure and describe
your Resilience Hub application
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).


=head2 ListAlarmRecommendations

=over

=item AssessmentArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAlarmRecommendations>

Returns: a L<Paws::Resiliencehub::ListAlarmRecommendationsResponse> instance

Lists the alarm recommendations for an Resilience Hub application.


=head2 ListAppAssessmentComplianceDrifts

=over

=item AssessmentArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppAssessmentComplianceDrifts>

Returns: a L<Paws::Resiliencehub::ListAppAssessmentComplianceDriftsResponse> instance

List of compliance drifts that were detected while running an
assessment.


=head2 ListAppAssessmentResourceDrifts

=over

=item AssessmentArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppAssessmentResourceDrifts>

Returns: a L<Paws::Resiliencehub::ListAppAssessmentResourceDriftsResponse> instance

List of resource drifts that were detected while running an assessment.


=head2 ListAppAssessments

=over

=item [AppArn => Str]

=item [AssessmentName => Str]

=item [AssessmentStatus => ArrayRef[Str|Undef]]

=item [ComplianceStatus => Str]

=item [Invoker => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReverseOrder => Bool]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppAssessments>

Returns: a L<Paws::Resiliencehub::ListAppAssessmentsResponse> instance

Lists the assessments for an Resilience Hub application. You can use
request parameters to refine the results for the response object.


=head2 ListAppComponentCompliances

=over

=item AssessmentArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppComponentCompliances>

Returns: a L<Paws::Resiliencehub::ListAppComponentCompliancesResponse> instance

Lists the compliances for an Resilience Hub Application Component.


=head2 ListAppComponentRecommendations

=over

=item AssessmentArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppComponentRecommendations>

Returns: a L<Paws::Resiliencehub::ListAppComponentRecommendationsResponse> instance

Lists the recommendations for an Resilience Hub Application Component.


=head2 ListAppInputSources

=over

=item AppArn => Str

=item AppVersion => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppInputSources>

Returns: a L<Paws::Resiliencehub::ListAppInputSourcesResponse> instance

Lists all the input sources of the Resilience Hub application. For more
information about the input sources supported by Resilience Hub, see
Discover the structure and describe your Resilience Hub application
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).


=head2 ListApps

=over

=item [AppArn => Str]

=item [AwsApplicationArn => Str]

=item [FromLastAssessmentTime => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [ReverseOrder => Bool]

=item [ToLastAssessmentTime => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListApps>

Returns: a L<Paws::Resiliencehub::ListAppsResponse> instance

Lists your Resilience Hub applications.

You can filter applications using only one filter at a time or without
using any filter. If you try to filter applications using multiple
filters, you will get the following error:

C<An error occurred (ValidationException) when calling the ListApps
operation: Only one filter is supported for this operation.>


=head2 ListAppVersionAppComponents

=over

=item AppArn => Str

=item AppVersion => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppVersionAppComponents>

Returns: a L<Paws::Resiliencehub::ListAppVersionAppComponentsResponse> instance

Lists all the Application Components in the Resilience Hub application.


=head2 ListAppVersionResourceMappings

=over

=item AppArn => Str

=item AppVersion => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppVersionResourceMappings>

Returns: a L<Paws::Resiliencehub::ListAppVersionResourceMappingsResponse> instance

Lists how the resources in an application version are mapped/sourced
from. Mappings can be physical resource identifiers, CloudFormation
stacks, resource-groups, or an application registry app.


=head2 ListAppVersionResources

=over

=item AppArn => Str

=item AppVersion => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResolutionId => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppVersionResources>

Returns: a L<Paws::Resiliencehub::ListAppVersionResourcesResponse> instance

Lists all the resources in an Resilience Hub application.


=head2 ListAppVersions

=over

=item AppArn => Str

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListAppVersions>

Returns: a L<Paws::Resiliencehub::ListAppVersionsResponse> instance

Lists the different versions for the Resilience Hub applications.


=head2 ListMetrics

=over

=item [Conditions => ArrayRef[L<Paws::Resiliencehub::Condition>]]

=item [DataSource => Str]

=item [Fields => ArrayRef[L<Paws::Resiliencehub::Field>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sorts => ArrayRef[L<Paws::Resiliencehub::Sort>]]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListMetrics>

Returns: a L<Paws::Resiliencehub::ListMetricsResponse> instance

Lists the metrics that can be exported.


=head2 ListRecommendationTemplates

=over

=item [AssessmentArn => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [RecommendationTemplateArn => Str]

=item [ReverseOrder => Bool]

=item [Status => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListRecommendationTemplates>

Returns: a L<Paws::Resiliencehub::ListRecommendationTemplatesResponse> instance

Lists the recommendation templates for the Resilience Hub applications.


=head2 ListResiliencyPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PolicyName => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListResiliencyPolicies>

Returns: a L<Paws::Resiliencehub::ListResiliencyPoliciesResponse> instance

Lists the resiliency policies for the Resilience Hub applications.


=head2 ListResourceGroupingRecommendations

=over

=item [AppArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListResourceGroupingRecommendations>

Returns: a L<Paws::Resiliencehub::ListResourceGroupingRecommendationsResponse> instance

Lists the resource grouping recommendations suggested by Resilience Hub
for your application.


=head2 ListSopRecommendations

=over

=item AssessmentArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListSopRecommendations>

Returns: a L<Paws::Resiliencehub::ListSopRecommendationsResponse> instance

Lists the standard operating procedure (SOP) recommendations for the
Resilience Hub applications.


=head2 ListSuggestedResiliencyPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListSuggestedResiliencyPolicies>

Returns: a L<Paws::Resiliencehub::ListSuggestedResiliencyPoliciesResponse> instance

Lists the suggested resiliency policies for the Resilience Hub
applications.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListTagsForResource>

Returns: a L<Paws::Resiliencehub::ListTagsForResourceResponse> instance

Lists the tags for your resources in your Resilience Hub applications.


=head2 ListTestRecommendations

=over

=item AssessmentArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListTestRecommendations>

Returns: a L<Paws::Resiliencehub::ListTestRecommendationsResponse> instance

Lists the test recommendations for the Resilience Hub application.


=head2 ListUnsupportedAppVersionResources

=over

=item AppArn => Str

=item AppVersion => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResolutionId => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ListUnsupportedAppVersionResources>

Returns: a L<Paws::Resiliencehub::ListUnsupportedAppVersionResourcesResponse> instance

Lists the resources that are not currently supported in Resilience Hub.
An unsupported resource is a resource that exists in the object that
was used to create an app, but is not supported by Resilience Hub.


=head2 PublishAppVersion

=over

=item AppArn => Str

=item [VersionName => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::PublishAppVersion>

Returns: a L<Paws::Resiliencehub::PublishAppVersionResponse> instance

Publishes a new version of a specific Resilience Hub application.


=head2 PutDraftAppVersionTemplate

=over

=item AppArn => Str

=item AppTemplateBody => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::PutDraftAppVersionTemplate>

Returns: a L<Paws::Resiliencehub::PutDraftAppVersionTemplateResponse> instance

Adds or updates the app template for an Resilience Hub application
draft version.


=head2 RejectResourceGroupingRecommendations

=over

=item AppArn => Str

=item Entries => ArrayRef[L<Paws::Resiliencehub::RejectGroupingRecommendationEntry>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::RejectResourceGroupingRecommendations>

Returns: a L<Paws::Resiliencehub::RejectResourceGroupingRecommendationsResponse> instance

Rejects resource grouping recommendations.


=head2 RemoveDraftAppVersionResourceMappings

=over

=item AppArn => Str

=item [AppRegistryAppNames => ArrayRef[Str|Undef]]

=item [EksSourceNames => ArrayRef[Str|Undef]]

=item [LogicalStackNames => ArrayRef[Str|Undef]]

=item [ResourceGroupNames => ArrayRef[Str|Undef]]

=item [ResourceNames => ArrayRef[Str|Undef]]

=item [TerraformSourceNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::RemoveDraftAppVersionResourceMappings>

Returns: a L<Paws::Resiliencehub::RemoveDraftAppVersionResourceMappingsResponse> instance

Removes resource mappings from a draft application version.


=head2 ResolveAppVersionResources

=over

=item AppArn => Str

=item AppVersion => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::ResolveAppVersionResources>

Returns: a L<Paws::Resiliencehub::ResolveAppVersionResourcesResponse> instance

Resolves the resources for an application version.


=head2 StartAppAssessment

=over

=item AppArn => Str

=item AppVersion => Str

=item AssessmentName => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::Resiliencehub::TagMap>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::StartAppAssessment>

Returns: a L<Paws::Resiliencehub::StartAppAssessmentResponse> instance

Creates a new application assessment for an application.


=head2 StartMetricsExport

=over

=item [BucketName => Str]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::StartMetricsExport>

Returns: a L<Paws::Resiliencehub::StartMetricsExportResponse> instance

Initiates the export task of metrics.


=head2 StartResourceGroupingRecommendationTask

=over

=item AppArn => Str


=back

Each argument is described in detail in: L<Paws::Resiliencehub::StartResourceGroupingRecommendationTask>

Returns: a L<Paws::Resiliencehub::StartResourceGroupingRecommendationTaskResponse> instance

Starts grouping recommendation task.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Resiliencehub::TagMap>


=back

Each argument is described in detail in: L<Paws::Resiliencehub::TagResource>

Returns: a L<Paws::Resiliencehub::TagResourceResponse> instance

Applies one or more tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::UntagResource>

Returns: a L<Paws::Resiliencehub::UntagResourceResponse> instance

Removes one or more tags from a resource.


=head2 UpdateApp

=over

=item AppArn => Str

=item [AssessmentSchedule => Str]

=item [ClearResiliencyPolicyArn => Bool]

=item [Description => Str]

=item [EventSubscriptions => ArrayRef[L<Paws::Resiliencehub::EventSubscription>]]

=item [PermissionModel => L<Paws::Resiliencehub::PermissionModel>]

=item [PolicyArn => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::UpdateApp>

Returns: a L<Paws::Resiliencehub::UpdateAppResponse> instance

Updates an application.


=head2 UpdateAppVersion

=over

=item AppArn => Str

=item [AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::UpdateAppVersion>

Returns: a L<Paws::Resiliencehub::UpdateAppVersionResponse> instance

Updates the Resilience Hub application version.

This API updates the Resilience Hub application draft version. To use
this information for running resiliency assessments, you must publish
the Resilience Hub application using the C<PublishAppVersion> API.


=head2 UpdateAppVersionAppComponent

=over

=item AppArn => Str

=item Id => Str

=item [AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>]

=item [Name => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::UpdateAppVersionAppComponent>

Returns: a L<Paws::Resiliencehub::UpdateAppVersionAppComponentResponse> instance

Updates an existing Application Component in the Resilience Hub
application.

This API updates the Resilience Hub application draft version. To use
this Application Component for running assessments, you must publish
the Resilience Hub application using the C<PublishAppVersion> API.


=head2 UpdateAppVersionResource

=over

=item AppArn => Str

=item [AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>]

=item [AppComponents => ArrayRef[Str|Undef]]

=item [AwsAccountId => Str]

=item [AwsRegion => Str]

=item [Excluded => Bool]

=item [LogicalResourceId => L<Paws::Resiliencehub::LogicalResourceId>]

=item [PhysicalResourceId => Str]

=item [ResourceName => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::UpdateAppVersionResource>

Returns: a L<Paws::Resiliencehub::UpdateAppVersionResourceResponse> instance

Updates the resource details in the Resilience Hub application.

=over

=item *

This action has no effect outside Resilience Hub.

=item *

This API updates the Resilience Hub application draft version. To use
this resource for running resiliency assessments, you must publish the
Resilience Hub application using the C<PublishAppVersion> API.

=item *

To update application version with new C<physicalResourceID>, you must
call C<ResolveAppVersionResources> API.

=back



=head2 UpdateResiliencyPolicy

=over

=item PolicyArn => Str

=item [DataLocationConstraint => Str]

=item [Policy => L<Paws::Resiliencehub::DisruptionPolicy>]

=item [PolicyDescription => Str]

=item [PolicyName => Str]

=item [Tier => Str]


=back

Each argument is described in detail in: L<Paws::Resiliencehub::UpdateResiliencyPolicy>

Returns: a L<Paws::Resiliencehub::UpdateResiliencyPolicyResponse> instance

Updates a resiliency policy.

Resilience Hub allows you to provide a value of zero for C<rtoInSecs>
and C<rpoInSecs> of your resiliency policy. But, while assessing your
application, the lowest possible assessment result is near zero. Hence,
if you provide value zero for C<rtoInSecs> and C<rpoInSecs>, the
estimated workload RTO and estimated workload RPO result will be near
zero and the B<Compliance status> for your application will be set to
B<Policy breached>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAppAssessmentResourceDrifts(sub { },AssessmentArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAppAssessmentResourceDrifts(AssessmentArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourceDrifts, passing the object as the first parameter, and the string 'resourceDrifts' as the second parameter 

If not, it will return a a L<Paws::Resiliencehub::ListAppAssessmentResourceDriftsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMetrics(sub { },[Conditions => ArrayRef[L<Paws::Resiliencehub::Condition>], DataSource => Str, Fields => ArrayRef[L<Paws::Resiliencehub::Field>], MaxResults => Int, NextToken => Str, Sorts => ArrayRef[L<Paws::Resiliencehub::Sort>]])

=head2 ListAllMetrics([Conditions => ArrayRef[L<Paws::Resiliencehub::Condition>], DataSource => Str, Fields => ArrayRef[L<Paws::Resiliencehub::Field>], MaxResults => Int, NextToken => Str, Sorts => ArrayRef[L<Paws::Resiliencehub::Sort>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - rows, passing the object as the first parameter, and the string 'rows' as the second parameter 

If not, it will return a a L<Paws::Resiliencehub::ListMetricsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceGroupingRecommendations(sub { },[AppArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllResourceGroupingRecommendations([AppArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - groupingRecommendations, passing the object as the first parameter, and the string 'groupingRecommendations' as the second parameter 

If not, it will return a a L<Paws::Resiliencehub::ListResourceGroupingRecommendationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

