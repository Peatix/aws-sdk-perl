package Paws::Personalize;
  use Moose;
  sub service { 'personalize' }
  sub signing_name { 'personalize' }
  sub version { '2018-05-22' }
  sub target_prefix { 'AmazonPersonalize' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateBatchInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateBatchInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBatchSegmentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateBatchSegmentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataDeletionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateDataDeletionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateDatasetExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateEventTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMetricAttribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateMetricAttribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRecommender {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateRecommender', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSolution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateSolution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSolutionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::CreateSolutionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteEventTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMetricAttribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteMetricAttribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecommender {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteRecommender', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSolution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DeleteSolution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBatchInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeBatchInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBatchSegmentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeBatchSegmentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataDeletionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeDataDeletionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeDatasetExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeEventTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFeatureTransformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeFeatureTransformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetricAttribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeMetricAttribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecommender {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeRecommender', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSolution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeSolution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSolutionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::DescribeSolutionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolutionMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::GetSolutionMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBatchInferenceJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListBatchInferenceJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBatchSegmentJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListBatchSegmentJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCampaigns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListCampaigns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataDeletionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListDataDeletionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListDatasetExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListDatasetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListDatasetImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventTrackers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListEventTrackers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMetricAttributionMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListMetricAttributionMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMetricAttributions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListMetricAttributions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecipes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListRecipes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommenders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListRecommenders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListSolutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolutionVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListSolutionVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRecommender {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::StartRecommender', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopRecommender {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::StopRecommender', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSolutionVersionCreation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::StopSolutionVersionCreation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::UpdateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::UpdateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMetricAttribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::UpdateMetricAttribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecommender {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::UpdateRecommender', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSolution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Personalize::UpdateSolution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBatchInferenceJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBatchInferenceJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBatchInferenceJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->batchInferenceJobs }, @{ $next_result->batchInferenceJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'batchInferenceJobs') foreach (@{ $result->batchInferenceJobs });
        $result = $self->ListBatchInferenceJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'batchInferenceJobs') foreach (@{ $result->batchInferenceJobs });
    }

    return undef
  }
  sub ListAllBatchSegmentJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBatchSegmentJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBatchSegmentJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->batchSegmentJobs }, @{ $next_result->batchSegmentJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'batchSegmentJobs') foreach (@{ $result->batchSegmentJobs });
        $result = $self->ListBatchSegmentJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'batchSegmentJobs') foreach (@{ $result->batchSegmentJobs });
    }

    return undef
  }
  sub ListAllCampaigns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCampaigns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCampaigns(@_, nextToken => $next_result->nextToken);
        push @{ $result->campaigns }, @{ $next_result->campaigns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'campaigns') foreach (@{ $result->campaigns });
        $result = $self->ListCampaigns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'campaigns') foreach (@{ $result->campaigns });
    }

    return undef
  }
  sub ListAllDatasetExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasetExportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasetExportJobs }, @{ $next_result->datasetExportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasetExportJobs') foreach (@{ $result->datasetExportJobs });
        $result = $self->ListDatasetExportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasetExportJobs') foreach (@{ $result->datasetExportJobs });
    }

    return undef
  }
  sub ListAllDatasetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasetGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasetGroups }, @{ $next_result->datasetGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasetGroups') foreach (@{ $result->datasetGroups });
        $result = $self->ListDatasetGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasetGroups') foreach (@{ $result->datasetGroups });
    }

    return undef
  }
  sub ListAllDatasetImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasetImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasetImportJobs }, @{ $next_result->datasetImportJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasetImportJobs') foreach (@{ $result->datasetImportJobs });
        $result = $self->ListDatasetImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasetImportJobs') foreach (@{ $result->datasetImportJobs });
    }

    return undef
  }
  sub ListAllDatasets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatasets(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasets }, @{ $next_result->datasets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasets') foreach (@{ $result->datasets });
        $result = $self->ListDatasets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasets') foreach (@{ $result->datasets });
    }

    return undef
  }
  sub ListAllEventTrackers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventTrackers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEventTrackers(@_, nextToken => $next_result->nextToken);
        push @{ $result->eventTrackers }, @{ $next_result->eventTrackers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'eventTrackers') foreach (@{ $result->eventTrackers });
        $result = $self->ListEventTrackers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'eventTrackers') foreach (@{ $result->eventTrackers });
    }

    return undef
  }
  sub ListAllFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFilters(@_, nextToken => $next_result->nextToken);
        push @{ $result->Filters }, @{ $next_result->Filters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'Filters') foreach (@{ $result->Filters });
        $result = $self->ListFilters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'Filters') foreach (@{ $result->Filters });
    }

    return undef
  }
  sub ListAllMetricAttributionMetrics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMetricAttributionMetrics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMetricAttributionMetrics(@_, nextToken => $next_result->nextToken);
        push @{ $result->metrics }, @{ $next_result->metrics };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'metrics') foreach (@{ $result->metrics });
        $result = $self->ListMetricAttributionMetrics(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'metrics') foreach (@{ $result->metrics });
    }

    return undef
  }
  sub ListAllMetricAttributions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMetricAttributions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMetricAttributions(@_, nextToken => $next_result->nextToken);
        push @{ $result->metricAttributions }, @{ $next_result->metricAttributions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'metricAttributions') foreach (@{ $result->metricAttributions });
        $result = $self->ListMetricAttributions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'metricAttributions') foreach (@{ $result->metricAttributions });
    }

    return undef
  }
  sub ListAllRecipes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecipes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRecipes(@_, nextToken => $next_result->nextToken);
        push @{ $result->recipes }, @{ $next_result->recipes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recipes') foreach (@{ $result->recipes });
        $result = $self->ListRecipes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recipes') foreach (@{ $result->recipes });
    }

    return undef
  }
  sub ListAllRecommenders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecommenders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRecommenders(@_, nextToken => $next_result->nextToken);
        push @{ $result->recommenders }, @{ $next_result->recommenders };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recommenders') foreach (@{ $result->recommenders });
        $result = $self->ListRecommenders(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recommenders') foreach (@{ $result->recommenders });
    }

    return undef
  }
  sub ListAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSchemas(@_, nextToken => $next_result->nextToken);
        push @{ $result->schemas }, @{ $next_result->schemas };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'schemas') foreach (@{ $result->schemas });
        $result = $self->ListSchemas(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'schemas') foreach (@{ $result->schemas });
    }

    return undef
  }
  sub ListAllSolutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSolutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->solutions }, @{ $next_result->solutions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'solutions') foreach (@{ $result->solutions });
        $result = $self->ListSolutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'solutions') foreach (@{ $result->solutions });
    }

    return undef
  }
  sub ListAllSolutionVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolutionVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSolutionVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->solutionVersions }, @{ $next_result->solutionVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'solutionVersions') foreach (@{ $result->solutionVersions });
        $result = $self->ListSolutionVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'solutionVersions') foreach (@{ $result->solutionVersions });
    }

    return undef
  }


  sub operations { qw/CreateBatchInferenceJob CreateBatchSegmentJob CreateCampaign CreateDataDeletionJob CreateDataset CreateDatasetExportJob CreateDatasetGroup CreateDatasetImportJob CreateEventTracker CreateFilter CreateMetricAttribution CreateRecommender CreateSchema CreateSolution CreateSolutionVersion DeleteCampaign DeleteDataset DeleteDatasetGroup DeleteEventTracker DeleteFilter DeleteMetricAttribution DeleteRecommender DeleteSchema DeleteSolution DescribeAlgorithm DescribeBatchInferenceJob DescribeBatchSegmentJob DescribeCampaign DescribeDataDeletionJob DescribeDataset DescribeDatasetExportJob DescribeDatasetGroup DescribeDatasetImportJob DescribeEventTracker DescribeFeatureTransformation DescribeFilter DescribeMetricAttribution DescribeRecipe DescribeRecommender DescribeSchema DescribeSolution DescribeSolutionVersion GetSolutionMetrics ListBatchInferenceJobs ListBatchSegmentJobs ListCampaigns ListDataDeletionJobs ListDatasetExportJobs ListDatasetGroups ListDatasetImportJobs ListDatasets ListEventTrackers ListFilters ListMetricAttributionMetrics ListMetricAttributions ListRecipes ListRecommenders ListSchemas ListSolutions ListSolutionVersions ListTagsForResource StartRecommender StopRecommender StopSolutionVersionCreation TagResource UntagResource UpdateCampaign UpdateDataset UpdateMetricAttribution UpdateRecommender UpdateSolution / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize - Perl Interface to AWS Amazon Personalize

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Personalize');
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

Amazon Personalize is a machine learning service that makes it easy to
add individualized recommendations to customers.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateBatchInferenceJob

=over

=item JobInput => L<Paws::Personalize::BatchInferenceJobInput>

=item JobName => Str

=item JobOutput => L<Paws::Personalize::BatchInferenceJobOutput>

=item RoleArn => Str

=item SolutionVersionArn => Str

=item [BatchInferenceJobConfig => L<Paws::Personalize::BatchInferenceJobConfig>]

=item [BatchInferenceJobMode => Str]

=item [FilterArn => Str]

=item [NumResults => Int]

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]

