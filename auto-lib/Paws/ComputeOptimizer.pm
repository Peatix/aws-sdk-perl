package Paws::ComputeOptimizer;
  use Moose;
  sub service { 'compute-optimizer' }
  sub signing_name { 'compute-optimizer' }
  sub version { '2019-11-01' }
  sub target_prefix { 'ComputeOptimizerService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DeleteRecommendationPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::DeleteRecommendationPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecommendationExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::DescribeRecommendationExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportAutoScalingGroupRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportAutoScalingGroupRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportEBSVolumeRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportEBSVolumeRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportEC2InstanceRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportEC2InstanceRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportECSServiceRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportECSServiceRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportIdleRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportIdleRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportLambdaFunctionRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportLambdaFunctionRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportLicenseRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportLicenseRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportRDSDatabaseRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::ExportRDSDatabaseRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAutoScalingGroupRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetAutoScalingGroupRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEBSVolumeRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEBSVolumeRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEC2InstanceRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEC2InstanceRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEC2RecommendationProjectedMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEC2RecommendationProjectedMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetECSServiceRecommendationProjectedMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetECSServiceRecommendationProjectedMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetECSServiceRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetECSServiceRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEffectiveRecommendationPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEffectiveRecommendationPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnrollmentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEnrollmentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnrollmentStatusesForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdleRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetIdleRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLambdaFunctionRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetLambdaFunctionRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLicenseRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetLicenseRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRDSDatabaseRecommendationProjectedMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetRDSDatabaseRecommendationProjectedMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRDSDatabaseRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetRDSDatabaseRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendationPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetRecommendationPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendationSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::GetRecommendationSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecommendationPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::PutRecommendationPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnrollmentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComputeOptimizer::UpdateEnrollmentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllRecommendationExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRecommendationExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeRecommendationExportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->recommendationExportJobs }, @{ $next_result->recommendationExportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recommendationExportJobs') foreach (@{ $result->recommendationExportJobs });
        $result = $self->DescribeRecommendationExportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recommendationExportJobs') foreach (@{ $result->recommendationExportJobs });
    }

    return undef
  }
  sub GetAllEnrollmentStatusesForOrganization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetEnrollmentStatusesForOrganization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetEnrollmentStatusesForOrganization(@_, nextToken => $next_result->nextToken);
        push @{ $result->accountEnrollmentStatuses }, @{ $next_result->accountEnrollmentStatuses };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accountEnrollmentStatuses') foreach (@{ $result->accountEnrollmentStatuses });
        $result = $self->GetEnrollmentStatusesForOrganization(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accountEnrollmentStatuses') foreach (@{ $result->accountEnrollmentStatuses });
    }

    return undef
  }
  sub GetAllLambdaFunctionRecommendations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetLambdaFunctionRecommendations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetLambdaFunctionRecommendations(@_, nextToken => $next_result->nextToken);
        push @{ $result->lambdaFunctionRecommendations }, @{ $next_result->lambdaFunctionRecommendations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'lambdaFunctionRecommendations') foreach (@{ $result->lambdaFunctionRecommendations });
        $result = $self->GetLambdaFunctionRecommendations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'lambdaFunctionRecommendations') foreach (@{ $result->lambdaFunctionRecommendations });
    }

    return undef
  }
  sub GetAllRecommendationPreferences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRecommendationPreferences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetRecommendationPreferences(@_, nextToken => $next_result->nextToken);
        push @{ $result->recommendationPreferencesDetails }, @{ $next_result->recommendationPreferencesDetails };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recommendationPreferencesDetails') foreach (@{ $result->recommendationPreferencesDetails });
        $result = $self->GetRecommendationPreferences(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recommendationPreferencesDetails') foreach (@{ $result->recommendationPreferencesDetails });
    }

    return undef
  }
  sub GetAllRecommendationSummaries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRecommendationSummaries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetRecommendationSummaries(@_, nextToken => $next_result->nextToken);
        push @{ $result->recommendationSummaries }, @{ $next_result->recommendationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recommendationSummaries') foreach (@{ $result->recommendationSummaries });
        $result = $self->GetRecommendationSummaries(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recommendationSummaries') foreach (@{ $result->recommendationSummaries });
    }

    return undef
  }


  sub operations { qw/DeleteRecommendationPreferences DescribeRecommendationExportJobs ExportAutoScalingGroupRecommendations ExportEBSVolumeRecommendations ExportEC2InstanceRecommendations ExportECSServiceRecommendations ExportIdleRecommendations ExportLambdaFunctionRecommendations ExportLicenseRecommendations ExportRDSDatabaseRecommendations GetAutoScalingGroupRecommendations GetEBSVolumeRecommendations GetEC2InstanceRecommendations GetEC2RecommendationProjectedMetrics GetECSServiceRecommendationProjectedMetrics GetECSServiceRecommendations GetEffectiveRecommendationPreferences GetEnrollmentStatus GetEnrollmentStatusesForOrganization GetIdleRecommendations GetLambdaFunctionRecommendations GetLicenseRecommendations GetRDSDatabaseRecommendationProjectedMetrics GetRDSDatabaseRecommendations GetRecommendationPreferences GetRecommendationSummaries PutRecommendationPreferences UpdateEnrollmentStatus / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer - Perl Interface to AWS AWS Compute Optimizer

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ComputeOptimizer');
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

Compute Optimizer is a service that analyzes the configuration and
utilization metrics of your Amazon Web Services compute resources, such
as Amazon EC2 instances, Amazon EC2 Auto Scaling groups, Lambda
functions, Amazon EBS volumes, and Amazon ECS services on Fargate. It
reports whether your resources are optimal, and generates optimization
recommendations to reduce the cost and improve the performance of your
workloads. Compute Optimizer also provides recent utilization metric
data, in addition to projected utilization metric data for the
recommendations, which you can use to evaluate which recommendation
provides the best price-performance trade-off. The analysis of your
usage patterns can help you decide when to move or resize your running
resources, and still meet your performance and capacity requirements.
For more information about Compute Optimizer, including the required
permissions to use the service, see the Compute Optimizer User Guide
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 DeleteRecommendationPreferences

=over

=item RecommendationPreferenceNames => ArrayRef[Str|Undef]

=item ResourceType => Str

=item [Scope => L<Paws::ComputeOptimizer::Scope>]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::DeleteRecommendationPreferences>

Returns: a L<Paws::ComputeOptimizer::DeleteRecommendationPreferencesResponse> instance

Deletes a recommendation preference, such as enhanced infrastructure
metrics.

For more information, see Activating enhanced infrastructure metrics
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the I<Compute Optimizer User Guide>.


=head2 DescribeRecommendationExportJobs

=over

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::JobFilter>]]

