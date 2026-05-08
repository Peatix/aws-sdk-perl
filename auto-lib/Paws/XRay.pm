package Paws::XRay;
  use Moose;
  sub service { 'xray' }
  sub signing_name { 'xray' }
  sub version { '2016-04-12' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetTraces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::BatchGetTraces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelTraceRetrieval {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::CancelTraceRetrieval', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSamplingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::CreateSamplingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSamplingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::DeleteSamplingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIndexingRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetIndexingRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsight {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetInsight', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsightEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetInsightEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsightImpactGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetInsightImpactGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsightSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetInsightSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRetrievedTracesGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetRetrievedTracesGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSamplingRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetSamplingRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSamplingStatisticSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetSamplingStatisticSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSamplingTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetSamplingTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetServiceGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTimeSeriesServiceStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetTimeSeriesServiceStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTraceGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetTraceGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTraceSegmentDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetTraceSegmentDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTraceSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::GetTraceSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourcePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::ListResourcePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRetrievedTraces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::ListRetrievedTraces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEncryptionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::PutEncryptionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTelemetryRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::PutTelemetryRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTraceSegments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::PutTraceSegments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTraceRetrieval {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::StartTraceRetrieval', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIndexingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::UpdateIndexingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSamplingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::UpdateSamplingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTraceSegmentDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::XRay::UpdateTraceSegmentDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub BatchGetAllTraces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->BatchGetTraces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->BatchGetTraces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Traces }, @{ $next_result->Traces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Traces') foreach (@{ $result->Traces });
        $result = $self->BatchGetTraces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Traces') foreach (@{ $result->Traces });
    }

    return undef
  }
  sub GetAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->GetGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub GetAllSamplingRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSamplingRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSamplingRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->SamplingRuleRecords }, @{ $next_result->SamplingRuleRecords };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SamplingRuleRecords') foreach (@{ $result->SamplingRuleRecords });
        $result = $self->GetSamplingRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SamplingRuleRecords') foreach (@{ $result->SamplingRuleRecords });
    }

    return undef
  }
  sub GetAllSamplingStatisticSummaries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSamplingStatisticSummaries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSamplingStatisticSummaries(@_, NextToken => $next_result->NextToken);
        push @{ $result->SamplingStatisticSummaries }, @{ $next_result->SamplingStatisticSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SamplingStatisticSummaries') foreach (@{ $result->SamplingStatisticSummaries });
        $result = $self->GetSamplingStatisticSummaries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SamplingStatisticSummaries') foreach (@{ $result->SamplingStatisticSummaries });
    }

    return undef
  }
  sub GetAllServiceGraph {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetServiceGraph(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetServiceGraph(@_, NextToken => $next_result->NextToken);
        push @{ $result->Services }, @{ $next_result->Services };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Services') foreach (@{ $result->Services });
        $result = $self->GetServiceGraph(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Services') foreach (@{ $result->Services });
    }

    return undef
  }
  sub GetAllTimeSeriesServiceStatistics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTimeSeriesServiceStatistics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTimeSeriesServiceStatistics(@_, NextToken => $next_result->NextToken);
        push @{ $result->TimeSeriesServiceStatistics }, @{ $next_result->TimeSeriesServiceStatistics };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TimeSeriesServiceStatistics') foreach (@{ $result->TimeSeriesServiceStatistics });
        $result = $self->GetTimeSeriesServiceStatistics(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TimeSeriesServiceStatistics') foreach (@{ $result->TimeSeriesServiceStatistics });
    }

    return undef
  }
  sub GetAllTraceGraph {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTraceGraph(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTraceGraph(@_, NextToken => $next_result->NextToken);
        push @{ $result->Services }, @{ $next_result->Services };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Services') foreach (@{ $result->Services });
        $result = $self->GetTraceGraph(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Services') foreach (@{ $result->Services });
    }

    return undef
  }
  sub GetAllTraceSummaries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTraceSummaries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTraceSummaries(@_, NextToken => $next_result->NextToken);
        push @{ $result->TraceSummaries }, @{ $next_result->TraceSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TraceSummaries') foreach (@{ $result->TraceSummaries });
        $result = $self->GetTraceSummaries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TraceSummaries') foreach (@{ $result->TraceSummaries });
    }

    return undef
  }
  sub ListAllResourcePolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourcePolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourcePolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourcePolicies }, @{ $next_result->ResourcePolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourcePolicies') foreach (@{ $result->ResourcePolicies });
        $result = $self->ListResourcePolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourcePolicies') foreach (@{ $result->ResourcePolicies });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }


  sub operations { qw/BatchGetTraces CancelTraceRetrieval CreateGroup CreateSamplingRule DeleteGroup DeleteResourcePolicy DeleteSamplingRule GetEncryptionConfig GetGroup GetGroups GetIndexingRules GetInsight GetInsightEvents GetInsightImpactGraph GetInsightSummaries GetRetrievedTracesGraph GetSamplingRules GetSamplingStatisticSummaries GetSamplingTargets GetServiceGraph GetTimeSeriesServiceStatistics GetTraceGraph GetTraceSegmentDestination GetTraceSummaries ListResourcePolicies ListRetrievedTraces ListTagsForResource PutEncryptionConfig PutResourcePolicy PutTelemetryRecords PutTraceSegments StartTraceRetrieval TagResource UntagResource UpdateGroup UpdateIndexingRule UpdateSamplingRule UpdateTraceSegmentDestination / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay - Perl Interface to AWS AWS X-Ray

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('XRay');
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

Amazon Web Services X-Ray provides APIs for managing debug traces and
retrieving service maps and other data created by processing those
traces.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchGetTraces

=over

=item TraceIds => ArrayRef[Str|Undef]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::BatchGetTraces>

Returns: a L<Paws::XRay::BatchGetTracesResult> instance

You cannot find traces through this API if Transaction Search is
enabled since trace is not indexed in X-Ray.

Retrieves a list of traces specified by ID. Each trace is a collection
of segment documents that originates from a single request. Use
C<GetTraceSummaries> to get a list of trace IDs.


=head2 CancelTraceRetrieval

=over

=item RetrievalToken => Str


=back

Each argument is described in detail in: L<Paws::XRay::CancelTraceRetrieval>

Returns: a L<Paws::XRay::CancelTraceRetrievalResult> instance

Cancels an ongoing trace retrieval job initiated by
C<StartTraceRetrieval> using the provided C<RetrievalToken>. A
successful cancellation will return an HTTP 200 response.


=head2 CreateGroup

=over

=item GroupName => Str

=item [FilterExpression => Str]

=item [InsightsConfiguration => L<Paws::XRay::InsightsConfiguration>]

=item [Tags => ArrayRef[L<Paws::XRay::Tag>]]


=back

Each argument is described in detail in: L<Paws::XRay::CreateGroup>

Returns: a L<Paws::XRay::CreateGroupResult> instance

Creates a group resource with a name and a filter expression.


=head2 CreateSamplingRule

=over

=item SamplingRule => L<Paws::XRay::SamplingRule>

=item [Tags => ArrayRef[L<Paws::XRay::Tag>]]


=back

Each argument is described in detail in: L<Paws::XRay::CreateSamplingRule>

Returns: a L<Paws::XRay::CreateSamplingRuleResult> instance

Creates a rule to control sampling behavior for instrumented
applications. Services retrieve rules with GetSamplingRules
(https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingRules.html),
and evaluate each rule in ascending order of I<priority> for each
request. If a rule matches, the service records a trace, borrowing it
from the reservoir size. After 10 seconds, the service reports back to
X-Ray with GetSamplingTargets
(https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html)
to get updated versions of each in-use rule. The updated rule contains
a trace quota that the service can use instead of borrowing from the
reservoir.


=head2 DeleteGroup

=over

=item [GroupARN => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::XRay::DeleteGroup>

Returns: a L<Paws::XRay::DeleteGroupResult> instance

Deletes a group resource.


=head2 DeleteResourcePolicy

=over

=item PolicyName => Str

=item [PolicyRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::XRay::DeleteResourcePolicy>

Returns: a L<Paws::XRay::DeleteResourcePolicyResult> instance

Deletes a resource policy from the target Amazon Web Services account.


=head2 DeleteSamplingRule

=over

=item [RuleARN => Str]

=item [RuleName => Str]


=back

Each argument is described in detail in: L<Paws::XRay::DeleteSamplingRule>

Returns: a L<Paws::XRay::DeleteSamplingRuleResult> instance

Deletes a sampling rule.


=head2 GetEncryptionConfig






Each argument is described in detail in: L<Paws::XRay::GetEncryptionConfig>

Returns: a L<Paws::XRay::GetEncryptionConfigResult> instance

Retrieves the current encryption configuration for X-Ray data.


=head2 GetGroup

=over

=item [GroupARN => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetGroup>

Returns: a L<Paws::XRay::GetGroupResult> instance

Retrieves group resource details.


=head2 GetGroups

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetGroups>

Returns: a L<Paws::XRay::GetGroupsResult> instance

Retrieves all active group details.


=head2 GetIndexingRules

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetIndexingRules>

Returns: a L<Paws::XRay::GetIndexingRulesResult> instance

Retrieves all indexing rules.

Indexing rules are used to determine the server-side sampling rate for
spans ingested through the CloudWatchLogs destination and indexed by
X-Ray. For more information, see Transaction Search
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html).


=head2 GetInsight

=over

=item InsightId => Str


=back

Each argument is described in detail in: L<Paws::XRay::GetInsight>

Returns: a L<Paws::XRay::GetInsightResult> instance

Retrieves the summary information of an insight. This includes impact
to clients and root cause services, the top anomalous services, the
category, the state of the insight, and the start and end time of the
insight.


=head2 GetInsightEvents

=over

=item InsightId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetInsightEvents>

Returns: a L<Paws::XRay::GetInsightEventsResult> instance

X-Ray reevaluates insights periodically until they're resolved, and
records each intermediate state as an event. You can review an
insight's events in the Impact Timeline on the Inspect page in the
X-Ray console.


=head2 GetInsightImpactGraph

=over

=item EndTime => Str

=item InsightId => Str

=item StartTime => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetInsightImpactGraph>

Returns: a L<Paws::XRay::GetInsightImpactGraphResult> instance

Retrieves a service graph structure filtered by the specified insight.
The service graph is limited to only structural information. For a
complete service graph, use this API with the GetServiceGraph API.


=head2 GetInsightSummaries

=over

=item EndTime => Str

=item StartTime => Str

=item [GroupARN => Str]

=item [GroupName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::XRay::GetInsightSummaries>

Returns: a L<Paws::XRay::GetInsightSummariesResult> instance

Retrieves the summaries of all insights in the specified group matching
the provided filter values.


=head2 GetRetrievedTracesGraph

=over

=item RetrievalToken => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetRetrievedTracesGraph>

Returns: a L<Paws::XRay::GetRetrievedTracesGraphResult> instance

Retrieves a service graph for traces based on the specified
C<RetrievalToken> from the CloudWatch log group generated by
Transaction Search. This API does not initiate a retrieval job. You
must first execute C<StartTraceRetrieval> to obtain the required
C<RetrievalToken>.

The trace graph describes services that process incoming requests and
any downstream services they call, which may include Amazon Web
Services resources, external APIs, or databases.

The response is empty until the C<RetrievalStatus> is I<COMPLETE>.
Retry the request after the status changes from I<RUNNING> or
I<SCHEDULED> to I<COMPLETE> to access the full service graph.

When CloudWatch log is the destination, this API can support
cross-account observability and service graph retrieval across linked
accounts.

For retrieving graphs from X-Ray directly as opposed to the
Transaction-Search Log group, see GetTraceGraph
(https://docs.aws.amazon.com/xray/latest/api/API_GetTraceGraph.html).


=head2 GetSamplingRules

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetSamplingRules>

Returns: a L<Paws::XRay::GetSamplingRulesResult> instance

Retrieves all sampling rules.


=head2 GetSamplingStatisticSummaries

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetSamplingStatisticSummaries>

Returns: a L<Paws::XRay::GetSamplingStatisticSummariesResult> instance

Retrieves information about recent sampling results for all sampling
rules.


=head2 GetSamplingTargets

=over

=item SamplingStatisticsDocuments => ArrayRef[L<Paws::XRay::SamplingStatisticsDocument>]


=back

Each argument is described in detail in: L<Paws::XRay::GetSamplingTargets>

Returns: a L<Paws::XRay::GetSamplingTargetsResult> instance

Requests a sampling quota for rules that the service is using to sample
requests.


=head2 GetServiceGraph

=over

=item EndTime => Str

=item StartTime => Str

=item [GroupARN => Str]

=item [GroupName => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetServiceGraph>

Returns: a L<Paws::XRay::GetServiceGraphResult> instance

Retrieves a document that describes services that process incoming
requests, and downstream services that they call as a result. Root
services process incoming requests and make calls to downstream
services. Root services are applications that use the Amazon Web
Services X-Ray SDK (https://docs.aws.amazon.com/xray/index.html).
Downstream services can be other applications, Amazon Web Services
resources, HTTP web APIs, or SQL databases.


=head2 GetTimeSeriesServiceStatistics

=over

=item EndTime => Str

=item StartTime => Str

=item [EntitySelectorExpression => Str]

=item [ForecastStatistics => Bool]

=item [GroupARN => Str]

=item [GroupName => Str]

=item [NextToken => Str]

=item [Period => Int]


=back

Each argument is described in detail in: L<Paws::XRay::GetTimeSeriesServiceStatistics>

Returns: a L<Paws::XRay::GetTimeSeriesServiceStatisticsResult> instance

Get an aggregation of service statistics defined by a specific time
range.


=head2 GetTraceGraph

=over

=item TraceIds => ArrayRef[Str|Undef]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetTraceGraph>

Returns: a L<Paws::XRay::GetTraceGraphResult> instance

Retrieves a service graph for one or more specific trace IDs.


=head2 GetTraceSegmentDestination






Each argument is described in detail in: L<Paws::XRay::GetTraceSegmentDestination>

Returns: a L<Paws::XRay::GetTraceSegmentDestinationResult> instance

Retrieves the current destination of data sent to C<PutTraceSegments>
and I<OpenTelemetry> API. The Transaction Search feature requires a
CloudWatchLogs destination. For more information, see Transaction
Search
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html)
and OpenTelemetry
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-OpenTelemetry-Sections.html).


=head2 GetTraceSummaries

=over

=item EndTime => Str

=item StartTime => Str

=item [FilterExpression => Str]

=item [NextToken => Str]

=item [Sampling => Bool]

=item [SamplingStrategy => L<Paws::XRay::SamplingStrategy>]

=item [TimeRangeType => Str]


=back

Each argument is described in detail in: L<Paws::XRay::GetTraceSummaries>

Returns: a L<Paws::XRay::GetTraceSummariesResult> instance

Retrieves IDs and annotations for traces available for a specified time
frame using an optional filter. To get the full traces, pass the trace
IDs to C<BatchGetTraces>.

A filter expression can target traced requests that hit specific
service nodes or edges, have errors, or come from a known user. For
example, the following filter expression targets traces that pass
through C<api.example.com>:

C<service("api.example.com")>

This filter expression finds traces that have an annotation named
C<account> with the value C<12345>:

C<annotation.account = "12345">

For a full list of indexed fields and keywords that you can use in
filter expressions, see Use filter expressions
(https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-console.html#xray-console-filters)
in the I<Amazon Web Services X-Ray Developer Guide>.


=head2 ListResourcePolicies

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::ListResourcePolicies>

Returns: a L<Paws::XRay::ListResourcePoliciesResult> instance

Returns the list of resource policies in the target Amazon Web Services
account.


=head2 ListRetrievedTraces

=over

=item RetrievalToken => Str

=item [NextToken => Str]

=item [TraceFormat => Str]


=back

Each argument is described in detail in: L<Paws::XRay::ListRetrievedTraces>

Returns: a L<Paws::XRay::ListRetrievedTracesResult> instance

Retrieves a list of traces for a given C<RetrievalToken> from the
CloudWatch log group generated by Transaction Search. For information
on what each trace returns, see BatchGetTraces
(https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html).

This API does not initiate a retrieval job. To start a trace retrieval,
use C<StartTraceRetrieval>, which generates the required
C<RetrievalToken>.

When the C<RetrievalStatus> is not I<COMPLETE>, the API will return an
empty response. Retry the request once the retrieval has completed to
access the full list of traces.

For cross-account observability, this API can retrieve traces from
linked accounts when CloudWatch log is the destination across relevant
accounts. For more details, see CloudWatch cross-account observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

For retrieving data from X-Ray directly as opposed to the
Transaction-Search Log group, see BatchGetTraces
(https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html).


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::XRay::ListTagsForResource>

Returns: a L<Paws::XRay::ListTagsForResourceResponse> instance

Returns a list of tags that are applied to the specified Amazon Web
Services X-Ray group or sampling rule.


=head2 PutEncryptionConfig

=over

=item Type => Str

=item [KeyId => Str]


=back

Each argument is described in detail in: L<Paws::XRay::PutEncryptionConfig>

Returns: a L<Paws::XRay::PutEncryptionConfigResult> instance

Updates the encryption configuration for X-Ray data.


=head2 PutResourcePolicy

=over

=item PolicyDocument => Str

=item PolicyName => Str

=item [BypassPolicyLockoutCheck => Bool]

=item [PolicyRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::XRay::PutResourcePolicy>

Returns: a L<Paws::XRay::PutResourcePolicyResult> instance

Sets the resource policy to grant one or more Amazon Web Services
services and accounts permissions to access X-Ray. Each resource policy
will be associated with a specific Amazon Web Services account. Each
Amazon Web Services account can have a maximum of 5 resource policies,
and each policy name must be unique within that account. The maximum
size of each resource policy is 5KB.


=head2 PutTelemetryRecords

=over

=item TelemetryRecords => ArrayRef[L<Paws::XRay::TelemetryRecord>]

=item [EC2InstanceId => Str]

=item [Hostname => Str]

=item [ResourceARN => Str]


=back

Each argument is described in detail in: L<Paws::XRay::PutTelemetryRecords>

Returns: a L<Paws::XRay::PutTelemetryRecordsResult> instance

Used by the Amazon Web Services X-Ray daemon to upload telemetry.


=head2 PutTraceSegments

=over

=item TraceSegmentDocuments => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::XRay::PutTraceSegments>

Returns: a L<Paws::XRay::PutTraceSegmentsResult> instance

Uploads segment documents to Amazon Web Services X-Ray. A segment
document can be a completed segment, an in-progress segment, or an
array of subsegments.

Segments must include the following fields. For the full segment
document schema, see Amazon Web Services X-Ray Segment Documents
(https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-api.html#xray-api-segmentdocuments.html)
in the I<Amazon Web Services X-Ray Developer Guide>.

B<Required segment document fields>

=over

=item *

C<name> - The name of the service that handled the request.

=item *

C<id> - A 64-bit identifier for the segment, unique among segments in
the same trace, in 16 hexadecimal digits.

=item *

C<trace_id> - A unique identifier that connects all segments and
subsegments originating from a single client request.

=item *

C<start_time> - Time the segment or subsegment was created, in floating
point seconds in epoch time, accurate to milliseconds. For example,
C<1480615200.010> or C<1.480615200010E9>.

=item *

C<end_time> - Time the segment or subsegment was closed. For example,
C<1480615200.090> or C<1.480615200090E9>. Specify either an C<end_time>
or C<in_progress>.

=item *

C<in_progress> - Set to C<true> instead of specifying an C<end_time> to
record that a segment has been started, but is not complete. Send an
in-progress segment when your application receives a request that will
take a long time to serve, to trace that the request was received. When
the response is sent, send the complete segment to overwrite the
in-progress segment.

=back

A C<trace_id> consists of three numbers separated by hyphens. For
example, 1-58406520-a006649127e371903a2de979. For trace IDs created by
an X-Ray SDK, or by Amazon Web Services services integrated with X-Ray,
a trace ID includes:

B<Trace ID Format>

=over

=item *

The version number, for instance, C<1>.

=item *

The time of the original request, in Unix epoch time, in 8 hexadecimal
digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is
C<1480615200> seconds, or C<58406520> in hexadecimal.

=item *

A 96-bit identifier for the trace, globally unique, in 24 hexadecimal
digits.

=back

Trace IDs created via OpenTelemetry have a different format based on
the W3C Trace Context specification
(https://www.w3.org/TR/trace-context/). A W3C trace ID must be
formatted in the X-Ray trace ID format when sending to X-Ray. For
example, a W3C trace ID C<4efaaf4d1e8720b39541901950019ee5> should be
formatted as C<1-4efaaf4d-1e8720b39541901950019ee5> when sending to
X-Ray. While X-Ray trace IDs include the original request timestamp in
Unix epoch time, this is not required or validated.


=head2 StartTraceRetrieval

=over

=item EndTime => Str

=item StartTime => Str

=item TraceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::XRay::StartTraceRetrieval>

Returns: a L<Paws::XRay::StartTraceRetrievalResult> instance

Initiates a trace retrieval process using the specified time range and
for the give trace IDs on Transaction Search generated by the
CloudWatch log group. For more information, see Transaction Search
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html).

API returns a C<RetrievalToken>, which can be used with
C<ListRetrievedTraces> or C<GetRetrievedTracesGraph> to fetch results.
Retrievals will time out after 60 minutes. To execute long time ranges,
consider segmenting into multiple retrievals.

If you are using CloudWatch cross-account observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html),
you can use this operation in a monitoring account to retrieve data
from a linked source account, as long as both accounts have transaction
search enabled.

For retrieving data from X-Ray directly as opposed to the
Transaction-Search Log group, see BatchGetTraces
(https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html).


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::XRay::Tag>]


=back

Each argument is described in detail in: L<Paws::XRay::TagResource>

Returns: a L<Paws::XRay::TagResourceResponse> instance

Applies tags to an existing Amazon Web Services X-Ray group or sampling
rule.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::XRay::UntagResource>

Returns: a L<Paws::XRay::UntagResourceResponse> instance

Removes tags from an Amazon Web Services X-Ray group or sampling rule.
You cannot edit or delete system tags (those with an C<aws:> prefix).


=head2 UpdateGroup

=over

=item [FilterExpression => Str]

=item [GroupARN => Str]

=item [GroupName => Str]

=item [InsightsConfiguration => L<Paws::XRay::InsightsConfiguration>]


=back

Each argument is described in detail in: L<Paws::XRay::UpdateGroup>

Returns: a L<Paws::XRay::UpdateGroupResult> instance

Updates a group resource.


=head2 UpdateIndexingRule

=over

=item Name => Str

=item Rule => L<Paws::XRay::IndexingRuleValueUpdate>


=back

Each argument is described in detail in: L<Paws::XRay::UpdateIndexingRule>

Returns: a L<Paws::XRay::UpdateIndexingRuleResult> instance

Modifies an indexing ruleE<rsquo>s configuration.

Indexing rules are used for determining the sampling rate for spans
indexed from CloudWatch Logs. For more information, see Transaction
Search
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html).


=head2 UpdateSamplingRule

=over

=item SamplingRuleUpdate => L<Paws::XRay::SamplingRuleUpdate>


=back

Each argument is described in detail in: L<Paws::XRay::UpdateSamplingRule>

Returns: a L<Paws::XRay::UpdateSamplingRuleResult> instance

Modifies a sampling rule's configuration.


=head2 UpdateTraceSegmentDestination

=over

=item [Destination => Str]


=back

Each argument is described in detail in: L<Paws::XRay::UpdateTraceSegmentDestination>

Returns: a L<Paws::XRay::UpdateTraceSegmentDestinationResult> instance

Modifies the destination of data sent to C<PutTraceSegments>. The
Transaction Search feature requires the CloudWatchLogs destination. For
more information, see Transaction Search
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 BatchGetAllTraces(sub { },TraceIds => ArrayRef[Str|Undef], [NextToken => Str])

=head2 BatchGetAllTraces(TraceIds => ArrayRef[Str|Undef], [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Traces, passing the object as the first parameter, and the string 'Traces' as the second parameter 

If not, it will return a a L<Paws::XRay::BatchGetTracesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllGroups(sub { },[NextToken => Str])

=head2 GetAllGroups([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::XRay::GetGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSamplingRules(sub { },[NextToken => Str])

=head2 GetAllSamplingRules([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SamplingRuleRecords, passing the object as the first parameter, and the string 'SamplingRuleRecords' as the second parameter 

If not, it will return a a L<Paws::XRay::GetSamplingRulesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSamplingStatisticSummaries(sub { },[NextToken => Str])

=head2 GetAllSamplingStatisticSummaries([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SamplingStatisticSummaries, passing the object as the first parameter, and the string 'SamplingStatisticSummaries' as the second parameter 

If not, it will return a a L<Paws::XRay::GetSamplingStatisticSummariesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllServiceGraph(sub { },EndTime => Str, StartTime => Str, [GroupARN => Str, GroupName => Str, NextToken => Str])

=head2 GetAllServiceGraph(EndTime => Str, StartTime => Str, [GroupARN => Str, GroupName => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Services, passing the object as the first parameter, and the string 'Services' as the second parameter 

If not, it will return a a L<Paws::XRay::GetServiceGraphResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTimeSeriesServiceStatistics(sub { },EndTime => Str, StartTime => Str, [EntitySelectorExpression => Str, ForecastStatistics => Bool, GroupARN => Str, GroupName => Str, NextToken => Str, Period => Int])

=head2 GetAllTimeSeriesServiceStatistics(EndTime => Str, StartTime => Str, [EntitySelectorExpression => Str, ForecastStatistics => Bool, GroupARN => Str, GroupName => Str, NextToken => Str, Period => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TimeSeriesServiceStatistics, passing the object as the first parameter, and the string 'TimeSeriesServiceStatistics' as the second parameter 

If not, it will return a a L<Paws::XRay::GetTimeSeriesServiceStatisticsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTraceGraph(sub { },TraceIds => ArrayRef[Str|Undef], [NextToken => Str])

=head2 GetAllTraceGraph(TraceIds => ArrayRef[Str|Undef], [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Services, passing the object as the first parameter, and the string 'Services' as the second parameter 

If not, it will return a a L<Paws::XRay::GetTraceGraphResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTraceSummaries(sub { },EndTime => Str, StartTime => Str, [FilterExpression => Str, NextToken => Str, Sampling => Bool, SamplingStrategy => L<Paws::XRay::SamplingStrategy>, TimeRangeType => Str])

=head2 GetAllTraceSummaries(EndTime => Str, StartTime => Str, [FilterExpression => Str, NextToken => Str, Sampling => Bool, SamplingStrategy => L<Paws::XRay::SamplingStrategy>, TimeRangeType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TraceSummaries, passing the object as the first parameter, and the string 'TraceSummaries' as the second parameter 

If not, it will return a a L<Paws::XRay::GetTraceSummariesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourcePolicies(sub { },[NextToken => Str])

=head2 ListAllResourcePolicies([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourcePolicies, passing the object as the first parameter, and the string 'ResourcePolicies' as the second parameter 

If not, it will return a a L<Paws::XRay::ListResourcePoliciesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceARN => Str, [NextToken => Str])

=head2 ListAllTagsForResource(ResourceARN => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::XRay::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