=item [ThemeGenerationConfig => L<Paws::Personalize::ThemeGenerationConfig>]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateBatchInferenceJob>

Returns: a L<Paws::Personalize::CreateBatchInferenceJobResponse> instance

Generates batch recommendations based on a list of items or users
stored in Amazon S3 and exports the recommendations to an Amazon S3
bucket.

To generate batch recommendations, specify the ARN of a solution
version and an Amazon S3 URI for the input and output data. For user
personalization, popular items, and personalized ranking solutions, the
batch inference job generates a list of recommended items for each user
ID in the input file. For related items solutions, the job generates a
list of recommended items for each item ID in the input file.

For more information, see Creating a batch inference job
(https://docs.aws.amazon.com/personalize/latest/dg/getting-batch-recommendations.html).

If you use the Similar-Items recipe, Amazon Personalize can add
descriptive themes to batch recommendations. To generate themes, set
the job's mode to C<THEME_GENERATION> and specify the name of the field
that contains item names in the input data.

For more information about generating themes, see Batch recommendations
with themes from Content Generator
(https://docs.aws.amazon.com/personalize/latest/dg/themed-batch-recommendations.html).

You can't get batch recommendations with the Trending-Now or
Next-Best-Action recipes.


=head2 CreateBatchSegmentJob

=over

=item JobInput => L<Paws::Personalize::BatchSegmentJobInput>

=item JobName => Str

=item JobOutput => L<Paws::Personalize::BatchSegmentJobOutput>

=item RoleArn => Str

=item SolutionVersionArn => Str

=item [FilterArn => Str]

=item [NumResults => Int]

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateBatchSegmentJob>

Returns: a L<Paws::Personalize::CreateBatchSegmentJobResponse> instance

Creates a batch segment job. The operation can handle up to 50 million
records and the input file must be in JSON format. For more
information, see Getting batch recommendations and user segments
(https://docs.aws.amazon.com/personalize/latest/dg/recommendations-batch.html).


=head2 CreateCampaign

=over

=item Name => Str

=item SolutionVersionArn => Str

=item [CampaignConfig => L<Paws::Personalize::CampaignConfig>]

=item [MinProvisionedTPS => Int]

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateCampaign>

Returns: a L<Paws::Personalize::CreateCampaignResponse> instance

You incur campaign costs while it is active. To avoid unnecessary
costs, make sure to delete the campaign when you are finished. For
information about campaign costs, see Amazon Personalize pricing
(https://aws.amazon.com/personalize/pricing/).

Creates a campaign that deploys a solution version. When a client calls
the GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
and GetPersonalizedRanking
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html)
APIs, a campaign is specified in the request.

B<Minimum Provisioned TPS and Auto-Scaling>

A high C<minProvisionedTPS> will increase your cost. We recommend
starting with 1 for C<minProvisionedTPS> (the default). Track your
usage using Amazon CloudWatch metrics, and increase the
C<minProvisionedTPS> as necessary.

When you create an Amazon Personalize campaign, you can specify the
minimum provisioned transactions per second (C<minProvisionedTPS>) for
the campaign. This is the baseline transaction throughput for the
campaign provisioned by Amazon Personalize. It sets the minimum billing
charge for the campaign while it is active. A transaction is a single
C<GetRecommendations> or C<GetPersonalizedRanking> request. The default
C<minProvisionedTPS> is 1.

If your TPS increases beyond the C<minProvisionedTPS>, Amazon
Personalize auto-scales the provisioned capacity up and down, but never
below C<minProvisionedTPS>. There's a short time delay while the
capacity is increased that might cause loss of transactions. When your
traffic reduces, capacity returns to the C<minProvisionedTPS>.

You are charged for the the minimum provisioned TPS or, if your
requests exceed the C<minProvisionedTPS>, the actual TPS. The actual
TPS is the total number of recommendation requests you make. We
recommend starting with a low C<minProvisionedTPS>, track your usage
using Amazon CloudWatch metrics, and then increase the
C<minProvisionedTPS> as necessary.

For more information about campaign costs, see Amazon Personalize
pricing (https://aws.amazon.com/personalize/pricing/).

B<Status>

A campaign can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

To get the campaign status, call DescribeCampaign
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html).

Wait until the C<status> of the campaign is C<ACTIVE> before asking the
campaign for recommendations.

B<Related APIs>

=over

=item *

ListCampaigns
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html)

=item *

DescribeCampaign
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html)

=item *

UpdateCampaign
(https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateCampaign.html)

=item *

DeleteCampaign
(https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteCampaign.html)

=back



=head2 CreateDataDeletionJob

=over

=item DatasetGroupArn => Str

=item DataSource => L<Paws::Personalize::DataSource>

=item JobName => Str

=item RoleArn => Str

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateDataDeletionJob>

Returns: a L<Paws::Personalize::CreateDataDeletionJobResponse> instance

Creates a batch job that deletes all references to specific users from
an Amazon Personalize dataset group in batches. You specify the users
to delete in a CSV file of userIds in an Amazon S3 bucket. After a job
completes, Amazon Personalize no longer trains on the usersE<rsquo>
data and no longer considers the users when generating user segments.
For more information about creating a data deletion job, see Deleting
users
(https://docs.aws.amazon.com/personalize/latest/dg/delete-records.html).

=over

=item *

Your input file must be a CSV file with a single USER_ID column that
lists the users IDs. For more information about preparing the CSV file,
see Preparing your data deletion file and uploading it to Amazon S3
(https://docs.aws.amazon.com/personalize/latest/dg/prepare-deletion-input-file.html).

=item *

To give Amazon Personalize permission to access your input CSV file of
userIds, you must specify an IAM service role that has permission to
read from the data source. This role needs C<GetObject> and
C<ListBucket> permissions for the bucket and its content. These
permissions are the same as importing data. For information on granting
access to your Amazon S3 bucket, see Giving Amazon Personalize Access
to Amazon S3 Resources
(https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html).

=back

After you create a job, it can take up to a day to delete all
references to the users from datasets and models. Until the job
completes, Amazon Personalize continues to use the data when training.
And if you use a User Segmentation recipe, the users might appear in
user segments.

B<Status>

A data deletion job can have one of the following statuses:

=over

=item *

PENDING E<gt> IN_PROGRESS E<gt> COMPLETED -or- FAILED

=back

To get the status of the data deletion job, call
DescribeDataDeletionJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataDeletionJob.html)
API operation and specify the Amazon Resource Name (ARN) of the job. If
the status is FAILED, the response includes a C<failureReason> key,
which describes why the job failed.

B<Related APIs>

=over

=item *

ListDataDeletionJobs
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListDataDeletionJobs.html)

=item *

DescribeDataDeletionJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataDeletionJob.html)