=item [JobIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::DescribeRecommendationExportJobs>

Returns: a L<Paws::ComputeOptimizer::DescribeRecommendationExportJobsResponse> instance

Describes recommendation export jobs created in the last seven days.

Use the ExportAutoScalingGroupRecommendations or
ExportEC2InstanceRecommendations actions to request an export of your
recommendations. Then use the DescribeRecommendationExportJobs action
to view your export jobs.


=head2 ExportAutoScalingGroupRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::Filter>]]

=item [IncludeMemberAccounts => Bool]

=item [RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportAutoScalingGroupRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportAutoScalingGroupRecommendationsResponse> instance

Exports optimization recommendations for Auto Scaling groups.

Recommendations are exported in a comma-separated values (.csv) file,
and its metadata in a JavaScript Object Notation (JSON) (.json) file,
to an existing Amazon Simple Storage Service (Amazon S3) bucket that
you specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one Auto Scaling group export job in progress per
Amazon Web Services Region.


=head2 ExportEBSVolumeRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::EBSFilter>]]

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportEBSVolumeRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportEBSVolumeRecommendationsResponse> instance

Exports optimization recommendations for Amazon EBS volumes.

Recommendations are exported in a comma-separated values (.csv) file,
and its metadata in a JavaScript Object Notation (JSON) (.json) file,
to an existing Amazon Simple Storage Service (Amazon S3) bucket that
you specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one Amazon EBS volume export job in progress per
Amazon Web Services Region.


=head2 ExportEC2InstanceRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::Filter>]]

=item [IncludeMemberAccounts => Bool]

=item [RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportEC2InstanceRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportEC2InstanceRecommendationsResponse> instance

Exports optimization recommendations for Amazon EC2 instances.

Recommendations are exported in a comma-separated values (.csv) file,
and its metadata in a JavaScript Object Notation (JSON) (.json) file,
to an existing Amazon Simple Storage Service (Amazon S3) bucket that
you specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one Amazon EC2 instance export job in progress per
Amazon Web Services Region.


=head2 ExportECSServiceRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::ECSServiceRecommendationFilter>]]

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportECSServiceRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportECSServiceRecommendationsResponse> instance

Exports optimization recommendations for Amazon ECS services on
Fargate.

Recommendations are exported in a CSV file, and its metadata in a JSON
file, to an existing Amazon Simple Storage Service (Amazon S3) bucket
that you specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can only have one Amazon ECS service export job in progress per
Amazon Web Services Region.


