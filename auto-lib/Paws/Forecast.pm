package Paws::Forecast;
  use Moose;
  sub service { 'forecast' }
  sub signing_name { 'forecast' }
  sub version { '2018-06-26' }
  sub target_prefix { 'AmazonForecast' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateAutoPredictor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateAutoPredictor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExplainability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateExplainability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExplainabilityExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateExplainabilityExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateForecastExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateForecastExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePredictor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreatePredictor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePredictorBacktestExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreatePredictorBacktestExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWhatIfAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateWhatIfAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWhatIfForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateWhatIfForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWhatIfForecastExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateWhatIfForecastExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExplainability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteExplainability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExplainabilityExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteExplainabilityExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteForecastExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteForecastExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePredictor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeletePredictor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePredictorBacktestExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeletePredictorBacktestExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceTree {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteResourceTree', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWhatIfAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteWhatIfAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWhatIfForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteWhatIfForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWhatIfForecastExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteWhatIfForecastExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutoPredictor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeAutoPredictor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExplainability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeExplainability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExplainabilityExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeExplainabilityExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeForecastExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeForecastExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePredictor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribePredictor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePredictorBacktestExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribePredictorBacktestExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWhatIfAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeWhatIfAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWhatIfForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeWhatIfForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWhatIfForecastExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeWhatIfForecastExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccuracyMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::GetAccuracyMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListDatasetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListDatasetImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExplainabilities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListExplainabilities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExplainabilityExports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListExplainabilityExports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListForecastExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListForecastExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListForecasts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListForecasts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitorEvaluations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListMonitorEvaluations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListMonitors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPredictorBacktestExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListPredictorBacktestExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPredictors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListPredictors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWhatIfAnalyses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListWhatIfAnalyses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWhatIfForecastExports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListWhatIfForecastExports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWhatIfForecasts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListWhatIfForecasts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ResumeResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::StopResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::UpdateDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDatasetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasetGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatasetGroups }, @{ $next_result->DatasetGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatasetGroups') foreach (@{ $result->DatasetGroups });
        $result = $self->ListDatasetGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatasetGroups') foreach (@{ $result->DatasetGroups });
    }

    return undef
  }
  sub ListAllDatasetImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasetImportJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatasetImportJobs }, @{ $next_result->DatasetImportJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatasetImportJobs') foreach (@{ $result->DatasetImportJobs });
        $result = $self->ListDatasetImportJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatasetImportJobs') foreach (@{ $result->DatasetImportJobs });
    }

    return undef
  }
  sub ListAllDatasets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Datasets }, @{ $next_result->Datasets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Datasets') foreach (@{ $result->Datasets });
        $result = $self->ListDatasets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Datasets') foreach (@{ $result->Datasets });
    }

    return undef
  }
  sub ListAllExplainabilities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExplainabilities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExplainabilities(@_, NextToken => $next_result->NextToken);
        push @{ $result->Explainabilities }, @{ $next_result->Explainabilities };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Explainabilities') foreach (@{ $result->Explainabilities });
        $result = $self->ListExplainabilities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Explainabilities') foreach (@{ $result->Explainabilities });
    }

    return undef
  }
  sub ListAllExplainabilityExports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExplainabilityExports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExplainabilityExports(@_, NextToken => $next_result->NextToken);
        push @{ $result->ExplainabilityExports }, @{ $next_result->ExplainabilityExports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ExplainabilityExports') foreach (@{ $result->ExplainabilityExports });
        $result = $self->ListExplainabilityExports(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ExplainabilityExports') foreach (@{ $result->ExplainabilityExports });
    }

    return undef
  }
  sub ListAllForecastExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListForecastExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListForecastExportJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ForecastExportJobs }, @{ $next_result->ForecastExportJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ForecastExportJobs') foreach (@{ $result->ForecastExportJobs });
        $result = $self->ListForecastExportJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ForecastExportJobs') foreach (@{ $result->ForecastExportJobs });
    }

    return undef
  }
  sub ListAllForecasts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListForecasts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListForecasts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Forecasts }, @{ $next_result->Forecasts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Forecasts') foreach (@{ $result->Forecasts });
        $result = $self->ListForecasts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Forecasts') foreach (@{ $result->Forecasts });
    }

    return undef
  }
  sub ListAllMonitorEvaluations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitorEvaluations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMonitorEvaluations(@_, NextToken => $next_result->NextToken);
        push @{ $result->PredictorMonitorEvaluations }, @{ $next_result->PredictorMonitorEvaluations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PredictorMonitorEvaluations') foreach (@{ $result->PredictorMonitorEvaluations });
        $result = $self->ListMonitorEvaluations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PredictorMonitorEvaluations') foreach (@{ $result->PredictorMonitorEvaluations });
    }

    return undef
  }
  sub ListAllMonitors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMonitors(@_, NextToken => $next_result->NextToken);
        push @{ $result->Monitors }, @{ $next_result->Monitors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Monitors') foreach (@{ $result->Monitors });
        $result = $self->ListMonitors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Monitors') foreach (@{ $result->Monitors });
    }

    return undef
  }
  sub ListAllPredictorBacktestExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPredictorBacktestExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPredictorBacktestExportJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->PredictorBacktestExportJobs }, @{ $next_result->PredictorBacktestExportJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PredictorBacktestExportJobs') foreach (@{ $result->PredictorBacktestExportJobs });
        $result = $self->ListPredictorBacktestExportJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PredictorBacktestExportJobs') foreach (@{ $result->PredictorBacktestExportJobs });
    }

    return undef
  }
  sub ListAllPredictors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPredictors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPredictors(@_, NextToken => $next_result->NextToken);
        push @{ $result->Predictors }, @{ $next_result->Predictors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Predictors') foreach (@{ $result->Predictors });
        $result = $self->ListPredictors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Predictors') foreach (@{ $result->Predictors });
    }

    return undef
  }
  sub ListAllWhatIfAnalyses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWhatIfAnalyses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWhatIfAnalyses(@_, NextToken => $next_result->NextToken);
        push @{ $result->WhatIfAnalyses }, @{ $next_result->WhatIfAnalyses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'WhatIfAnalyses') foreach (@{ $result->WhatIfAnalyses });
        $result = $self->ListWhatIfAnalyses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'WhatIfAnalyses') foreach (@{ $result->WhatIfAnalyses });
    }

    return undef
  }
  sub ListAllWhatIfForecastExports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWhatIfForecastExports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWhatIfForecastExports(@_, NextToken => $next_result->NextToken);
        push @{ $result->WhatIfForecastExports }, @{ $next_result->WhatIfForecastExports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'WhatIfForecastExports') foreach (@{ $result->WhatIfForecastExports });
        $result = $self->ListWhatIfForecastExports(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'WhatIfForecastExports') foreach (@{ $result->WhatIfForecastExports });
    }

    return undef
  }
  sub ListAllWhatIfForecasts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWhatIfForecasts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWhatIfForecasts(@_, NextToken => $next_result->NextToken);
        push @{ $result->WhatIfForecasts }, @{ $next_result->WhatIfForecasts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'WhatIfForecasts') foreach (@{ $result->WhatIfForecasts });
        $result = $self->ListWhatIfForecasts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'WhatIfForecasts') foreach (@{ $result->WhatIfForecasts });
    }

    return undef
  }


  sub operations { qw/CreateAutoPredictor CreateDataset CreateDatasetGroup CreateDatasetImportJob CreateExplainability CreateExplainabilityExport CreateForecast CreateForecastExportJob CreateMonitor CreatePredictor CreatePredictorBacktestExportJob CreateWhatIfAnalysis CreateWhatIfForecast CreateWhatIfForecastExport DeleteDataset DeleteDatasetGroup DeleteDatasetImportJob DeleteExplainability DeleteExplainabilityExport DeleteForecast DeleteForecastExportJob DeleteMonitor DeletePredictor DeletePredictorBacktestExportJob DeleteResourceTree DeleteWhatIfAnalysis DeleteWhatIfForecast DeleteWhatIfForecastExport DescribeAutoPredictor DescribeDataset DescribeDatasetGroup DescribeDatasetImportJob DescribeExplainability DescribeExplainabilityExport DescribeForecast DescribeForecastExportJob DescribeMonitor DescribePredictor DescribePredictorBacktestExportJob DescribeWhatIfAnalysis DescribeWhatIfForecast DescribeWhatIfForecastExport GetAccuracyMetrics ListDatasetGroups ListDatasetImportJobs ListDatasets ListExplainabilities ListExplainabilityExports ListForecastExportJobs ListForecasts ListMonitorEvaluations ListMonitors ListPredictorBacktestExportJobs ListPredictors ListTagsForResource ListWhatIfAnalyses ListWhatIfForecastExports ListWhatIfForecasts ResumeResource StopResource TagResource UntagResource UpdateDatasetGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast - Perl Interface to AWS Amazon Forecast Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Forecast');
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

Provides APIs for creating and managing Amazon Forecast resources.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26>


=head1 METHODS

=head2 CreateAutoPredictor

=over

=item PredictorName => Str

=item [DataConfig => L<Paws::Forecast::DataConfig>]

=item [EncryptionConfig => L<Paws::Forecast::EncryptionConfig>]

=item [ExplainPredictor => Bool]

=item [ForecastDimensions => ArrayRef[Str|Undef]]

=item [ForecastFrequency => Str]

=item [ForecastHorizon => Int]

=item [ForecastTypes => ArrayRef[Str|Undef]]

=item [MonitorConfig => L<Paws::Forecast::MonitorConfig>]

=item [OptimizationMetric => Str]

=item [ReferencePredictorArn => Str]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]