=back



=head2 CreateDataset

=over

=item DatasetGroupArn => Str

=item DatasetType => Str

=item Name => Str

=item SchemaArn => Str

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateDataset>

Returns: a L<Paws::Personalize::CreateDatasetResponse> instance

Creates an empty dataset and adds it to the specified dataset group.
Use CreateDatasetImportJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html)
to import your training data to a dataset.

There are 5 types of datasets:

=over

=item *

Item interactions

=item *

Items

=item *

Users

=item *

Action interactions

=item *

Actions

=back

Each dataset type has an associated schema with required field types.
Only the C<Item interactions> dataset is required in order to train a
model (also referred to as creating a solution).

A dataset can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

To get the status of the dataset, call DescribeDataset
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html).

B<Related APIs>

=over

=item *

CreateDatasetGroup
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html)

=item *

ListDatasets
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasets.html)

=item *

DescribeDataset
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html)

=item *

DeleteDataset
(https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDataset.html)

=back



=head2 CreateDatasetExportJob

=over

=item DatasetArn => Str

=item JobName => Str

=item JobOutput => L<Paws::Personalize::DatasetExportJobOutput>

=item RoleArn => Str

=item [IngestionMode => Str]

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateDatasetExportJob>

Returns: a L<Paws::Personalize::CreateDatasetExportJobResponse> instance

Creates a job that exports data from your dataset to an Amazon S3
bucket. To allow Amazon Personalize to export the training data, you
must specify an service-linked IAM role that gives Amazon Personalize
C<PutObject> permissions for your Amazon S3 bucket. For information,
see Exporting a dataset
(https://docs.aws.amazon.com/personalize/latest/dg/export-data.html) in
the Amazon Personalize developer guide.

B<Status>

A dataset export job can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=back

To get the status of the export job, call DescribeDatasetExportJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetExportJob.html),
and specify the Amazon Resource Name (ARN) of the dataset export job.
The dataset export is complete when the status shows as ACTIVE. If the
status shows as CREATE FAILED, the response includes a C<failureReason>
key, which describes why the job failed.


=head2 CreateDatasetGroup

=over

=item Name => Str

=item [Domain => Str]

=item [KmsKeyArn => Str]

=item [RoleArn => Str]

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateDatasetGroup>

Returns: a L<Paws::Personalize::CreateDatasetGroupResponse> instance

Creates an empty dataset group. A dataset group is a container for
Amazon Personalize resources. A dataset group can contain at most three
datasets, one for each type of dataset:

=over

=item *

Item interactions

=item *

Items

=item *

Users

=item *

Actions

=item *

Action interactions

=back

A dataset group can be a Domain dataset group, where you specify a
domain and use pre-configured resources like recommenders, or a Custom
dataset group, where you use custom resources, such as a solution with
a solution version, that you deploy with a campaign. If you start with
a Domain dataset group, you can still add custom resources such as
solutions and solution versions trained with recipes for custom use
cases and deployed with campaigns.

A dataset group can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING

=back

To get the status of the dataset group, call DescribeDatasetGroup
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html).
If the status shows as CREATE FAILED, the response includes a
C<failureReason> key, which describes why the creation failed.

You must wait until the C<status> of the dataset group is C<ACTIVE>
before adding a dataset to the group.

You can specify an Key Management Service (KMS) key to encrypt the
datasets in the group. If you specify a KMS key, you must also include
an Identity and Access Management (IAM) role that has permission to
access the key.

B<APIs that require a dataset group ARN in the request>

=over

=item *

CreateDataset
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html)

=item *

CreateEventTracker
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html)

=item *

CreateSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html)

=back

B<Related APIs>

=over

=item *

ListDatasetGroups
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetGroups.html)

=item *

DescribeDatasetGroup
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html)

=item *

DeleteDatasetGroup
(https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDatasetGroup.html)

=back



=head2 CreateDatasetImportJob

=over

=item DatasetArn => Str

=item DataSource => L<Paws::Personalize::DataSource>

=item JobName => Str

=item RoleArn => Str

=item [ImportMode => Str]

=item [PublishAttributionMetricsToS3 => Bool]

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateDatasetImportJob>