=head2 ExportIdleRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::IdleRecommendationFilter>]]

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportIdleRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportIdleRecommendationsResponse> instance

Export optimization recommendations for your idle resources.

Recommendations are exported in a comma-separated values (CSV) file,
and its metadata in a JavaScript Object Notation (JSON) file, to an
existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one idle resource export job in progress per Amazon
Web Services Region.


=head2 ExportLambdaFunctionRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::LambdaFunctionRecommendationFilter>]]

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportLambdaFunctionRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportLambdaFunctionRecommendationsResponse> instance

Exports optimization recommendations for Lambda functions.

Recommendations are exported in a comma-separated values (.csv) file,
and its metadata in a JavaScript Object Notation (JSON) (.json) file,
to an existing Amazon Simple Storage Service (Amazon S3) bucket that
you specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one Lambda function export job in progress per Amazon
Web Services Region.


=head2 ExportLicenseRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::LicenseRecommendationFilter>]]

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportLicenseRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportLicenseRecommendationsResponse> instance

Export optimization recommendations for your licenses.

Recommendations are exported in a comma-separated values (CSV) file,
and its metadata in a JavaScript Object Notation (JSON) file, to an
existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one license export job in progress per Amazon Web
Services Region.


=head2 ExportRDSDatabaseRecommendations

=over

=item S3DestinationConfig => L<Paws::ComputeOptimizer::S3DestinationConfig>

=item [AccountIds => ArrayRef[Str|Undef]]

=item [FieldsToExport => ArrayRef[Str|Undef]]

=item [FileFormat => Str]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::RDSDBRecommendationFilter>]]

=item [IncludeMemberAccounts => Bool]

=item [RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::ExportRDSDatabaseRecommendations>

Returns: a L<Paws::ComputeOptimizer::ExportRDSDatabaseRecommendationsResponse> instance

Export optimization recommendations for your Amazon Relational Database
Service (Amazon RDS).

Recommendations are exported in a comma-separated values (CSV) file,
and its metadata in a JavaScript Object Notation (JSON) file, to an
existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see Exporting Recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the I<Compute Optimizer User Guide>.

You can have only one Amazon RDS export job in progress per Amazon Web
Services Region.


=head2 GetAutoScalingGroupRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [AutoScalingGroupArns => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetAutoScalingGroupRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetAutoScalingGroupRecommendationsResponse> instance

Returns Auto Scaling group recommendations.

Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling
groups that meet a specific set of requirements. For more information,
see the Supported resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<Compute Optimizer User Guide>.


=head2 GetEBSVolumeRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::EBSFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEBSVolumeRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetEBSVolumeRecommendationsResponse> instance

Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations.

Compute Optimizer generates recommendations for Amazon EBS volumes that
meet a specific set of requirements. For more information, see the
Supported resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<Compute Optimizer User Guide>.


=head2 GetEC2InstanceRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::Filter>]]

=item [InstanceArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEC2InstanceRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetEC2InstanceRecommendationsResponse> instance

Returns Amazon EC2 instance recommendations.

Compute Optimizer generates recommendations for Amazon Elastic Compute
Cloud (Amazon EC2) instances that meet a specific set of requirements.
For more information, see the Supported resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<Compute Optimizer User Guide>.


=head2 GetEC2RecommendationProjectedMetrics

=over

=item EndTime => Str

=item InstanceArn => Str

=item Period => Int

=item StartTime => Str

=item Stat => Str

=item [RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEC2RecommendationProjectedMetrics>

Returns: a L<Paws::ComputeOptimizer::GetEC2RecommendationProjectedMetricsResponse> instance

Returns the projected utilization metrics of Amazon EC2 instance
recommendations.

The C<Cpu> and C<Memory> metrics are the only projected utilization
metrics returned when you run this action. Additionally, the C<Memory>
metric is returned only for resources that have the unified CloudWatch
agent installed on them. For more information, see Enabling Memory
Utilization with the CloudWatch Agent
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent).


=head2 GetECSServiceRecommendationProjectedMetrics

=over

=item EndTime => Str

=item Period => Int

=item ServiceArn => Str

=item StartTime => Str

=item Stat => Str


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetECSServiceRecommendationProjectedMetrics>

Returns: a L<Paws::ComputeOptimizer::GetECSServiceRecommendationProjectedMetricsResponse> instance

Returns the projected metrics of Amazon ECS service recommendations.


=head2 GetECSServiceRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::ECSServiceRecommendationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetECSServiceRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetECSServiceRecommendationsResponse> instance

Returns Amazon ECS service recommendations.

Compute Optimizer generates recommendations for Amazon ECS services on
Fargate that meet a specific set of requirements. For more information,
see the Supported resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<Compute Optimizer User Guide>.


=head2 GetEffectiveRecommendationPreferences

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEffectiveRecommendationPreferences>

Returns: a L<Paws::ComputeOptimizer::GetEffectiveRecommendationPreferencesResponse> instance

Returns the recommendation preferences that are in effect for a given
resource, such as enhanced infrastructure metrics. Considers all
applicable preferences that you might have set at the resource,
account, and organization level.

When you create a recommendation preference, you can set its status to
C<Active> or C<Inactive>. Use this action to view the recommendation
preferences that are in effect, or C<Active>.


=head2 GetEnrollmentStatus






Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEnrollmentStatus>

Returns: a L<Paws::ComputeOptimizer::GetEnrollmentStatusResponse> instance

Returns the enrollment (opt in) status of an account to the Compute
Optimizer service.

If the account is the management account of an organization, this
action also confirms the enrollment status of member accounts of the
organization. Use the GetEnrollmentStatusesForOrganization action to
get detailed information about the enrollment status of member accounts
of an organization.


=head2 GetEnrollmentStatusesForOrganization

=over

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::EnrollmentFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganization>

Returns: a L<Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganizationResponse> instance

Returns the Compute Optimizer enrollment (opt-in) status of
organization member accounts, if your account is an organization
management account.

To get the enrollment status of standalone accounts, use the
GetEnrollmentStatus action.


=head2 GetIdleRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::IdleRecommendationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OrderBy => L<Paws::ComputeOptimizer::OrderBy>]