=item [TimeAlignmentBoundary => L<Paws::Forecast::TimeAlignmentBoundary>]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateAutoPredictor>

Returns: a L<Paws::Forecast::CreateAutoPredictorResponse> instance

Creates an Amazon Forecast predictor.

Amazon Forecast creates predictors with AutoPredictor, which involves
applying the optimal combination of algorithms to each time series in
your datasets. You can use CreateAutoPredictor to create new predictors
or upgrade/retrain existing predictors.

B<Creating new predictors>

The following parameters are required when creating a new predictor:

=over

=item *

C<PredictorName> - A unique name for the predictor.

=item *

C<DatasetGroupArn> - The ARN of the dataset group used to train the
predictor.

=item *

C<ForecastFrequency> - The granularity of your forecasts (hourly,
daily, weekly, etc).

=item *

C<ForecastHorizon> - The number of time-steps that the model predicts.
The forecast horizon is also called the prediction length.

=back

When creating a new predictor, do not specify a value for
C<ReferencePredictorArn>.

B<Upgrading and retraining predictors>

The following parameters are required when retraining or upgrading a
predictor:

=over

=item *

C<PredictorName> - A unique name for the predictor.

=item *

C<ReferencePredictorArn> - The ARN of the predictor to retrain or
upgrade.

=back

When upgrading or retraining a predictor, only specify values for the
C<ReferencePredictorArn> and C<PredictorName>.


=head2 CreateDataset

=over

=item DatasetName => Str

=item DatasetType => Str

=item Domain => Str

=item Schema => L<Paws::Forecast::Schema>

=item [DataFrequency => Str]

=item [EncryptionConfig => L<Paws::Forecast::EncryptionConfig>]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateDataset>

Returns: a L<Paws::Forecast::CreateDatasetResponse> instance

Creates an Amazon Forecast dataset. The information about the dataset
that you provide helps Forecast understand how to consume the data for
model training. This includes the following:

=over

=item *

I<C<DataFrequency> > - How frequently your historical time-series data
is collected.

=item *

I<C<Domain> > and I< C<DatasetType> > - Each dataset has an associated
dataset domain and a type within the domain. Amazon Forecast provides a
list of predefined domains and types within each domain. For each
unique dataset domain and type within the domain, Amazon Forecast
requires your data to include a minimum set of predefined fields.

=item *

I<C<Schema> > - A schema specifies the fields in the dataset, including
the field name and data type.

=back

After creating a dataset, you import your training data into it and add
the dataset to a dataset group. You use the dataset group to create a
predictor. For more information, see Importing datasets
(https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html).

To get a list of all your datasets, use the ListDatasets
(https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasets.html)
operation.