Returns: a L<Paws::Personalize::CreateDatasetImportJobResponse> instance

Creates a job that imports training data from your data source (an
Amazon S3 bucket) to an Amazon Personalize dataset. To allow Amazon
Personalize to import the training data, you must specify an IAM
service role that has permission to read from the data source, as
Amazon Personalize makes a copy of your data and processes it
internally. For information on granting access to your Amazon S3
bucket, see Giving Amazon Personalize Access to Amazon S3 Resources
(https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html).

If you already created a recommender or deployed a custom solution
version with a campaign, how new bulk records influence recommendations
depends on the domain use case or recipe that you use. For more
information, see How new data influences real-time recommendations
(https://docs.aws.amazon.com/personalize/latest/dg/how-new-data-influences-recommendations.html).

By default, a dataset import job replaces any existing data in the
dataset that you imported in bulk. To add new records without replacing
existing data, specify INCREMENTAL for the import mode in the
CreateDatasetImportJob operation.

B<Status>

A dataset import job can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=back

To get the status of the import job, call DescribeDatasetImportJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html),
providing the Amazon Resource Name (ARN) of the dataset import job. The
dataset import is complete when the status shows as ACTIVE. If the
status shows as CREATE FAILED, the response includes a C<failureReason>
key, which describes why the job failed.

Importing takes time. You must wait until the status shows as ACTIVE
before training a model using the dataset.

B<Related APIs>

=over

=item *

ListDatasetImportJobs
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetImportJobs.html)

=item *

DescribeDatasetImportJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html)

=back



=head2 CreateEventTracker

=over

=item DatasetGroupArn => Str

=item Name => Str

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateEventTracker>

Returns: a L<Paws::Personalize::CreateEventTrackerResponse> instance

Creates an event tracker that you use when adding event data to a
specified dataset group using the PutEvents
(https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html)
API.

Only one event tracker can be associated with a dataset group. You will
get an error if you call C<CreateEventTracker> using the same dataset
group as an existing event tracker.

When you create an event tracker, the response includes a tracking ID,
which you pass as a parameter when you use the PutEvents
(https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html)
operation. Amazon Personalize then appends the event data to the Item
interactions dataset of the dataset group you specify in your event
tracker.

The event tracker can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

To get the status of the event tracker, call DescribeEventTracker
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html).

The event tracker must be in the ACTIVE state before using the tracking
ID.

B<Related APIs>

=over

=item *

ListEventTrackers
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListEventTrackers.html)

=item *

DescribeEventTracker
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html)

=item *

DeleteEventTracker
(https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteEventTracker.html)

=back



=head2 CreateFilter

=over

=item DatasetGroupArn => Str

=item FilterExpression => Str

=item Name => Str

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateFilter>

Returns: a L<Paws::Personalize::CreateFilterResponse> instance

Creates a recommendation filter. For more information, see Filtering
recommendations and user segments
(https://docs.aws.amazon.com/personalize/latest/dg/filter.html).


=head2 CreateMetricAttribution

=over

=item DatasetGroupArn => Str

=item Metrics => ArrayRef[L<Paws::Personalize::MetricAttribute>]

=item MetricsOutputConfig => L<Paws::Personalize::MetricAttributionOutput>

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Personalize::CreateMetricAttribution>

Returns: a L<Paws::Personalize::CreateMetricAttributionResponse> instance

Creates a metric attribution. A metric attribution creates reports on
the data that you import into Amazon Personalize. Depending on how you
imported the data, you can view reports in Amazon CloudWatch or Amazon
S3. For more information, see Measuring impact of recommendations
(https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html).


=head2 CreateRecommender

=over

=item DatasetGroupArn => Str

=item Name => Str

=item RecipeArn => Str

=item [RecommenderConfig => L<Paws::Personalize::RecommenderConfig>]

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateRecommender>

Returns: a L<Paws::Personalize::CreateRecommenderResponse> instance

Creates a recommender with the recipe (a Domain dataset group use case)
you specify. You create recommenders for a Domain dataset group and
specify the recommender's Amazon Resource Name (ARN) when you make a
GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
request.

B<Minimum recommendation requests per second>

A high C<minRecommendationRequestsPerSecond> will increase your bill.
We recommend starting with 1 for C<minRecommendationRequestsPerSecond>
(the default). Track your usage using Amazon CloudWatch metrics, and
increase the C<minRecommendationRequestsPerSecond> as necessary.

When you create a recommender, you can configure the recommender's
minimum recommendation requests per second. The minimum recommendation
requests per second (C<minRecommendationRequestsPerSecond>) specifies
the baseline recommendation request throughput provisioned by Amazon
Personalize. The default minRecommendationRequestsPerSecond is C<1>. A
recommendation request is a single C<GetRecommendations> operation.
Request throughput is measured in requests per second and Amazon
Personalize uses your requests per second to derive your requests per
hour and the price of your recommender usage.

If your requests per second increases beyond
C<minRecommendationRequestsPerSecond>, Amazon Personalize auto-scales
the provisioned capacity up and down, but never below
C<minRecommendationRequestsPerSecond>. There's a short time delay while
the capacity is increased that might cause loss of requests.

Your bill is the greater of either the minimum requests per hour (based
on minRecommendationRequestsPerSecond) or the actual number of
requests. The actual request throughput used is calculated as the
average requests/second within a one-hour window. We recommend starting
with the default C<minRecommendationRequestsPerSecond>, track your
usage using Amazon CloudWatch metrics, and then increase the
C<minRecommendationRequestsPerSecond> as necessary.

B<Status>

A recommender can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

STOP PENDING E<gt> STOP IN_PROGRESS E<gt> INACTIVE E<gt> START PENDING
E<gt> START IN_PROGRESS E<gt> ACTIVE

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

To get the recommender status, call DescribeRecommender
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html).

Wait until the C<status> of the recommender is C<ACTIVE> before asking
the recommender for recommendations.

B<Related APIs>

=over

=item *

ListRecommenders
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListRecommenders.html)

=item *

DescribeRecommender
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html)

=item *

UpdateRecommender
(https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateRecommender.html)

=item *

DeleteRecommender
(https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteRecommender.html)

=back



=head2 CreateSchema

=over

=item Name => Str

=item Schema => Str

=item [Domain => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateSchema>

Returns: a L<Paws::Personalize::CreateSchemaResponse> instance

Creates an Amazon Personalize schema from the specified schema string.
The schema you create must be in Avro JSON format.

Amazon Personalize recognizes three schema variants. Each schema is
associated with a dataset type and has a set of required field and
keywords. If you are creating a schema for a dataset in a Domain
dataset group, you provide the domain of the Domain dataset group. You
specify a schema when you call CreateDataset
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html).