=item [ResourceArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetIdleRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetIdleRecommendationsResponse> instance

Returns idle resource recommendations. Compute Optimizer generates
recommendations for idle resources that meet a specific set of
requirements. For more information, see Resource requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<Compute Optimizer User Guide>


=head2 GetLambdaFunctionRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::LambdaFunctionRecommendationFilter>]]

=item [FunctionArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetLambdaFunctionRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetLambdaFunctionRecommendationsResponse> instance

Returns Lambda function recommendations.

Compute Optimizer generates recommendations for functions that meet a
specific set of requirements. For more information, see the Supported
resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<Compute Optimizer User Guide>.


=head2 GetLicenseRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::LicenseRecommendationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetLicenseRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetLicenseRecommendationsResponse> instance

Returns license recommendations for Amazon EC2 instances that run on a
specific license.

Compute Optimizer generates recommendations for licenses that meet a
specific set of requirements. For more information, see the Supported
resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<Compute Optimizer User Guide>.


=head2 GetRDSDatabaseRecommendationProjectedMetrics

=over

=item EndTime => Str

=item Period => Int

=item ResourceArn => Str

=item StartTime => Str

=item Stat => Str

=item [RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetRDSDatabaseRecommendationProjectedMetrics>

Returns: a L<Paws::ComputeOptimizer::GetRDSDatabaseRecommendationProjectedMetricsResponse> instance

Returns the projected metrics of Amazon RDS recommendations.


=head2 GetRDSDatabaseRecommendations

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::ComputeOptimizer::RDSDBRecommendationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>]

=item [ResourceArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetRDSDatabaseRecommendations>

Returns: a L<Paws::ComputeOptimizer::GetRDSDatabaseRecommendationsResponse> instance

Returns Amazon RDS recommendations.

Compute Optimizer generates recommendations for Amazon RDS that meet a
specific set of requirements. For more information, see the Supported
resources and requirements
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the I<Compute Optimizer User Guide>.


=head2 GetRecommendationPreferences

=over

=item ResourceType => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Scope => L<Paws::ComputeOptimizer::Scope>]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetRecommendationPreferences>

Returns: a L<Paws::ComputeOptimizer::GetRecommendationPreferencesResponse> instance

Returns existing recommendation preferences, such as enhanced
infrastructure metrics.

Use the C<scope> parameter to specify which preferences to return. You
can specify to return preferences for an organization, a specific
account ID, or a specific EC2 instance or Auto Scaling group Amazon
Resource Name (ARN).

For more information, see Activating enhanced infrastructure metrics
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the I<Compute Optimizer User Guide>.


=head2 GetRecommendationSummaries

=over

=item [AccountIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::GetRecommendationSummaries>

Returns: a L<Paws::ComputeOptimizer::GetRecommendationSummariesResponse> instance

Returns the optimization findings for an account.

It returns the number of:

=over

=item *

Amazon EC2 instances in an account that are C<Underprovisioned>,
C<Overprovisioned>, or C<Optimized>.

=item *

Auto Scaling groups in an account that are C<NotOptimized>, or
C<Optimized>.

=item *

Amazon EBS volumes in an account that are C<NotOptimized>, or
C<Optimized>.

=item *

Lambda functions in an account that are C<NotOptimized>, or
C<Optimized>.

=item *

Amazon ECS services in an account that are C<Underprovisioned>,
C<Overprovisioned>, or C<Optimized>.

=back



=head2 PutRecommendationPreferences

=over

=item ResourceType => Str

=item [EnhancedInfrastructureMetrics => Str]

=item [ExternalMetricsPreference => L<Paws::ComputeOptimizer::ExternalMetricsPreference>]

=item [InferredWorkloadTypes => Str]

=item [LookBackPeriod => Str]

=item [PreferredResources => ArrayRef[L<Paws::ComputeOptimizer::PreferredResource>]]

=item [SavingsEstimationMode => Str]

=item [Scope => L<Paws::ComputeOptimizer::Scope>]

=item [UtilizationPreferences => ArrayRef[L<Paws::ComputeOptimizer::UtilizationPreference>]]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::PutRecommendationPreferences>

Returns: a L<Paws::ComputeOptimizer::PutRecommendationPreferencesResponse> instance

Creates a new recommendation preference or updates an existing
recommendation preference, such as enhanced infrastructure metrics.

For more information, see Activating enhanced infrastructure metrics
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the I<Compute Optimizer User Guide>.


=head2 UpdateEnrollmentStatus

=over

=item Status => Str

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::ComputeOptimizer::UpdateEnrollmentStatus>

Returns: a L<Paws::ComputeOptimizer::UpdateEnrollmentStatusResponse> instance

Updates the enrollment (opt in and opt out) status of an account to the
Compute Optimizer service.

If the account is a management account of an organization, this action
can also be used to enroll member accounts of the organization.

You must have the appropriate permissions to opt in to Compute
Optimizer, to view its recommendations, and to opt out. For more
information, see Controlling access with Amazon Web Services Identity
and Access Management
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html)
in the I<Compute Optimizer User Guide>.

When you opt in, Compute Optimizer automatically creates a
service-linked role in your account to access its data. For more
information, see Using Service-Linked Roles for Compute Optimizer
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html)
in the I<Compute Optimizer User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllRecommendationExportJobs(sub { },[Filters => ArrayRef[L<Paws::ComputeOptimizer::JobFilter>], JobIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllRecommendationExportJobs([Filters => ArrayRef[L<Paws::ComputeOptimizer::JobFilter>], JobIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recommendationExportJobs, passing the object as the first parameter, and the string 'recommendationExportJobs' as the second parameter 

If not, it will return a a L<Paws::ComputeOptimizer::DescribeRecommendationExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllEnrollmentStatusesForOrganization(sub { },[Filters => ArrayRef[L<Paws::ComputeOptimizer::EnrollmentFilter>], MaxResults => Int, NextToken => Str])

=head2 GetAllEnrollmentStatusesForOrganization([Filters => ArrayRef[L<Paws::ComputeOptimizer::EnrollmentFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accountEnrollmentStatuses, passing the object as the first parameter, and the string 'accountEnrollmentStatuses' as the second parameter 

If not, it will return a a L<Paws::ComputeOptimizer::GetEnrollmentStatusesForOrganizationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllLambdaFunctionRecommendations(sub { },[AccountIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::ComputeOptimizer::LambdaFunctionRecommendationFilter>], FunctionArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllLambdaFunctionRecommendations([AccountIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::ComputeOptimizer::LambdaFunctionRecommendationFilter>], FunctionArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - lambdaFunctionRecommendations, passing the object as the first parameter, and the string 'lambdaFunctionRecommendations' as the second parameter 

If not, it will return a a L<Paws::ComputeOptimizer::GetLambdaFunctionRecommendationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRecommendationPreferences(sub { },ResourceType => Str, [MaxResults => Int, NextToken => Str, Scope => L<Paws::ComputeOptimizer::Scope>])

=head2 GetAllRecommendationPreferences(ResourceType => Str, [MaxResults => Int, NextToken => Str, Scope => L<Paws::ComputeOptimizer::Scope>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recommendationPreferencesDetails, passing the object as the first parameter, and the string 'recommendationPreferencesDetails' as the second parameter 

If not, it will return a a L<Paws::ComputeOptimizer::GetRecommendationPreferencesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRecommendationSummaries(sub { },[AccountIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllRecommendationSummaries([AccountIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recommendationSummaries, passing the object as the first parameter, and the string 'recommendationSummaries' as the second parameter 

If not, it will return a a L<Paws::ComputeOptimizer::GetRecommendationSummariesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