For example Forecast datasets, see the Amazon Forecast Sample GitHub
repository (https://github.com/aws-samples/amazon-forecast-samples).

The C<Status> of a dataset must be C<ACTIVE> before you can import
training data. Use the DescribeDataset
(https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
operation to get the status.


=head2 CreateDatasetGroup

=over

=item DatasetGroupName => Str

=item Domain => Str

=item [DatasetArns => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateDatasetGroup>

Returns: a L<Paws::Forecast::CreateDatasetGroupResponse> instance

Creates a dataset group, which holds a collection of related datasets.
You can add datasets to the dataset group when you create the dataset
group, or later by using the UpdateDatasetGroup
(https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html)
operation.

After creating a dataset group and adding datasets, you use the dataset
group when you create a predictor. For more information, see Dataset
groups
(https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html).

To get a list of all your datasets groups, use the ListDatasetGroups
(https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetGroups.html)
operation.

The C<Status> of a dataset group must be C<ACTIVE> before you can use
the dataset group to create a predictor. To get the status, use the
DescribeDatasetGroup
(https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
operation.


=head2 CreateDatasetImportJob

=over

=item DatasetArn => Str

=item DatasetImportJobName => Str

=item DataSource => L<Paws::Forecast::DataSource>

=item [Format => Str]

=item [GeolocationFormat => Str]

=item [ImportMode => Str]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]

=item [TimestampFormat => Str]

=item [TimeZone => Str]

=item [UseGeolocationForTimeZone => Bool]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateDatasetImportJob>

Returns: a L<Paws::Forecast::CreateDatasetImportJobResponse> instance

Imports your training data to an Amazon Forecast dataset. You provide
the location of your training data in an Amazon Simple Storage Service
(Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset
that you want to import the data to.

You must specify a DataSource
(https://docs.aws.amazon.com/forecast/latest/dg/API_DataSource.html)
object that includes an Identity and Access Management (IAM) role that
Amazon Forecast can assume to access the data, as Amazon Forecast makes
a copy of your data and processes it in an internal Amazon Web Services
system. For more information, see Set up permissions
(https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-iam-roles.html).

The training data must be in CSV or Parquet format. The delimiter must
be a comma (,).

You can specify the path to a specific file, the S3 bucket, or to a
folder in the S3 bucket. For the latter two cases, Amazon Forecast
imports all files up to the limit of 10,000 files.

Because dataset imports are not aggregated, your most recent dataset
import is the one that is used when training a predictor or generating
a forecast. Make sure that your most recent dataset import contains all
of the data you want to model off of, and not just the new data
collected since the previous import.

To get a list of all your dataset import jobs, filtered by specified
criteria, use the ListDatasetImportJobs
(https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetImportJobs.html)
operation.


=head2 CreateExplainability

=over

=item ExplainabilityConfig => L<Paws::Forecast::ExplainabilityConfig>

=item ExplainabilityName => Str

=item ResourceArn => Str

=item [DataSource => L<Paws::Forecast::DataSource>]

=item [EnableVisualization => Bool]

=item [EndDateTime => Str]

=item [Schema => L<Paws::Forecast::Schema>]

=item [StartDateTime => Str]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateExplainability>

Returns: a L<Paws::Forecast::CreateExplainabilityResponse> instance

Explainability is only available for Forecasts and Predictors generated
from an AutoPredictor (CreateAutoPredictor)

Creates an Amazon Forecast Explainability.

Explainability helps you better understand how the attributes in your
datasets impact forecast. Amazon Forecast uses a metric called Impact
scores to quantify the relative impact of each attribute and determine
whether they increase or decrease forecast values.

To enable Forecast Explainability, your predictor must include at least
one of the following: related time series, item metadata, or additional
datasets like Holidays and the Weather Index.

CreateExplainability accepts either a Predictor ARN or Forecast ARN. To
receive aggregated Impact scores for all time series and time points in
your datasets, provide a Predictor ARN. To receive Impact scores for
specific time series and time points, provide a Forecast ARN.

B<CreateExplainability with a Predictor ARN>

You can only have one Explainability resource per predictor. If you
already enabled C<ExplainPredictor> in CreateAutoPredictor, that
predictor already has an Explainability resource.

The following parameters are required when providing a Predictor ARN:

=over

=item *

C<ExplainabilityName> - A unique name for the Explainability.

=item *

C<ResourceArn> - The Arn of the predictor.

=item *

C<TimePointGranularity> - Must be set to E<ldquo>ALLE<rdquo>.

=item *

C<TimeSeriesGranularity> - Must be set to E<ldquo>ALLE<rdquo>.

=back

Do not specify a value for the following parameters:

=over

=item *

C<DataSource> - Only valid when TimeSeriesGranularity is
E<ldquo>SPECIFICE<rdquo>.

=item *

C<Schema> - Only valid when TimeSeriesGranularity is
E<ldquo>SPECIFICE<rdquo>.

=item *

C<StartDateTime> - Only valid when TimePointGranularity is
E<ldquo>SPECIFICE<rdquo>.

=item *

C<EndDateTime> - Only valid when TimePointGranularity is
E<ldquo>SPECIFICE<rdquo>.

=back

B<CreateExplainability with a Forecast ARN>

You can specify a maximum of 50 time series and 500 time points.

The following parameters are required when providing a Predictor ARN:

=over

=item *

C<ExplainabilityName> - A unique name for the Explainability.

=item *

C<ResourceArn> - The Arn of the forecast.

=item *

C<TimePointGranularity> - Either E<ldquo>ALLE<rdquo> or
E<ldquo>SPECIFICE<rdquo>.

=item *

C<TimeSeriesGranularity> - Either E<ldquo>ALLE<rdquo> or
E<ldquo>SPECIFICE<rdquo>.

=back

If you set TimeSeriesGranularity to E<ldquo>SPECIFICE<rdquo>, you must
also provide the following:

=over

=item *

C<DataSource> - The S3 location of the CSV file specifying your time
series.

=item *

C<Schema> - The Schema defines the attributes and attribute types
listed in the Data Source.

=back

If you set TimePointGranularity to E<ldquo>SPECIFICE<rdquo>, you must
also provide the following:

=over

=item *

C<StartDateTime> - The first timestamp in the range of time points.

=item *

C<EndDateTime> - The last timestamp in the range of time points.

=back



=head2 CreateExplainabilityExport

=over

=item Destination => L<Paws::Forecast::DataDestination>

=item ExplainabilityArn => Str

=item ExplainabilityExportName => Str

=item [Format => Str]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateExplainabilityExport>

Returns: a L<Paws::Forecast::CreateExplainabilityExportResponse> instance

Exports an Explainability resource created by the CreateExplainability
operation. Exported files are exported to an Amazon Simple Storage
Service (Amazon S3) bucket.

You must specify a DataDestination object that includes an Amazon S3
bucket and an Identity and Access Management (IAM) role that Amazon
Forecast can assume to access the Amazon S3 bucket. For more
information, see aws-forecast-iam-roles.

The C<Status> of the export job must be C<ACTIVE> before you can access
the export in your Amazon S3 bucket. To get the status, use the
DescribeExplainabilityExport operation.


=head2 CreateForecast

=over

=item ForecastName => Str

=item PredictorArn => Str

=item [ForecastTypes => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]

=item [TimeSeriesSelector => L<Paws::Forecast::TimeSeriesSelector>]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateForecast>

Returns: a L<Paws::Forecast::CreateForecastResponse> instance

Creates a forecast for each item in the C<TARGET_TIME_SERIES> dataset
that was used to train the predictor. This is known as inference. To
retrieve the forecast for a single item at low latency, use the
operation. To export the complete forecast into your Amazon Simple
Storage Service (Amazon S3) bucket, use the CreateForecastExportJob
operation.

The range of the forecast is determined by the C<ForecastHorizon>
value, which you specify in the CreatePredictor request. When you query
a forecast, you can request a specific date range within the forecast.

To get a list of all your forecasts, use the ListForecasts operation.

The forecasts generated by Amazon Forecast are in the same time zone as
the dataset that was used to create the predictor.

For more information, see howitworks-forecast.

The C<Status> of the forecast must be C<ACTIVE> before you can query or
export the forecast. Use the DescribeForecast operation to get the
status.

By default, a forecast includes predictions for every item (C<item_id>)
in the dataset group that was used to train the predictor. However, you
can use the C<TimeSeriesSelector> object to generate a forecast on a
subset of time series. Forecast creation is skipped for any time series
that you specify that are not in the input dataset. The forecast export
file will not contain these time series or their forecasted values.


=head2 CreateForecastExportJob

=over

=item Destination => L<Paws::Forecast::DataDestination>

=item ForecastArn => Str

=item ForecastExportJobName => Str

=item [Format => Str]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateForecastExportJob>

Returns: a L<Paws::Forecast::CreateForecastExportJobResponse> instance

Exports a forecast created by the CreateForecast operation to your
Amazon Simple Storage Service (Amazon S3) bucket. The forecast file
name will match the following conventions:

E<lt>ForecastExportJobNameE<gt>_E<lt>ExportTimestampE<gt>_E<lt>PartNumberE<gt>

where the E<lt>ExportTimestampE<gt> component is in Java
SimpleDateFormat (yyyy-MM-ddTHH-mm-ssZ).

You must specify a DataDestination object that includes an Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the Amazon S3 bucket. For more information, see aws-forecast-iam-roles.

For more information, see howitworks-forecast.

To get a list of all your forecast export jobs, use the
ListForecastExportJobs operation.

The C<Status> of the forecast export job must be C<ACTIVE> before you
can access the forecast in your Amazon S3 bucket. To get the status,
use the DescribeForecastExportJob operation.


=head2 CreateMonitor

=over

=item MonitorName => Str

=item ResourceArn => Str

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateMonitor>

Returns: a L<Paws::Forecast::CreateMonitorResponse> instance

Creates a predictor monitor resource for an existing auto predictor.
Predictor monitoring allows you to see how your predictor's performance
changes over time. For more information, see Predictor Monitoring
(https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html).


=head2 CreatePredictor

=over

=item FeaturizationConfig => L<Paws::Forecast::FeaturizationConfig>

=item ForecastHorizon => Int

=item InputDataConfig => L<Paws::Forecast::InputDataConfig>

=item PredictorName => Str

=item [AlgorithmArn => Str]

=item [AutoMLOverrideStrategy => Str]

=item [EncryptionConfig => L<Paws::Forecast::EncryptionConfig>]

=item [EvaluationParameters => L<Paws::Forecast::EvaluationParameters>]

=item [ForecastTypes => ArrayRef[Str|Undef]]

=item [HPOConfig => L<Paws::Forecast::HyperParameterTuningJobConfig>]

=item [OptimizationMetric => Str]

=item [PerformAutoML => Bool]

=item [PerformHPO => Bool]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]

=item [TrainingParameters => L<Paws::Forecast::TrainingParameters>]


=back

Each argument is described in detail in: L<Paws::Forecast::CreatePredictor>

Returns: a L<Paws::Forecast::CreatePredictorResponse> instance

This operation creates a legacy predictor that does not include all the
predictor functionalities provided by Amazon Forecast. To create a
predictor that is compatible with all aspects of Forecast, use
CreateAutoPredictor.

Creates an Amazon Forecast predictor.

In the request, provide a dataset group and either specify an algorithm
or let Amazon Forecast choose an algorithm for you using AutoML. If you
specify an algorithm, you also can override algorithm-specific
hyperparameters.

Amazon Forecast uses the algorithm to train a predictor using the
latest version of the datasets in the specified dataset group. You can
then generate a forecast using the CreateForecast operation.

To see the evaluation metrics, use the GetAccuracyMetrics operation.

You can specify a featurization configuration to fill and aggregate the
data fields in the C<TARGET_TIME_SERIES> dataset to improve model
training. For more information, see FeaturizationConfig.

For RELATED_TIME_SERIES datasets, C<CreatePredictor> verifies that the
C<DataFrequency> specified when the dataset was created matches the
C<ForecastFrequency>. TARGET_TIME_SERIES datasets don't have this
restriction. Amazon Forecast also verifies the delimiter and timestamp
format. For more information, see howitworks-datasets-groups.

By default, predictors are trained and evaluated at the 0.1 (P10), 0.5
(P50), and 0.9 (P90) quantiles. You can choose custom forecast types to
train and evaluate your predictor by setting the C<ForecastTypes>.

B<AutoML>

If you want Amazon Forecast to evaluate each algorithm and choose the
one that minimizes the C<objective function>, set C<PerformAutoML> to
C<true>. The C<objective function> is defined as the mean of the
weighted losses over the forecast types. By default, these are the p10,
p50, and p90 quantile losses. For more information, see
EvaluationResult.

When AutoML is enabled, the following properties are disallowed:

=over

=item *

C<AlgorithmArn>

=item *

C<HPOConfig>

=item *

C<PerformHPO>

=item *

C<TrainingParameters>

=back

To get a list of all of your predictors, use the ListPredictors
operation.

Before you can use the predictor to create a forecast, the C<Status> of
the predictor must be C<ACTIVE>, signifying that training has
completed. To get the status, use the DescribePredictor operation.


=head2 CreatePredictorBacktestExportJob

=over

=item Destination => L<Paws::Forecast::DataDestination>

=item PredictorArn => Str

=item PredictorBacktestExportJobName => Str

=item [Format => Str]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreatePredictorBacktestExportJob>

Returns: a L<Paws::Forecast::CreatePredictorBacktestExportJobResponse> instance

Exports backtest forecasts and accuracy metrics generated by the
CreateAutoPredictor or CreatePredictor operations. Two folders
containing CSV or Parquet files are exported to your specified S3
bucket.

The export file names will match the following conventions:

C<E<lt>ExportJobNameE<gt>_E<lt>ExportTimestampE<gt>_E<lt>PartNumberE<gt>.csv>

The E<lt>ExportTimestampE<gt> component is in Java SimpleDate format
(yyyy-MM-ddTHH-mm-ssZ).

You must specify a DataDestination object that includes an Amazon S3
bucket and an Identity and Access Management (IAM) role that Amazon
Forecast can assume to access the Amazon S3 bucket. For more
information, see aws-forecast-iam-roles.

The C<Status> of the export job must be C<ACTIVE> before you can access
the export in your Amazon S3 bucket. To get the status, use the
DescribePredictorBacktestExportJob operation.


=head2 CreateWhatIfAnalysis

=over

=item ForecastArn => Str

=item WhatIfAnalysisName => Str

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]

=item [TimeSeriesSelector => L<Paws::Forecast::TimeSeriesSelector>]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateWhatIfAnalysis>

Returns: a L<Paws::Forecast::CreateWhatIfAnalysisResponse> instance

What-if analysis is a scenario modeling technique where you make a
hypothetical change to a time series and compare the forecasts
generated by these changes against the baseline, unchanged time series.
It is important to remember that the purpose of a what-if analysis is
to understand how a forecast can change given different modifications
to the baseline time series.

For example, imagine you are a clothing retailer who is considering an
end of season sale to clear space for new styles. After creating a
baseline forecast, you can use a what-if analysis to investigate how
different sales tactics might affect your goals.

You could create a scenario where everything is given a 25% markdown,
and another where everything is given a fixed dollar markdown. You
could create a scenario where the sale lasts for one week and another
where the sale lasts for one month. With a what-if analysis, you can
compare many different scenarios against each other.

Note that a what-if analysis is meant to display what the forecasting
model has learned and how it will behave in the scenarios that you are
evaluating. Do not blindly use the results of the what-if analysis to
make business decisions. For instance, forecasts might not be accurate
for novel scenarios where there is no reference available to determine
whether a forecast is good.

The TimeSeriesSelector object defines the items that you want in the
what-if analysis.


=head2 CreateWhatIfForecast

=over

=item WhatIfAnalysisArn => Str

=item WhatIfForecastName => Str

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]

=item [TimeSeriesReplacementsDataSource => L<Paws::Forecast::TimeSeriesReplacementsDataSource>]

=item [TimeSeriesTransformations => ArrayRef[L<Paws::Forecast::TimeSeriesTransformation>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateWhatIfForecast>

Returns: a L<Paws::Forecast::CreateWhatIfForecastResponse> instance

A what-if forecast is a forecast that is created from a modified
version of the baseline forecast. Each what-if forecast incorporates
either a replacement dataset or a set of transformations to the
original dataset.


=head2 CreateWhatIfForecastExport

=over

=item Destination => L<Paws::Forecast::DataDestination>

=item WhatIfForecastArns => ArrayRef[Str|Undef]

=item WhatIfForecastExportName => Str

=item [Format => Str]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateWhatIfForecastExport>

Returns: a L<Paws::Forecast::CreateWhatIfForecastExportResponse> instance

Exports a forecast created by the CreateWhatIfForecast operation to
your Amazon Simple Storage Service (Amazon S3) bucket. The forecast
file name will match the following conventions:

C<E<asymp>E<lt>ForecastExportJobNameE<gt>_E<lt>ExportTimestampE<gt>_E<lt>PartNumberE<gt>>

The E<lt>ExportTimestampE<gt> component is in Java SimpleDateFormat
(yyyy-MM-ddTHH-mm-ssZ).

You must specify a DataDestination object that includes an Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the Amazon S3 bucket. For more information, see aws-forecast-iam-roles.

For more information, see howitworks-forecast.

To get a list of all your what-if forecast export jobs, use the
ListWhatIfForecastExports operation.

The C<Status> of the forecast export job must be C<ACTIVE> before you
can access the forecast in your Amazon S3 bucket. To get the status,
use the DescribeWhatIfForecastExport operation.


=head2 DeleteDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteDataset>

Returns: nothing

Deletes an Amazon Forecast dataset that was created using the
CreateDataset
(https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html)
operation. You can only delete datasets that have a status of C<ACTIVE>
or C<CREATE_FAILED>. To get the status use the DescribeDataset
(https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
operation.

Forecast does not automatically update any dataset groups that contain
the deleted dataset. In order to update the dataset group, use the
UpdateDatasetGroup
(https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html)
operation, omitting the deleted dataset's ARN.


=head2 DeleteDatasetGroup

=over

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteDatasetGroup>

Returns: nothing

Deletes a dataset group created using the CreateDatasetGroup
(https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html)
operation. You can only delete dataset groups that have a status of
C<ACTIVE>, C<CREATE_FAILED>, or C<UPDATE_FAILED>. To get the status,
use the DescribeDatasetGroup
(https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
operation.

This operation deletes only the dataset group, not the datasets in the
group.


=head2 DeleteDatasetImportJob

=over

=item DatasetImportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteDatasetImportJob>

Returns: nothing

Deletes a dataset import job created using the CreateDatasetImportJob
(https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html)
operation. You can delete only dataset import jobs that have a status
of C<ACTIVE> or C<CREATE_FAILED>. To get the status, use the
DescribeDatasetImportJob
(https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html)
operation.


=head2 DeleteExplainability

=over

=item ExplainabilityArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteExplainability>

Returns: nothing

Deletes an Explainability resource.

You can delete only predictor that have a status of C<ACTIVE> or
C<CREATE_FAILED>. To get the status, use the DescribeExplainability
operation.


=head2 DeleteExplainabilityExport

=over

=item ExplainabilityExportArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteExplainabilityExport>

Returns: nothing

Deletes an Explainability export.


=head2 DeleteForecast

=over

=item ForecastArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteForecast>

Returns: nothing

Deletes a forecast created using the CreateForecast operation. You can
delete only forecasts that have a status of C<ACTIVE> or
C<CREATE_FAILED>. To get the status, use the DescribeForecast
operation.

You can't delete a forecast while it is being exported. After a
forecast is deleted, you can no longer query the forecast.


=head2 DeleteForecastExportJob

=over

=item ForecastExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteForecastExportJob>

Returns: nothing

Deletes a forecast export job created using the CreateForecastExportJob
operation. You can delete only export jobs that have a status of
C<ACTIVE> or C<CREATE_FAILED>. To get the status, use the
DescribeForecastExportJob operation.


=head2 DeleteMonitor

=over

=item MonitorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteMonitor>

Returns: nothing

Deletes a monitor resource. You can only delete a monitor resource with
a status of C<ACTIVE>, C<ACTIVE_STOPPED>, C<CREATE_FAILED>, or
C<CREATE_STOPPED>.


=head2 DeletePredictor

=over

=item PredictorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeletePredictor>

Returns: nothing

Deletes a predictor created using the DescribePredictor or
CreatePredictor operations. You can delete only predictor that have a
status of C<ACTIVE> or C<CREATE_FAILED>. To get the status, use the
DescribePredictor operation.


=head2 DeletePredictorBacktestExportJob

=over

=item PredictorBacktestExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeletePredictorBacktestExportJob>

Returns: nothing

Deletes a predictor backtest export job.


=head2 DeleteResourceTree

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteResourceTree>

Returns: nothing

Deletes an entire resource tree. This operation will delete the parent
resource and its child resources.

Child resources are resources that were created from another resource.
For example, when a forecast is generated from a predictor, the
forecast is the child resource and the predictor is the parent
resource.

Amazon Forecast resources possess the following parent-child resource
hierarchies:

=over

=item *

B<Dataset>: dataset import jobs

=item *

B<Dataset Group>: predictors, predictor backtest export jobs,
forecasts, forecast export jobs

=item *

B<Predictor>: predictor backtest export jobs, forecasts, forecast
export jobs

=item *

B<Forecast>: forecast export jobs

=back

C<DeleteResourceTree> will only delete Amazon Forecast resources, and
will not delete datasets or exported files stored in Amazon S3.


=head2 DeleteWhatIfAnalysis

=over

=item WhatIfAnalysisArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteWhatIfAnalysis>

Returns: nothing

Deletes a what-if analysis created using the CreateWhatIfAnalysis
operation. You can delete only what-if analyses that have a status of
C<ACTIVE> or C<CREATE_FAILED>. To get the status, use the
DescribeWhatIfAnalysis operation.

You can't delete a what-if analysis while any of its forecasts are
being exported.


=head2 DeleteWhatIfForecast

=over

=item WhatIfForecastArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteWhatIfForecast>

Returns: nothing

Deletes a what-if forecast created using the CreateWhatIfForecast
operation. You can delete only what-if forecasts that have a status of
C<ACTIVE> or C<CREATE_FAILED>. To get the status, use the
DescribeWhatIfForecast operation.

You can't delete a what-if forecast while it is being exported. After a
what-if forecast is deleted, you can no longer query the what-if
analysis.


=head2 DeleteWhatIfForecastExport

=over

=item WhatIfForecastExportArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteWhatIfForecastExport>

Returns: nothing

Deletes a what-if forecast export created using the
CreateWhatIfForecastExport operation. You can delete only what-if
forecast exports that have a status of C<ACTIVE> or C<CREATE_FAILED>.
To get the status, use the DescribeWhatIfForecastExport operation.


=head2 DescribeAutoPredictor

=over

=item PredictorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeAutoPredictor>

Returns: a L<Paws::Forecast::DescribeAutoPredictorResponse> instance

Describes a predictor created using the CreateAutoPredictor operation.


=head2 DescribeDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeDataset>

Returns: a L<Paws::Forecast::DescribeDatasetResponse> instance

Describes an Amazon Forecast dataset created using the CreateDataset
(https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html)
operation.

In addition to listing the parameters specified in the C<CreateDataset>
request, this operation includes the following dataset properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=back



=head2 DescribeDatasetGroup

=over

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeDatasetGroup>

Returns: a L<Paws::Forecast::DescribeDatasetGroupResponse> instance

Describes a dataset group created using the CreateDatasetGroup
(https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html)
operation.

In addition to listing the parameters provided in the
C<CreateDatasetGroup> request, this operation includes the following
properties:

=over

=item *

C<DatasetArns> - The datasets belonging to the group.

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=back



=head2 DescribeDatasetImportJob

=over

=item DatasetImportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeDatasetImportJob>

Returns: a L<Paws::Forecast::DescribeDatasetImportJobResponse> instance

Describes a dataset import job created using the CreateDatasetImportJob
(https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html)
operation.

In addition to listing the parameters provided in the
C<CreateDatasetImportJob> request, this operation includes the
following properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<DataSize>

=item *

C<FieldStatistics>

=item *

C<Status>

=item *

C<Message> - If an error occurred, information about the error.

=back



=head2 DescribeExplainability

=over

=item ExplainabilityArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeExplainability>

Returns: a L<Paws::Forecast::DescribeExplainabilityResponse> instance

Describes an Explainability resource created using the
CreateExplainability operation.


=head2 DescribeExplainabilityExport

=over

=item ExplainabilityExportArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeExplainabilityExport>

Returns: a L<Paws::Forecast::DescribeExplainabilityExportResponse> instance

Describes an Explainability export created using the
CreateExplainabilityExport operation.


=head2 DescribeForecast

=over

=item ForecastArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeForecast>

Returns: a L<Paws::Forecast::DescribeForecastResponse> instance

Describes a forecast created using the CreateForecast operation.

In addition to listing the properties provided in the C<CreateForecast>
request, this operation lists the following properties:

=over

=item *

C<DatasetGroupArn> - The dataset group that provided the training data.

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=item *

C<Message> - If an error occurred, information about the error.

=back



=head2 DescribeForecastExportJob

=over

=item ForecastExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeForecastExportJob>

Returns: a L<Paws::Forecast::DescribeForecastExportJobResponse> instance

Describes a forecast export job created using the
CreateForecastExportJob operation.

In addition to listing the properties provided by the user in the
C<CreateForecastExportJob> request, this operation lists the following
properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=item *

C<Message> - If an error occurred, information about the error.

=back



=head2 DescribeMonitor

=over

=item MonitorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeMonitor>

Returns: a L<Paws::Forecast::DescribeMonitorResponse> instance

Describes a monitor resource. In addition to listing the properties
provided in the CreateMonitor request, this operation lists the
following properties:

=over

=item *

C<Baseline>

=item *

C<CreationTime>

=item *

C<LastEvaluationTime>

=item *

C<LastEvaluationState>

=item *

C<LastModificationTime>

=item *

C<Message>

=item *

C<Status>

=back



=head2 DescribePredictor

=over

=item PredictorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribePredictor>

Returns: a L<Paws::Forecast::DescribePredictorResponse> instance

This operation is only valid for legacy predictors created with
CreatePredictor. If you are not using a legacy predictor, use
DescribeAutoPredictor.

Describes a predictor created using the CreatePredictor operation.

In addition to listing the properties provided in the
C<CreatePredictor> request, this operation lists the following
properties:

=over

=item *

C<DatasetImportJobArns> - The dataset import jobs used to import
training data.

=item *

C<AutoMLAlgorithmArns> - If AutoML is performed, the algorithms that
were evaluated.

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=item *

C<Message> - If an error occurred, information about the error.

=back



=head2 DescribePredictorBacktestExportJob

=over

=item PredictorBacktestExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribePredictorBacktestExportJob>

Returns: a L<Paws::Forecast::DescribePredictorBacktestExportJobResponse> instance

Describes a predictor backtest export job created using the
CreatePredictorBacktestExportJob operation.

In addition to listing the properties provided by the user in the
C<CreatePredictorBacktestExportJob> request, this operation lists the
following properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=item *

C<Message> (if an error occurred)

=back



=head2 DescribeWhatIfAnalysis

=over

=item WhatIfAnalysisArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeWhatIfAnalysis>

Returns: a L<Paws::Forecast::DescribeWhatIfAnalysisResponse> instance

Describes the what-if analysis created using the CreateWhatIfAnalysis
operation.

In addition to listing the properties provided in the
C<CreateWhatIfAnalysis> request, this operation lists the following
properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Message> - If an error occurred, information about the error.

=item *

C<Status>

=back



=head2 DescribeWhatIfForecast

=over

=item WhatIfForecastArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeWhatIfForecast>

Returns: a L<Paws::Forecast::DescribeWhatIfForecastResponse> instance

Describes the what-if forecast created using the CreateWhatIfForecast
operation.

In addition to listing the properties provided in the
C<CreateWhatIfForecast> request, this operation lists the following
properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Message> - If an error occurred, information about the error.

=item *

C<Status>

=back



=head2 DescribeWhatIfForecastExport

=over

=item WhatIfForecastExportArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeWhatIfForecastExport>

Returns: a L<Paws::Forecast::DescribeWhatIfForecastExportResponse> instance

Describes the what-if forecast export created using the
CreateWhatIfForecastExport operation.

In addition to listing the properties provided in the
C<CreateWhatIfForecastExport> request, this operation lists the
following properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Message> - If an error occurred, information about the error.

=item *

C<Status>

=back



=head2 GetAccuracyMetrics

=over

=item PredictorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::GetAccuracyMetrics>

Returns: a L<Paws::Forecast::GetAccuracyMetricsResponse> instance

Provides metrics on the accuracy of the models that were trained by the
CreatePredictor operation. Use metrics to see how well the model
performed and to decide whether to use the predictor to generate a
forecast. For more information, see Predictor Metrics
(https://docs.aws.amazon.com/forecast/latest/dg/metrics.html).

This operation generates metrics for each backtest window that was
evaluated. The number of backtest windows (C<NumberOfBacktestWindows>)
is specified using the EvaluationParameters object, which is optionally
included in the C<CreatePredictor> request. If
C<NumberOfBacktestWindows> isn't specified, the number defaults to one.

The parameters of the C<filling> method determine which items
contribute to the metrics. If you want all items to contribute, specify
C<zero>. If you want only those items that have complete data in the
range being evaluated to contribute, specify C<nan>. For more
information, see FeaturizationMethod.

Before you can get accuracy metrics, the C<Status> of the predictor
must be C<ACTIVE>, signifying that training has completed. To get the
status, use the DescribePredictor operation.


=head2 ListDatasetGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListDatasetGroups>

Returns: a L<Paws::Forecast::ListDatasetGroupsResponse> instance

Returns a list of dataset groups created using the CreateDatasetGroup
(https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html)
operation. For each dataset group, this operation returns a summary of
its properties, including its Amazon Resource Name (ARN). You can
retrieve the complete set of properties by using the dataset group ARN
with the DescribeDatasetGroup
(https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
operation.


=head2 ListDatasetImportJobs

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListDatasetImportJobs>

Returns: a L<Paws::Forecast::ListDatasetImportJobsResponse> instance

Returns a list of dataset import jobs created using the
CreateDatasetImportJob
(https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html)
operation. For each import job, this operation returns a summary of its
properties, including its Amazon Resource Name (ARN). You can retrieve
the complete set of properties by using the ARN with the
DescribeDatasetImportJob
(https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html)
operation. You can filter the list by providing an array of Filter
(https://docs.aws.amazon.com/forecast/latest/dg/API_Filter.html)
objects.


=head2 ListDatasets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListDatasets>

Returns: a L<Paws::Forecast::ListDatasetsResponse> instance

Returns a list of datasets created using the CreateDataset
(https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html)
operation. For each dataset, a summary of its properties, including its
Amazon Resource Name (ARN), is returned. To retrieve the complete set
of properties, use the ARN with the DescribeDataset
(https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
operation.


=head2 ListExplainabilities

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListExplainabilities>

Returns: a L<Paws::Forecast::ListExplainabilitiesResponse> instance

Returns a list of Explainability resources created using the
CreateExplainability operation. This operation returns a summary for
each Explainability. You can filter the list using an array of Filter
objects.

To retrieve the complete set of properties for a particular
Explainability resource, use the ARN with the DescribeExplainability
operation.


=head2 ListExplainabilityExports

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListExplainabilityExports>

Returns: a L<Paws::Forecast::ListExplainabilityExportsResponse> instance

Returns a list of Explainability exports created using the
CreateExplainabilityExport operation. This operation returns a summary
for each Explainability export. You can filter the list using an array
of Filter objects.

To retrieve the complete set of properties for a particular
Explainability export, use the ARN with the DescribeExplainability
operation.


=head2 ListForecastExportJobs

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListForecastExportJobs>

Returns: a L<Paws::Forecast::ListForecastExportJobsResponse> instance

Returns a list of forecast export jobs created using the
CreateForecastExportJob operation. For each forecast export job, this
operation returns a summary of its properties, including its Amazon
Resource Name (ARN). To retrieve the complete set of properties, use
the ARN with the DescribeForecastExportJob operation. You can filter
the list using an array of Filter objects.


=head2 ListForecasts

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListForecasts>

Returns: a L<Paws::Forecast::ListForecastsResponse> instance

Returns a list of forecasts created using the CreateForecast operation.
For each forecast, this operation returns a summary of its properties,
including its Amazon Resource Name (ARN). To retrieve the complete set
of properties, specify the ARN with the DescribeForecast operation. You
can filter the list using an array of Filter objects.


=head2 ListMonitorEvaluations

=over

=item MonitorArn => Str

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListMonitorEvaluations>

Returns: a L<Paws::Forecast::ListMonitorEvaluationsResponse> instance

Returns a list of the monitoring evaluation results and predictor
events collected by the monitor resource during different windows of
time.

For information about monitoring see predictor-monitoring. For more
information about retrieving monitoring results see Viewing Monitoring
Results
(https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html).


=head2 ListMonitors

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListMonitors>

Returns: a L<Paws::Forecast::ListMonitorsResponse> instance

Returns a list of monitors created with the CreateMonitor operation and
CreateAutoPredictor operation. For each monitor resource, this
operation returns of a summary of its properties, including its Amazon
Resource Name (ARN). You can retrieve a complete set of properties of a
monitor resource by specify the monitor's ARN in the DescribeMonitor
operation.


=head2 ListPredictorBacktestExportJobs

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListPredictorBacktestExportJobs>

Returns: a L<Paws::Forecast::ListPredictorBacktestExportJobsResponse> instance

Returns a list of predictor backtest export jobs created using the
CreatePredictorBacktestExportJob operation. This operation returns a
summary for each backtest export job. You can filter the list using an
array of Filter objects.

To retrieve the complete set of properties for a particular backtest
export job, use the ARN with the DescribePredictorBacktestExportJob
operation.


=head2 ListPredictors

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListPredictors>

Returns: a L<Paws::Forecast::ListPredictorsResponse> instance

Returns a list of predictors created using the CreateAutoPredictor or
CreatePredictor operations. For each predictor, this operation returns
a summary of its properties, including its Amazon Resource Name (ARN).

You can retrieve the complete set of properties by using the ARN with
the DescribeAutoPredictor and DescribePredictor operations. You can
filter the list using an array of Filter objects.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::ListTagsForResource>

Returns: a L<Paws::Forecast::ListTagsForResourceResponse> instance

Lists the tags for an Amazon Forecast resource.


=head2 ListWhatIfAnalyses

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListWhatIfAnalyses>

Returns: a L<Paws::Forecast::ListWhatIfAnalysesResponse> instance

Returns a list of what-if analyses created using the
CreateWhatIfAnalysis operation. For each what-if analysis, this
operation returns a summary of its properties, including its Amazon
Resource Name (ARN). You can retrieve the complete set of properties by
using the what-if analysis ARN with the DescribeWhatIfAnalysis
operation.


=head2 ListWhatIfForecastExports

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListWhatIfForecastExports>

Returns: a L<Paws::Forecast::ListWhatIfForecastExportsResponse> instance

Returns a list of what-if forecast exports created using the
CreateWhatIfForecastExport operation. For each what-if forecast export,
this operation returns a summary of its properties, including its
Amazon Resource Name (ARN). You can retrieve the complete set of
properties by using the what-if forecast export ARN with the
DescribeWhatIfForecastExport operation.


=head2 ListWhatIfForecasts

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListWhatIfForecasts>

Returns: a L<Paws::Forecast::ListWhatIfForecastsResponse> instance

Returns a list of what-if forecasts created using the
CreateWhatIfForecast operation. For each what-if forecast, this
operation returns a summary of its properties, including its Amazon
Resource Name (ARN). You can retrieve the complete set of properties by
using the what-if forecast ARN with the DescribeWhatIfForecast
operation.


=head2 ResumeResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::ResumeResource>

Returns: nothing

Resumes a stopped monitor resource.


=head2 StopResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::StopResource>

Returns: nothing

Stops a resource.

The resource undergoes the following states: C<CREATE_STOPPING> and
C<CREATE_STOPPED>. You cannot resume a resource once it has been
stopped.

This operation can be applied to the following resources (and their
corresponding child resources):

=over

=item *

Dataset Import Job

=item *

Predictor Job

=item *

Forecast Job

=item *

Forecast Export Job

=item *

Predictor Backtest Export Job

=item *

Explainability Job

=item *

Explainability Export Job

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Forecast::Tag>]


=back

Each argument is described in detail in: L<Paws::Forecast::TagResource>

Returns: a L<Paws::Forecast::TagResourceResponse> instance

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource are not specified in the
request parameters, they are not changed. When a resource is deleted,
the tags associated with that resource are also deleted.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Forecast::UntagResource>

Returns: a L<Paws::Forecast::UntagResourceResponse> instance

Deletes the specified tags from a resource.


=head2 UpdateDatasetGroup

=over

=item DatasetArns => ArrayRef[Str|Undef]

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::UpdateDatasetGroup>

Returns: a L<Paws::Forecast::UpdateDatasetGroupResponse> instance

Replaces the datasets in a dataset group with the specified datasets.

The C<Status> of the dataset group must be C<ACTIVE> before you can use
the dataset group to create a predictor. Use the DescribeDatasetGroup
(https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
operation to get the status.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDatasetGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatasetGroups, passing the object as the first parameter, and the string 'DatasetGroups' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListDatasetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetImportJobs(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetImportJobs([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatasetImportJobs, passing the object as the first parameter, and the string 'DatasetImportJobs' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListDatasetImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Datasets, passing the object as the first parameter, and the string 'Datasets' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExplainabilities(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllExplainabilities([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Explainabilities, passing the object as the first parameter, and the string 'Explainabilities' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListExplainabilitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExplainabilityExports(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllExplainabilityExports([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ExplainabilityExports, passing the object as the first parameter, and the string 'ExplainabilityExports' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListExplainabilityExportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllForecastExportJobs(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllForecastExportJobs([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ForecastExportJobs, passing the object as the first parameter, and the string 'ForecastExportJobs' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListForecastExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllForecasts(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllForecasts([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Forecasts, passing the object as the first parameter, and the string 'Forecasts' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListForecastsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitorEvaluations(sub { },MonitorArn => Str, [Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllMonitorEvaluations(MonitorArn => Str, [Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PredictorMonitorEvaluations, passing the object as the first parameter, and the string 'PredictorMonitorEvaluations' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListMonitorEvaluationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitors(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllMonitors([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Monitors, passing the object as the first parameter, and the string 'Monitors' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListMonitorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPredictorBacktestExportJobs(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllPredictorBacktestExportJobs([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PredictorBacktestExportJobs, passing the object as the first parameter, and the string 'PredictorBacktestExportJobs' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListPredictorBacktestExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPredictors(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllPredictors([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Predictors, passing the object as the first parameter, and the string 'Predictors' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListPredictorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWhatIfAnalyses(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllWhatIfAnalyses([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WhatIfAnalyses, passing the object as the first parameter, and the string 'WhatIfAnalyses' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListWhatIfAnalysesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWhatIfForecastExports(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllWhatIfForecastExports([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WhatIfForecastExports, passing the object as the first parameter, and the string 'WhatIfForecastExports' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListWhatIfForecastExportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWhatIfForecasts(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllWhatIfForecasts([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WhatIfForecasts, passing the object as the first parameter, and the string 'WhatIfForecasts' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListWhatIfForecastsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