B<Related APIs>

=over

=item *

ListSchemas
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListSchemas.html)

=item *

DescribeSchema
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSchema.html)

=item *

DeleteSchema
(https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSchema.html)

=back



=head2 CreateSolution

=over

=item DatasetGroupArn => Str

=item Name => Str

=item [EventType => Str]

=item [PerformAutoML => Bool]

=item [PerformAutoTraining => Bool]

=item [PerformHPO => Bool]

=item [RecipeArn => Str]

=item [SolutionConfig => L<Paws::Personalize::SolutionConfig>]

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateSolution>

Returns: a L<Paws::Personalize::CreateSolutionResponse> instance

By default, all new solutions use automatic training. With automatic
training, you incur training costs while your solution is active. To
avoid unnecessary costs, when you are finished you can update the
solution
(https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateSolution.html)
to turn off automatic training. For information about training costs,
see Amazon Personalize pricing
(https://aws.amazon.com/personalize/pricing/).

Creates the configuration for training a model (creating a solution
version). This configuration includes the recipe to use for model
training and optional training configuration, such as columns to use in
training and feature transformation parameters. For more information
about configuring a solution, see Creating and configuring a solution
(https://docs.aws.amazon.com/personalize/latest/dg/customizing-solution-config.html).

By default, new solutions use automatic training to create solution
versions every 7 days. You can change the training frequency. Automatic
solution version creation starts within one hour after the solution is
ACTIVE. If you manually create a solution version within the hour, the
solution skips the first automatic training. For more information, see
Configuring automatic training
(https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html).

To turn off automatic training, set C<performAutoTraining> to false. If
you turn off automatic training, you must manually create a solution
version by calling the CreateSolutionVersion
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html)
operation.

After training starts, you can get the solution version's Amazon
Resource Name (ARN) with the ListSolutionVersions
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html)
API operation. To get its status, use the DescribeSolutionVersion
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html).

After training completes you can evaluate model accuracy by calling
GetSolutionMetrics
(https://docs.aws.amazon.com/personalize/latest/dg/API_GetSolutionMetrics.html).
When you are satisfied with the solution version, you deploy it using
CreateCampaign
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html).
The campaign provides recommendations to a client through the
GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
API.

Amazon Personalize doesn't support configuring the C<hpoObjective> for
solution hyperparameter optimization at this time.

B<Status>

A solution can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

To get the status of the solution, call DescribeSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html).
If you use manual training, the status must be ACTIVE before you call
C<CreateSolutionVersion>.

B<Related APIs>

=over

=item *

UpdateSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateSolution.html)

=item *

ListSolutions
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html)

=item *

CreateSolutionVersion
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html)

=item *

DescribeSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html)

=item *

DeleteSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html)

=back

=over

=item *

ListSolutionVersions
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html)

=item *

DescribeSolutionVersion
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html)

=back



=head2 CreateSolutionVersion

=over

=item SolutionArn => Str

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::Personalize::Tag>]]

=item [TrainingMode => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::CreateSolutionVersion>

Returns: a L<Paws::Personalize::CreateSolutionVersionResponse> instance

Trains or retrains an active solution in a Custom dataset group. A
solution is created using the CreateSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html)
operation and must be in the ACTIVE state before calling
C<CreateSolutionVersion>. A new version of the solution is created
every time you call this operation.

B<Status>

A solution version can be in one of the following states:

=over

=item *

CREATE PENDING

=item *

CREATE IN_PROGRESS

=item *

ACTIVE

=item *

CREATE FAILED

=item *

CREATE STOPPING

=item *

CREATE STOPPED

=back

To get the status of the version, call DescribeSolutionVersion
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html).
Wait until the status shows as ACTIVE before calling C<CreateCampaign>.

If the status shows as CREATE FAILED, the response includes a
C<failureReason> key, which describes why the job failed.

B<Related APIs>

=over

=item *

ListSolutionVersions
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html)

=item *

DescribeSolutionVersion
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html)

=item *

ListSolutions
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html)

=item *

CreateSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html)

=item *

DescribeSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html)

=item *

DeleteSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html)

=back



=head2 DeleteCampaign

=over

=item CampaignArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteCampaign>

Returns: nothing

Removes a campaign by deleting the solution deployment. The solution
that the campaign is based on is not deleted and can be redeployed when
needed. A deleted campaign can no longer be specified in a
GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
request. For information on creating campaigns, see CreateCampaign
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html).


=head2 DeleteDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteDataset>

Returns: nothing

Deletes a dataset. You can't delete a dataset if an associated
C<DatasetImportJob> or C<SolutionVersion> is in the CREATE PENDING or
IN PROGRESS state. For more information about deleting datasets, see
Deleting a dataset
(https://docs.aws.amazon.com/personalize/latest/dg/delete-dataset.html).


=head2 DeleteDatasetGroup

=over

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteDatasetGroup>

Returns: nothing

Deletes a dataset group. Before you delete a dataset group, you must
delete the following:

=over

=item *

All associated event trackers.

=item *

All associated solutions.

=item *

All datasets in the dataset group.

=back



=head2 DeleteEventTracker

=over

=item EventTrackerArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteEventTracker>

Returns: nothing

Deletes the event tracker. Does not delete the dataset from the dataset
group. For more information on event trackers, see CreateEventTracker
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html).


=head2 DeleteFilter

=over

=item FilterArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteFilter>

Returns: nothing

Deletes a filter.


=head2 DeleteMetricAttribution

=over

=item MetricAttributionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteMetricAttribution>

Returns: nothing

Deletes a metric attribution.


=head2 DeleteRecommender

=over

=item RecommenderArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteRecommender>

Returns: nothing

Deactivates and removes a recommender. A deleted recommender can no
longer be specified in a GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
request.


=head2 DeleteSchema

=over

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteSchema>

Returns: nothing

Deletes a schema. Before deleting a schema, you must delete all
datasets referencing the schema. For more information on schemas, see
CreateSchema
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html).


=head2 DeleteSolution

=over

=item SolutionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DeleteSolution>

Returns: nothing

Deletes all versions of a solution and the C<Solution> object itself.
Before deleting a solution, you must delete all campaigns based on the
solution. To determine what campaigns are using the solution, call
ListCampaigns
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html)
and supply the Amazon Resource Name (ARN) of the solution. You can't
delete a solution if an associated C<SolutionVersion> is in the CREATE
PENDING or IN PROGRESS state. For more information on solutions, see
CreateSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html).


=head2 DescribeAlgorithm

=over

=item AlgorithmArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeAlgorithm>

Returns: a L<Paws::Personalize::DescribeAlgorithmResponse> instance

Describes the given algorithm.


=head2 DescribeBatchInferenceJob

=over

