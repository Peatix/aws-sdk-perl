package Paws::MigrationHubStrategy;
  use Moose;
  sub service { 'migrationhub-strategy' }
  sub signing_name { 'migrationhub-strategy' }
  sub version { '2020-02-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetApplicationComponentDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetApplicationComponentDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationComponentStrategies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetApplicationComponentStrategies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImportFileTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetImportFileTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLatestAssessmentId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetLatestAssessmentId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPortfolioPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetPortfolioPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPortfolioSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetPortfolioSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendationReportDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetRecommendationReportDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServerDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetServerDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServerStrategies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::GetServerStrategies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnalyzableServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::ListAnalyzableServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::ListApplicationComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::ListCollectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImportFileTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::ListImportFileTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::ListServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPortfolioPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::PutPortfolioPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::StartAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImportFileTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::StartImportFileTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRecommendationReportGeneration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::StartRecommendationReportGeneration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::StopAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplicationComponentConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::UpdateApplicationComponentConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServerConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubStrategy::UpdateServerConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllServerDetails {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetServerDetails(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetServerDetails(@_, nextToken => $next_result->nextToken);
        push @{ $result->associatedApplications }, @{ $next_result->associatedApplications };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'associatedApplications') foreach (@{ $result->associatedApplications });
        $result = $self->GetServerDetails(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'associatedApplications') foreach (@{ $result->associatedApplications });
    }

    return undef
  }
  sub ListAllAnalyzableServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnalyzableServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAnalyzableServers(@_, nextToken => $next_result->nextToken);
        push @{ $result->analyzableServers }, @{ $next_result->analyzableServers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'analyzableServers') foreach (@{ $result->analyzableServers });
        $result = $self->ListAnalyzableServers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'analyzableServers') foreach (@{ $result->analyzableServers });
    }

    return undef
  }
  sub ListAllApplicationComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplicationComponents(@_, nextToken => $next_result->nextToken);
        push @{ $result->applicationComponentInfos }, @{ $next_result->applicationComponentInfos };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'applicationComponentInfos') foreach (@{ $result->applicationComponentInfos });
        $result = $self->ListApplicationComponents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'applicationComponentInfos') foreach (@{ $result->applicationComponentInfos });
    }

    return undef
  }
  sub ListAllCollectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCollectors(@_, nextToken => $next_result->nextToken);
        push @{ $result->Collectors }, @{ $next_result->Collectors };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'Collectors') foreach (@{ $result->Collectors });
        $result = $self->ListCollectors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'Collectors') foreach (@{ $result->Collectors });
    }

    return undef
  }
  sub ListAllImportFileTask {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImportFileTask(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListImportFileTask(@_, nextToken => $next_result->nextToken);
        push @{ $result->taskInfos }, @{ $next_result->taskInfos };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'taskInfos') foreach (@{ $result->taskInfos });
        $result = $self->ListImportFileTask(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'taskInfos') foreach (@{ $result->taskInfos });
    }

    return undef
  }
  sub ListAllServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServers(@_, nextToken => $next_result->nextToken);
        push @{ $result->serverInfos }, @{ $next_result->serverInfos };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serverInfos') foreach (@{ $result->serverInfos });
        $result = $self->ListServers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serverInfos') foreach (@{ $result->serverInfos });
    }

    return undef
  }


  sub operations { qw/GetApplicationComponentDetails GetApplicationComponentStrategies GetAssessment GetImportFileTask GetLatestAssessmentId GetPortfolioPreferences GetPortfolioSummary GetRecommendationReportDetails GetServerDetails GetServerStrategies ListAnalyzableServers ListApplicationComponents ListCollectors ListImportFileTask ListServers PutPortfolioPreferences StartAssessment StartImportFileTask StartRecommendationReportGeneration StopAssessment UpdateApplicationComponentConfig UpdateServerConfig / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy - Perl Interface to AWS Migration Hub Strategy Recommendations

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MigrationHubStrategy');
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

Migration Hub Strategy Recommendations

This API reference provides descriptions, syntax, and other details
about each of the actions and data types for Migration Hub Strategy
Recommendations (Strategy Recommendations). The topic for each action
shows the API request parameters and the response. Alternatively, you
can use one of the AWS SDKs to access an API that is tailored to the
programming language or platform that you're using. For more
information, see AWS SDKs (http://aws.amazon.com/tools/#SDKs).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy-2020-02-19>


=head1 METHODS

=head2 GetApplicationComponentDetails

=over

=item ApplicationComponentId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetApplicationComponentDetails>

Returns: a L<Paws::MigrationHubStrategy::GetApplicationComponentDetailsResponse> instance

Retrieves details about an application component.


=head2 GetApplicationComponentStrategies

=over

=item ApplicationComponentId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetApplicationComponentStrategies>

Returns: a L<Paws::MigrationHubStrategy::GetApplicationComponentStrategiesResponse> instance

Retrieves a list of all the recommended strategies and tools for an
application component running on a server.


=head2 GetAssessment

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetAssessment>

Returns: a L<Paws::MigrationHubStrategy::GetAssessmentResponse> instance

Retrieves the status of an on-going assessment.


=head2 GetImportFileTask

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetImportFileTask>

Returns: a L<Paws::MigrationHubStrategy::GetImportFileTaskResponse> instance

Retrieves the details about a specific import task.


=head2 GetLatestAssessmentId






Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetLatestAssessmentId>

Returns: a L<Paws::MigrationHubStrategy::GetLatestAssessmentIdResponse> instance

Retrieve the latest ID of a specific assessment task.


=head2 GetPortfolioPreferences






Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetPortfolioPreferences>

Returns: a L<Paws::MigrationHubStrategy::GetPortfolioPreferencesResponse> instance

Retrieves your migration and modernization preferences.


=head2 GetPortfolioSummary






Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetPortfolioSummary>

Returns: a L<Paws::MigrationHubStrategy::GetPortfolioSummaryResponse> instance

Retrieves overall summary including the number of servers to rehost and
the overall number of anti-patterns.


=head2 GetRecommendationReportDetails

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetRecommendationReportDetails>

Returns: a L<Paws::MigrationHubStrategy::GetRecommendationReportDetailsResponse> instance

Retrieves detailed information about the specified recommendation
report.


=head2 GetServerDetails

=over

=item ServerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetServerDetails>

Returns: a L<Paws::MigrationHubStrategy::GetServerDetailsResponse> instance

Retrieves detailed information about a specified server.


=head2 GetServerStrategies

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::GetServerStrategies>

Returns: a L<Paws::MigrationHubStrategy::GetServerStrategiesResponse> instance

Retrieves recommended strategies and tools for the specified server.


=head2 ListAnalyzableServers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::ListAnalyzableServers>

Returns: a L<Paws::MigrationHubStrategy::ListAnalyzableServersResponse> instance

Retrieves a list of all the servers fetched from customer vCenter using
Strategy Recommendation Collector.


=head2 ListApplicationComponents

=over

=item [ApplicationComponentCriteria => Str]

=item [FilterValue => Str]

=item [GroupIdFilter => ArrayRef[L<Paws::MigrationHubStrategy::Group>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::ListApplicationComponents>

Returns: a L<Paws::MigrationHubStrategy::ListApplicationComponentsResponse> instance

Retrieves a list of all the application components (processes).


=head2 ListCollectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::ListCollectors>

Returns: a L<Paws::MigrationHubStrategy::ListCollectorsResponse> instance

Retrieves a list of all the installed collectors.


=head2 ListImportFileTask

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::ListImportFileTask>

Returns: a L<Paws::MigrationHubStrategy::ListImportFileTaskResponse> instance

Retrieves a list of all the imports performed.


=head2 ListServers

=over

=item [FilterValue => Str]

=item [GroupIdFilter => ArrayRef[L<Paws::MigrationHubStrategy::Group>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServerCriteria => Str]

=item [Sort => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::ListServers>

Returns: a L<Paws::MigrationHubStrategy::ListServersResponse> instance

Returns a list of all the servers.


=head2 PutPortfolioPreferences

=over

=item [ApplicationMode => Str]

=item [ApplicationPreferences => L<Paws::MigrationHubStrategy::ApplicationPreferences>]

=item [DatabasePreferences => L<Paws::MigrationHubStrategy::DatabasePreferences>]

=item [PrioritizeBusinessGoals => L<Paws::MigrationHubStrategy::PrioritizeBusinessGoals>]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::PutPortfolioPreferences>

Returns: a L<Paws::MigrationHubStrategy::PutPortfolioPreferencesResponse> instance

Saves the specified migration and modernization preferences.


=head2 StartAssessment

=over

=item [AssessmentDataSourceType => Str]

=item [AssessmentTargets => ArrayRef[L<Paws::MigrationHubStrategy::AssessmentTarget>]]

=item [S3bucketForAnalysisData => Str]

=item [S3bucketForReportData => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::StartAssessment>

Returns: a L<Paws::MigrationHubStrategy::StartAssessmentResponse> instance

Starts the assessment of an on-premises environment.


=head2 StartImportFileTask

=over

=item Name => Str

=item S3Bucket => Str

=item S3key => Str

=item [DataSourceType => Str]

=item [GroupId => ArrayRef[L<Paws::MigrationHubStrategy::Group>]]

=item [S3bucketForReportData => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::StartImportFileTask>

Returns: a L<Paws::MigrationHubStrategy::StartImportFileTaskResponse> instance

Starts a file import.


=head2 StartRecommendationReportGeneration

=over

=item [GroupIdFilter => ArrayRef[L<Paws::MigrationHubStrategy::Group>]]

=item [OutputFormat => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::StartRecommendationReportGeneration>

Returns: a L<Paws::MigrationHubStrategy::StartRecommendationReportGenerationResponse> instance

Starts generating a recommendation report.


=head2 StopAssessment

=over

=item AssessmentId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::StopAssessment>

Returns: a L<Paws::MigrationHubStrategy::StopAssessmentResponse> instance

Stops the assessment of an on-premises environment.


=head2 UpdateApplicationComponentConfig

=over

=item ApplicationComponentId => Str

=item [AppType => Str]

=item [ConfigureOnly => Bool]

=item [InclusionStatus => Str]

=item [SecretsManagerKey => Str]

=item [SourceCodeList => ArrayRef[L<Paws::MigrationHubStrategy::SourceCode>]]

=item [StrategyOption => L<Paws::MigrationHubStrategy::StrategyOption>]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::UpdateApplicationComponentConfig>

Returns: a L<Paws::MigrationHubStrategy::UpdateApplicationComponentConfigResponse> instance

Updates the configuration of an application component.


=head2 UpdateServerConfig

=over

=item ServerId => Str

=item [StrategyOption => L<Paws::MigrationHubStrategy::StrategyOption>]


=back

Each argument is described in detail in: L<Paws::MigrationHubStrategy::UpdateServerConfig>

Returns: a L<Paws::MigrationHubStrategy::UpdateServerConfigResponse> instance

Updates the configuration of the specified server.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllServerDetails(sub { },ServerId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllServerDetails(ServerId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - associatedApplications, passing the object as the first parameter, and the string 'associatedApplications' as the second parameter 

If not, it will return a a L<Paws::MigrationHubStrategy::GetServerDetailsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAnalyzableServers(sub { },[MaxResults => Int, NextToken => Str, Sort => Str])

=head2 ListAllAnalyzableServers([MaxResults => Int, NextToken => Str, Sort => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - analyzableServers, passing the object as the first parameter, and the string 'analyzableServers' as the second parameter 

If not, it will return a a L<Paws::MigrationHubStrategy::ListAnalyzableServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationComponents(sub { },[ApplicationComponentCriteria => Str, FilterValue => Str, GroupIdFilter => ArrayRef[L<Paws::MigrationHubStrategy::Group>], MaxResults => Int, NextToken => Str, Sort => Str])

=head2 ListAllApplicationComponents([ApplicationComponentCriteria => Str, FilterValue => Str, GroupIdFilter => ArrayRef[L<Paws::MigrationHubStrategy::Group>], MaxResults => Int, NextToken => Str, Sort => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - applicationComponentInfos, passing the object as the first parameter, and the string 'applicationComponentInfos' as the second parameter 

If not, it will return a a L<Paws::MigrationHubStrategy::ListApplicationComponentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollectors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCollectors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Collectors, passing the object as the first parameter, and the string 'Collectors' as the second parameter 

If not, it will return a a L<Paws::MigrationHubStrategy::ListCollectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImportFileTask(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllImportFileTask([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - taskInfos, passing the object as the first parameter, and the string 'taskInfos' as the second parameter 

If not, it will return a a L<Paws::MigrationHubStrategy::ListImportFileTaskResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServers(sub { },[FilterValue => Str, GroupIdFilter => ArrayRef[L<Paws::MigrationHubStrategy::Group>], MaxResults => Int, NextToken => Str, ServerCriteria => Str, Sort => Str])

=head2 ListAllServers([FilterValue => Str, GroupIdFilter => ArrayRef[L<Paws::MigrationHubStrategy::Group>], MaxResults => Int, NextToken => Str, ServerCriteria => Str, Sort => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serverInfos, passing the object as the first parameter, and the string 'serverInfos' as the second parameter 

If not, it will return a a L<Paws::MigrationHubStrategy::ListServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