=item BatchInferenceJobArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeBatchInferenceJob>

Returns: a L<Paws::Personalize::DescribeBatchInferenceJobResponse> instance

Gets the properties of a batch inference job including name, Amazon
Resource Name (ARN), status, input and output configurations, and the
ARN of the solution version used to generate the recommendations.


=head2 DescribeBatchSegmentJob

=over

=item BatchSegmentJobArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeBatchSegmentJob>

Returns: a L<Paws::Personalize::DescribeBatchSegmentJobResponse> instance

Gets the properties of a batch segment job including name, Amazon
Resource Name (ARN), status, input and output configurations, and the
ARN of the solution version used to generate segments.


=head2 DescribeCampaign

=over

=item CampaignArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeCampaign>

Returns: a L<Paws::Personalize::DescribeCampaignResponse> instance

Describes the given campaign, including its status.

A campaign can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

When the C<status> is C<CREATE FAILED>, the response includes the
C<failureReason> key, which describes why.

For more information on campaigns, see CreateCampaign
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html).


=head2 DescribeDataDeletionJob

=over

=item DataDeletionJobArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeDataDeletionJob>

Returns: a L<Paws::Personalize::DescribeDataDeletionJobResponse> instance

Describes the data deletion job created by CreateDataDeletionJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataDeletionJob.html),
including the job status.


=head2 DescribeDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeDataset>

Returns: a L<Paws::Personalize::DescribeDatasetResponse> instance

Describes the given dataset. For more information on datasets, see
CreateDataset
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html).


=head2 DescribeDatasetExportJob

=over

=item DatasetExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeDatasetExportJob>

Returns: a L<Paws::Personalize::DescribeDatasetExportJobResponse> instance

Describes the dataset export job created by CreateDatasetExportJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html),
including the export job status.


=head2 DescribeDatasetGroup

=over

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeDatasetGroup>

Returns: a L<Paws::Personalize::DescribeDatasetGroupResponse> instance

Describes the given dataset group. For more information on dataset
groups, see CreateDatasetGroup
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html).


=head2 DescribeDatasetImportJob

=over

=item DatasetImportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeDatasetImportJob>

Returns: a L<Paws::Personalize::DescribeDatasetImportJobResponse> instance

Describes the dataset import job created by CreateDatasetImportJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html),
including the import job status.


=head2 DescribeEventTracker

=over

=item EventTrackerArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeEventTracker>

Returns: a L<Paws::Personalize::DescribeEventTrackerResponse> instance

Describes an event tracker. The response includes the C<trackingId> and
C<status> of the event tracker. For more information on event trackers,
see CreateEventTracker
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html).


=head2 DescribeFeatureTransformation

=over

=item FeatureTransformationArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeFeatureTransformation>

Returns: a L<Paws::Personalize::DescribeFeatureTransformationResponse> instance

Describes the given feature transformation.


=head2 DescribeFilter

=over

=item FilterArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeFilter>

Returns: a L<Paws::Personalize::DescribeFilterResponse> instance

Describes a filter's properties.


=head2 DescribeMetricAttribution

=over

=item MetricAttributionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeMetricAttribution>

Returns: a L<Paws::Personalize::DescribeMetricAttributionResponse> instance

Describes a metric attribution.


=head2 DescribeRecipe

=over

=item RecipeArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeRecipe>

Returns: a L<Paws::Personalize::DescribeRecipeResponse> instance

Describes a recipe.

A recipe contains three items:

=over

=item *

An algorithm that trains a model.

=item *

Hyperparameters that govern the training.

=item *

Feature transformation information for modifying the input data before
training.

=back

Amazon Personalize provides a set of predefined recipes. You specify a
recipe when you create a solution with the CreateSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html)
API. C<CreateSolution> trains a model by using the algorithm in the
specified recipe and a training dataset. The solution, when deployed as
a campaign, can provide recommendations using the GetRecommendations
(https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
API.


=head2 DescribeRecommender

=over

=item RecommenderArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeRecommender>

Returns: a L<Paws::Personalize::DescribeRecommenderResponse> instance

Describes the given recommender, including its status.

A recommender can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

STOP PENDING E<gt> STOP IN_PROGRESS E<gt> INACTIVE E<gt> START PENDING
E<gt> START IN_PROGRESS E<gt> ACTIVE

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back

When the C<status> is C<CREATE FAILED>, the response includes the
C<failureReason> key, which describes why.

The C<modelMetrics> key is null when the recommender is being created
or deleted.

For more information on recommenders, see CreateRecommender
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html).


=head2 DescribeSchema

=over

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeSchema>

Returns: a L<Paws::Personalize::DescribeSchemaResponse> instance

Describes a schema. For more information on schemas, see CreateSchema
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html).


=head2 DescribeSolution

=over

=item SolutionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeSolution>

Returns: a L<Paws::Personalize::DescribeSolutionResponse> instance

Describes a solution. For more information on solutions, see
CreateSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html).


=head2 DescribeSolutionVersion

=over

=item SolutionVersionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::DescribeSolutionVersion>

Returns: a L<Paws::Personalize::DescribeSolutionVersionResponse> instance

Describes a specific version of a solution. For more information on
solutions, see CreateSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html)


=head2 GetSolutionMetrics

=over

=item SolutionVersionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::GetSolutionMetrics>

Returns: a L<Paws::Personalize::GetSolutionMetricsResponse> instance

Gets the metrics for the specified solution version.


=head2 ListBatchInferenceJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SolutionVersionArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListBatchInferenceJobs>

Returns: a L<Paws::Personalize::ListBatchInferenceJobsResponse> instance

Gets a list of the batch inference jobs that have been performed off of
a solution version.


=head2 ListBatchSegmentJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SolutionVersionArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListBatchSegmentJobs>

Returns: a L<Paws::Personalize::ListBatchSegmentJobsResponse> instance

Gets a list of the batch segment jobs that have been performed off of a
solution version that you specify.


=head2 ListCampaigns

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SolutionArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListCampaigns>

Returns: a L<Paws::Personalize::ListCampaignsResponse> instance

Returns a list of campaigns that use the given solution. When a
solution is not specified, all the campaigns associated with the
account are listed. The response provides the properties for each
campaign, including the Amazon Resource Name (ARN). For more
information on campaigns, see CreateCampaign
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html).


=head2 ListDataDeletionJobs

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListDataDeletionJobs>

Returns: a L<Paws::Personalize::ListDataDeletionJobsResponse> instance

Returns a list of data deletion jobs for a dataset group ordered by
creation time, with the most recent first. When a dataset group is not
specified, all the data deletion jobs associated with the account are
listed. The response provides the properties for each job, including
the Amazon Resource Name (ARN). For more information on data deletion
jobs, see Deleting users
(https://docs.aws.amazon.com/personalize/latest/dg/delete-records.html).


=head2 ListDatasetExportJobs

=over

=item [DatasetArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListDatasetExportJobs>

Returns: a L<Paws::Personalize::ListDatasetExportJobsResponse> instance

Returns a list of dataset export jobs that use the given dataset. When
a dataset is not specified, all the dataset export jobs associated with
the account are listed. The response provides the properties for each
dataset export job, including the Amazon Resource Name (ARN). For more
information on dataset export jobs, see CreateDatasetExportJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html).
For more information on datasets, see CreateDataset
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html).


=head2 ListDatasetGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListDatasetGroups>

Returns: a L<Paws::Personalize::ListDatasetGroupsResponse> instance

Returns a list of dataset groups. The response provides the properties
for each dataset group, including the Amazon Resource Name (ARN). For
more information on dataset groups, see CreateDatasetGroup
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html).


=head2 ListDatasetImportJobs

=over

=item [DatasetArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListDatasetImportJobs>

Returns: a L<Paws::Personalize::ListDatasetImportJobsResponse> instance

Returns a list of dataset import jobs that use the given dataset. When
a dataset is not specified, all the dataset import jobs associated with
the account are listed. The response provides the properties for each
dataset import job, including the Amazon Resource Name (ARN). For more
information on dataset import jobs, see CreateDatasetImportJob
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html).
For more information on datasets, see CreateDataset
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html).


=head2 ListDatasets

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListDatasets>

Returns: a L<Paws::Personalize::ListDatasetsResponse> instance

Returns the list of datasets contained in the given dataset group. The
response provides the properties for each dataset, including the Amazon
Resource Name (ARN). For more information on datasets, see
CreateDataset
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html).


=head2 ListEventTrackers

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListEventTrackers>

Returns: a L<Paws::Personalize::ListEventTrackersResponse> instance

Returns the list of event trackers associated with the account. The
response provides the properties for each event tracker, including the
Amazon Resource Name (ARN) and tracking ID. For more information on
event trackers, see CreateEventTracker
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html).


=head2 ListFilters

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListFilters>

Returns: a L<Paws::Personalize::ListFiltersResponse> instance

Lists all filters that belong to a given dataset group.


=head2 ListMetricAttributionMetrics

=over

=item [MaxResults => Int]

=item [MetricAttributionArn => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListMetricAttributionMetrics>

Returns: a L<Paws::Personalize::ListMetricAttributionMetricsResponse> instance

Lists the metrics for the metric attribution.


=head2 ListMetricAttributions

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListMetricAttributions>

Returns: a L<Paws::Personalize::ListMetricAttributionsResponse> instance

Lists metric attributions.


=head2 ListRecipes

=over

=item [Domain => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RecipeProvider => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListRecipes>

Returns: a L<Paws::Personalize::ListRecipesResponse> instance

Returns a list of available recipes. The response provides the
properties for each recipe, including the recipe's Amazon Resource Name
(ARN).


=head2 ListRecommenders

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListRecommenders>

Returns: a L<Paws::Personalize::ListRecommendersResponse> instance

Returns a list of recommenders in a given Domain dataset group. When a
Domain dataset group is not specified, all the recommenders associated
with the account are listed. The response provides the properties for
each recommender, including the Amazon Resource Name (ARN). For more
information on recommenders, see CreateRecommender
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html).


=head2 ListSchemas

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListSchemas>

Returns: a L<Paws::Personalize::ListSchemasResponse> instance

Returns the list of schemas associated with the account. The response
provides the properties for each schema, including the Amazon Resource
Name (ARN). For more information on schemas, see CreateSchema
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html).


=head2 ListSolutions

=over

=item [DatasetGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListSolutions>

Returns: a L<Paws::Personalize::ListSolutionsResponse> instance

Returns a list of solutions in a given dataset group. When a dataset
group is not specified, all the solutions associated with the account
are listed. The response provides the properties for each solution,
including the Amazon Resource Name (ARN). For more information on
solutions, see CreateSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html).


=head2 ListSolutionVersions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SolutionArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::ListSolutionVersions>

Returns: a L<Paws::Personalize::ListSolutionVersionsResponse> instance

Returns a list of solution versions for the given solution. When a
solution is not specified, all the solution versions associated with
the account are listed. The response provides the properties for each
solution version, including the Amazon Resource Name (ARN).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::ListTagsForResource>

Returns: a L<Paws::Personalize::ListTagsForResourceResponse> instance

Get a list of tags
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
attached to a resource.


=head2 StartRecommender

=over

=item RecommenderArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::StartRecommender>

Returns: a L<Paws::Personalize::StartRecommenderResponse> instance

Starts a recommender that is INACTIVE. Starting a recommender does not
create any new models, but resumes billing and automatic retraining for
the recommender.


=head2 StopRecommender

=over

=item RecommenderArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::StopRecommender>

Returns: a L<Paws::Personalize::StopRecommenderResponse> instance

Stops a recommender that is ACTIVE. Stopping a recommender halts
billing and automatic retraining for the recommender.


=head2 StopSolutionVersionCreation

=over

=item SolutionVersionArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::StopSolutionVersionCreation>

Returns: nothing

Stops creating a solution version that is in a state of CREATE_PENDING
or CREATE IN_PROGRESS.

Depending on the current state of the solution version, the solution
version state changes as follows:

=over

=item *

CREATE_PENDING E<gt> CREATE_STOPPED

or

=item *

CREATE_IN_PROGRESS E<gt> CREATE_STOPPING E<gt> CREATE_STOPPED

=back

You are billed for all of the training completed up until you stop the
solution version creation. You cannot resume creating a solution
version once it has been stopped.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Personalize::Tag>]


=back

Each argument is described in detail in: L<Paws::Personalize::TagResource>

Returns: a L<Paws::Personalize::TagResourceResponse> instance

Add a list of tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Personalize::UntagResource>

Returns: a L<Paws::Personalize::UntagResourceResponse> instance

Removes the specified tags that are attached to a resource. For more
information, see Removing tags from Amazon Personalize resources
(https://docs.aws.amazon.com/personalize/latest/dg/tags-remove.html).


=head2 UpdateCampaign

=over

=item CampaignArn => Str

=item [CampaignConfig => L<Paws::Personalize::CampaignConfig>]

=item [MinProvisionedTPS => Int]

=item [SolutionVersionArn => Str]


=back

Each argument is described in detail in: L<Paws::Personalize::UpdateCampaign>

Returns: a L<Paws::Personalize::UpdateCampaignResponse> instance

Updates a campaign to deploy a retrained solution version with an
existing campaign, change your campaign's C<minProvisionedTPS>, or
modify your campaign's configuration. For example, you can set
C<enableMetadataWithRecommendations> to true for an existing campaign.

To update a campaign to start automatically using the latest solution
version, specify the following:

=over

=item *

For the C<SolutionVersionArn> parameter, specify the Amazon Resource
Name (ARN) of your solution in C<SolutionArn/$LATEST> format.

=item *

In the C<campaignConfig>, set C<syncWithLatestSolutionVersion> to
C<true>.

=back

To update a campaign, the campaign status must be ACTIVE or CREATE
FAILED. Check the campaign status using the DescribeCampaign
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html)
operation.

You can still get recommendations from a campaign while an update is in
progress. The campaign will use the previous solution version and
campaign configuration to generate recommendations until the latest
campaign update status is C<Active>.

For more information about updating a campaign, including code samples,
see Updating a campaign
(https://docs.aws.amazon.com/personalize/latest/dg/update-campaigns.html).
For more information about campaigns, see Creating a campaign
(https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html).


=head2 UpdateDataset

=over

=item DatasetArn => Str

=item SchemaArn => Str


=back

Each argument is described in detail in: L<Paws::Personalize::UpdateDataset>

Returns: a L<Paws::Personalize::UpdateDatasetResponse> instance

Update a dataset to replace its schema with a new or existing one. For
more information, see Replacing a dataset's schema
(https://docs.aws.amazon.com/personalize/latest/dg/updating-dataset-schema.html).


=head2 UpdateMetricAttribution

=over

=item [AddMetrics => ArrayRef[L<Paws::Personalize::MetricAttribute>]]

=item [MetricAttributionArn => Str]

=item [MetricsOutputConfig => L<Paws::Personalize::MetricAttributionOutput>]

=item [RemoveMetrics => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Personalize::UpdateMetricAttribution>

Returns: a L<Paws::Personalize::UpdateMetricAttributionResponse> instance

Updates a metric attribution.


=head2 UpdateRecommender

=over

=item RecommenderArn => Str

=item RecommenderConfig => L<Paws::Personalize::RecommenderConfig>


=back

Each argument is described in detail in: L<Paws::Personalize::UpdateRecommender>

Returns: a L<Paws::Personalize::UpdateRecommenderResponse> instance

Updates the recommender to modify the recommender configuration. If you
update the recommender to modify the columns used in training, Amazon
Personalize automatically starts a full retraining of the models
backing your recommender. While the update completes, you can still get
recommendations from the recommender. The recommender uses the previous
configuration until the update completes. To track the status of this
update, use the C<latestRecommenderUpdate> returned in the
DescribeRecommender
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html)
operation.


=head2 UpdateSolution

=over

=item SolutionArn => Str

=item [PerformAutoTraining => Bool]

=item [SolutionUpdateConfig => L<Paws::Personalize::SolutionUpdateConfig>]


=back

Each argument is described in detail in: L<Paws::Personalize::UpdateSolution>

Returns: a L<Paws::Personalize::UpdateSolutionResponse> instance

Updates an Amazon Personalize solution to use a different automatic
training configuration. When you update a solution, you can change
whether the solution uses automatic training, and you can change the
training frequency. For more information about updating a solution, see
Updating a solution
(https://docs.aws.amazon.com/personalize/latest/dg/updating-solution.html).

A solution update can be in one of the following states:

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

To get the status of a solution update, call the DescribeSolution
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html)
API operation and find the status in the C<latestSolutionUpdate>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBatchInferenceJobs(sub { },[MaxResults => Int, NextToken => Str, SolutionVersionArn => Str])

=head2 ListAllBatchInferenceJobs([MaxResults => Int, NextToken => Str, SolutionVersionArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - batchInferenceJobs, passing the object as the first parameter, and the string 'batchInferenceJobs' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListBatchInferenceJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBatchSegmentJobs(sub { },[MaxResults => Int, NextToken => Str, SolutionVersionArn => Str])

=head2 ListAllBatchSegmentJobs([MaxResults => Int, NextToken => Str, SolutionVersionArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - batchSegmentJobs, passing the object as the first parameter, and the string 'batchSegmentJobs' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListBatchSegmentJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCampaigns(sub { },[MaxResults => Int, NextToken => Str, SolutionArn => Str])

=head2 ListAllCampaigns([MaxResults => Int, NextToken => Str, SolutionArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - campaigns, passing the object as the first parameter, and the string 'campaigns' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListCampaignsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetExportJobs(sub { },[DatasetArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetExportJobs([DatasetArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasetExportJobs, passing the object as the first parameter, and the string 'datasetExportJobs' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListDatasetExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasetGroups, passing the object as the first parameter, and the string 'datasetGroups' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListDatasetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetImportJobs(sub { },[DatasetArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetImportJobs([DatasetArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasetImportJobs, passing the object as the first parameter, and the string 'datasetImportJobs' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListDatasetImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasets(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDatasets([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasets, passing the object as the first parameter, and the string 'datasets' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventTrackers(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllEventTrackers([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - eventTrackers, passing the object as the first parameter, and the string 'eventTrackers' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListEventTrackersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFilters(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllFilters([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Filters, passing the object as the first parameter, and the string 'Filters' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMetricAttributionMetrics(sub { },[MaxResults => Int, MetricAttributionArn => Str, NextToken => Str])

=head2 ListAllMetricAttributionMetrics([MaxResults => Int, MetricAttributionArn => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - metrics, passing the object as the first parameter, and the string 'metrics' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListMetricAttributionMetricsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMetricAttributions(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllMetricAttributions([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - metricAttributions, passing the object as the first parameter, and the string 'metricAttributions' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListMetricAttributionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecipes(sub { },[Domain => Str, MaxResults => Int, NextToken => Str, RecipeProvider => Str])

=head2 ListAllRecipes([Domain => Str, MaxResults => Int, NextToken => Str, RecipeProvider => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recipes, passing the object as the first parameter, and the string 'recipes' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListRecipesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecommenders(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllRecommenders([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recommenders, passing the object as the first parameter, and the string 'recommenders' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListRecommendersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemas(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSchemas([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - schemas, passing the object as the first parameter, and the string 'schemas' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSolutions(sub { },[DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllSolutions([DatasetGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - solutions, passing the object as the first parameter, and the string 'solutions' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListSolutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSolutionVersions(sub { },[MaxResults => Int, NextToken => Str, SolutionArn => Str])

=head2 ListAllSolutionVersions([MaxResults => Int, NextToken => Str, SolutionArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - solutionVersions, passing the object as the first parameter, and the string 'solutionVersions' as the second parameter 

If not, it will return a a L<Paws::Personalize::ListSolutionVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

