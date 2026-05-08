package Paws::Comprehend;
  use Moose;
  sub service { 'comprehend' }
  sub signing_name { 'comprehend' }
  sub version { '2017-11-27' }
  sub target_prefix { 'Comprehend_20171127' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchDetectDominantLanguage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectDominantLanguage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectKeyPhrases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectKeyPhrases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectSentiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectSentiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectSyntax {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectSyntax', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectTargetedSentiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectTargetedSentiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ClassifyDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ClassifyDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ContainsPiiEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ContainsPiiEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDocumentClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::CreateDocumentClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::CreateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEntityRecognizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::CreateEntityRecognizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlywheel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::CreateFlywheel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDocumentClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DeleteDocumentClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEntityRecognizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DeleteEntityRecognizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlywheel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DeleteFlywheel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocumentClassificationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeDocumentClassificationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocumentClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeDocumentClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDominantLanguageDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeDominantLanguageDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEntitiesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeEntitiesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEntityRecognizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeEntityRecognizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventsDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeEventsDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlywheel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeFlywheel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlywheelIteration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeFlywheelIteration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKeyPhrasesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeKeyPhrasesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePiiEntitiesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribePiiEntitiesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSentimentDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeSentimentDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTargetedSentimentDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeTargetedSentimentDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTopicsDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeTopicsDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectDominantLanguage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectDominantLanguage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectKeyPhrases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectKeyPhrases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectPiiEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectPiiEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectSentiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectSentiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectSyntax {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectSyntax', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectTargetedSentiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectTargetedSentiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectToxicContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectToxicContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ImportModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocumentClassificationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListDocumentClassificationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocumentClassifiers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListDocumentClassifiers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocumentClassifierSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListDocumentClassifierSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDominantLanguageDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListDominantLanguageDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntitiesDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListEntitiesDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntityRecognizers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListEntityRecognizers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntityRecognizerSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListEntityRecognizerSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventsDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListEventsDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlywheelIterationHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListFlywheelIterationHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlywheels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListFlywheels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeyPhrasesDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListKeyPhrasesDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPiiEntitiesDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListPiiEntitiesDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSentimentDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListSentimentDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargetedSentimentDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListTargetedSentimentDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTopicsDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListTopicsDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDocumentClassificationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartDocumentClassificationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDominantLanguageDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartDominantLanguageDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEntitiesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartEntitiesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEventsDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartEventsDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFlywheelIteration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartFlywheelIteration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartKeyPhrasesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartKeyPhrasesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPiiEntitiesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartPiiEntitiesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSentimentDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartSentimentDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTargetedSentimentDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartTargetedSentimentDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTopicsDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartTopicsDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDominantLanguageDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopDominantLanguageDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEntitiesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopEntitiesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEventsDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopEventsDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopKeyPhrasesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopKeyPhrasesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopPiiEntitiesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopPiiEntitiesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSentimentDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopSentimentDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTargetedSentimentDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopTargetedSentimentDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrainingDocumentClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopTrainingDocumentClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrainingEntityRecognizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopTrainingEntityRecognizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::UpdateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlywheel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::UpdateFlywheel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDocumentClassificationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDocumentClassificationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDocumentClassificationJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->DocumentClassificationJobPropertiesList }, @{ $next_result->DocumentClassificationJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DocumentClassificationJobPropertiesList') foreach (@{ $result->DocumentClassificationJobPropertiesList });
        $result = $self->ListDocumentClassificationJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DocumentClassificationJobPropertiesList') foreach (@{ $result->DocumentClassificationJobPropertiesList });
    }

    return undef
  }
  sub ListAllDocumentClassifiers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDocumentClassifiers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDocumentClassifiers(@_, NextToken => $next_result->NextToken);
        push @{ $result->DocumentClassifierPropertiesList }, @{ $next_result->DocumentClassifierPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DocumentClassifierPropertiesList') foreach (@{ $result->DocumentClassifierPropertiesList });
        $result = $self->ListDocumentClassifiers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DocumentClassifierPropertiesList') foreach (@{ $result->DocumentClassifierPropertiesList });
    }

    return undef
  }
  sub ListAllDominantLanguageDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDominantLanguageDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDominantLanguageDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->DominantLanguageDetectionJobPropertiesList }, @{ $next_result->DominantLanguageDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DominantLanguageDetectionJobPropertiesList') foreach (@{ $result->DominantLanguageDetectionJobPropertiesList });
        $result = $self->ListDominantLanguageDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DominantLanguageDetectionJobPropertiesList') foreach (@{ $result->DominantLanguageDetectionJobPropertiesList });
    }

    return undef
  }
  sub ListAllEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->EndpointPropertiesList }, @{ $next_result->EndpointPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EndpointPropertiesList') foreach (@{ $result->EndpointPropertiesList });
        $result = $self->ListEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EndpointPropertiesList') foreach (@{ $result->EndpointPropertiesList });
    }

    return undef
  }
  sub ListAllEntitiesDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEntitiesDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEntitiesDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->EntitiesDetectionJobPropertiesList }, @{ $next_result->EntitiesDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EntitiesDetectionJobPropertiesList') foreach (@{ $result->EntitiesDetectionJobPropertiesList });
        $result = $self->ListEntitiesDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EntitiesDetectionJobPropertiesList') foreach (@{ $result->EntitiesDetectionJobPropertiesList });
    }

    return undef
  }
  sub ListAllEntityRecognizers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEntityRecognizers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEntityRecognizers(@_, NextToken => $next_result->NextToken);
        push @{ $result->EntityRecognizerPropertiesList }, @{ $next_result->EntityRecognizerPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EntityRecognizerPropertiesList') foreach (@{ $result->EntityRecognizerPropertiesList });
        $result = $self->ListEntityRecognizers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EntityRecognizerPropertiesList') foreach (@{ $result->EntityRecognizerPropertiesList });
    }

    return undef
  }
  sub ListAllKeyPhrasesDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeyPhrasesDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListKeyPhrasesDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->KeyPhrasesDetectionJobPropertiesList }, @{ $next_result->KeyPhrasesDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'KeyPhrasesDetectionJobPropertiesList') foreach (@{ $result->KeyPhrasesDetectionJobPropertiesList });
        $result = $self->ListKeyPhrasesDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'KeyPhrasesDetectionJobPropertiesList') foreach (@{ $result->KeyPhrasesDetectionJobPropertiesList });
    }

    return undef
  }
  sub ListAllPiiEntitiesDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPiiEntitiesDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPiiEntitiesDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->PiiEntitiesDetectionJobPropertiesList }, @{ $next_result->PiiEntitiesDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PiiEntitiesDetectionJobPropertiesList') foreach (@{ $result->PiiEntitiesDetectionJobPropertiesList });
        $result = $self->ListPiiEntitiesDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PiiEntitiesDetectionJobPropertiesList') foreach (@{ $result->PiiEntitiesDetectionJobPropertiesList });
    }

    return undef
  }
  sub ListAllSentimentDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSentimentDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSentimentDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->SentimentDetectionJobPropertiesList }, @{ $next_result->SentimentDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SentimentDetectionJobPropertiesList') foreach (@{ $result->SentimentDetectionJobPropertiesList });
        $result = $self->ListSentimentDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SentimentDetectionJobPropertiesList') foreach (@{ $result->SentimentDetectionJobPropertiesList });
    }

    return undef
  }
  sub ListAllTopicsDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTopicsDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTopicsDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->TopicsDetectionJobPropertiesList }, @{ $next_result->TopicsDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TopicsDetectionJobPropertiesList') foreach (@{ $result->TopicsDetectionJobPropertiesList });
        $result = $self->ListTopicsDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TopicsDetectionJobPropertiesList') foreach (@{ $result->TopicsDetectionJobPropertiesList });
    }

    return undef
  }


  sub operations { qw/BatchDetectDominantLanguage BatchDetectEntities BatchDetectKeyPhrases BatchDetectSentiment BatchDetectSyntax BatchDetectTargetedSentiment ClassifyDocument ContainsPiiEntities CreateDataset CreateDocumentClassifier CreateEndpoint CreateEntityRecognizer CreateFlywheel DeleteDocumentClassifier DeleteEndpoint DeleteEntityRecognizer DeleteFlywheel DeleteResourcePolicy DescribeDataset DescribeDocumentClassificationJob DescribeDocumentClassifier DescribeDominantLanguageDetectionJob DescribeEndpoint DescribeEntitiesDetectionJob DescribeEntityRecognizer DescribeEventsDetectionJob DescribeFlywheel DescribeFlywheelIteration DescribeKeyPhrasesDetectionJob DescribePiiEntitiesDetectionJob DescribeResourcePolicy DescribeSentimentDetectionJob DescribeTargetedSentimentDetectionJob DescribeTopicsDetectionJob DetectDominantLanguage DetectEntities DetectKeyPhrases DetectPiiEntities DetectSentiment DetectSyntax DetectTargetedSentiment DetectToxicContent ImportModel ListDatasets ListDocumentClassificationJobs ListDocumentClassifiers ListDocumentClassifierSummaries ListDominantLanguageDetectionJobs ListEndpoints ListEntitiesDetectionJobs ListEntityRecognizers ListEntityRecognizerSummaries ListEventsDetectionJobs ListFlywheelIterationHistory ListFlywheels ListKeyPhrasesDetectionJobs ListPiiEntitiesDetectionJobs ListSentimentDetectionJobs ListTagsForResource ListTargetedSentimentDetectionJobs ListTopicsDetectionJobs PutResourcePolicy StartDocumentClassificationJob StartDominantLanguageDetectionJob StartEntitiesDetectionJob StartEventsDetectionJob StartFlywheelIteration StartKeyPhrasesDetectionJob StartPiiEntitiesDetectionJob StartSentimentDetectionJob StartTargetedSentimentDetectionJob StartTopicsDetectionJob StopDominantLanguageDetectionJob StopEntitiesDetectionJob StopEventsDetectionJob StopKeyPhrasesDetectionJob StopPiiEntitiesDetectionJob StopSentimentDetectionJob StopTargetedSentimentDetectionJob StopTrainingDocumentClassifier StopTrainingEntityRecognizer TagResource UntagResource UpdateEndpoint UpdateFlywheel / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend - Perl Interface to AWS Amazon Comprehend

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Comprehend');
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

Amazon Comprehend is an Amazon Web Services service for gaining insight
into the content of documents. Use these actions to determine the
topics contained in your documents, the topics they discuss, the
predominant sentiment expressed in them, the predominant language used,
and more.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchDetectDominantLanguage

=over

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectDominantLanguage>

Returns: a L<Paws::Comprehend::BatchDetectDominantLanguageResponse> instance

Determines the dominant language of the input text for a batch of
documents. For a list of languages that Amazon Comprehend can detect,
see Amazon Comprehend Supported Languages
(https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).


=head2 BatchDetectEntities

=over

=item LanguageCode => Str

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectEntities>

Returns: a L<Paws::Comprehend::BatchDetectEntitiesResponse> instance

Inspects the text of a batch of documents for named entities and
returns information about them. For more information about named
entities, see Entities
(https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html) in
the Comprehend Developer Guide.


=head2 BatchDetectKeyPhrases

=over

=item LanguageCode => Str

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectKeyPhrases>

Returns: a L<Paws::Comprehend::BatchDetectKeyPhrasesResponse> instance

Detects the key noun phrases found in a batch of documents.


=head2 BatchDetectSentiment

=over

=item LanguageCode => Str

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectSentiment>

Returns: a L<Paws::Comprehend::BatchDetectSentimentResponse> instance

Inspects a batch of documents and returns an inference of the
prevailing sentiment, C<POSITIVE>, C<NEUTRAL>, C<MIXED>, or
C<NEGATIVE>, in each one.


=head2 BatchDetectSyntax

=over

=item LanguageCode => Str

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectSyntax>

Returns: a L<Paws::Comprehend::BatchDetectSyntaxResponse> instance

Inspects the text of a batch of documents for the syntax and part of
speech of the words in the document and returns information about them.
For more information, see Syntax
(https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in
the Comprehend Developer Guide.


=head2 BatchDetectTargetedSentiment

=over

=item LanguageCode => Str

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectTargetedSentiment>

Returns: a L<Paws::Comprehend::BatchDetectTargetedSentimentResponse> instance

Inspects a batch of documents and returns a sentiment analysis for each
entity identified in the documents.

For more information about targeted sentiment, see Targeted sentiment
(https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 ClassifyDocument

=over

=item EndpointArn => Str

=item [Bytes => Str]

=item [DocumentReaderConfig => L<Paws::Comprehend::DocumentReaderConfig>]

=item [Text => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ClassifyDocument>

Returns: a L<Paws::Comprehend::ClassifyDocumentResponse> instance

Creates a classification request to analyze a single document in
real-time. C<ClassifyDocument> supports the following model types:

=over

=item *

Custom classifier - a custom model that you have created and trained.
For input, you can provide plain text, a single-page document (PDF,
Word, or image), or Amazon Textract API output. For more information,
see Custom classification
(https://docs.aws.amazon.com/comprehend/latest/dg/how-document-classification.html)
in the I<Amazon Comprehend Developer Guide>.

=item *

Prompt safety classifier - Amazon Comprehend provides a pre-trained
model for classifying input prompts for generative AI applications. For
input, you provide English plain text input. For prompt safety
classification, the response includes only the C<Classes> field. For
more information about prompt safety classifiers, see Prompt safety
classification
(https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification)
in the I<Amazon Comprehend Developer Guide>.

=back

If the system detects errors while processing a page in the input
document, the API response includes an C<Errors> field that describes
the errors.

If the system detects a document-level error in your input document,
the API returns an C<InvalidRequestException> error response. For
details about this exception, see Errors in semi-structured documents
(https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html)
in the Comprehend Developer Guide.


=head2 ContainsPiiEntities

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::ContainsPiiEntities>

Returns: a L<Paws::Comprehend::ContainsPiiEntitiesResponse> instance

Analyzes input text for the presence of personally identifiable
information (PII) and returns the labels of identified PII entity types
such as name, address, bank account number, or phone number.


=head2 CreateDataset

=over

=item DatasetName => Str

=item FlywheelArn => Str

=item InputDataConfig => L<Paws::Comprehend::DatasetInputDataConfig>

=item [ClientRequestToken => Str]

=item [DatasetType => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]


=back

Each argument is described in detail in: L<Paws::Comprehend::CreateDataset>

Returns: a L<Paws::Comprehend::CreateDatasetResponse> instance

Creates a dataset to upload training or test data for a model
associated with a flywheel. For more information about datasets, see
Flywheel overview
(https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 CreateDocumentClassifier

=over

=item DataAccessRoleArn => Str

=item DocumentClassifierName => Str

=item InputDataConfig => L<Paws::Comprehend::DocumentClassifierInputDataConfig>

=item LanguageCode => Str

=item [ClientRequestToken => Str]

=item [Mode => Str]

=item [ModelKmsKeyId => Str]

=item [ModelPolicy => Str]

=item [OutputDataConfig => L<Paws::Comprehend::DocumentClassifierOutputDataConfig>]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VersionName => Str]

=item [VolumeKmsKeyId => Str]

=item [VpcConfig => L<Paws::Comprehend::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::CreateDocumentClassifier>

Returns: a L<Paws::Comprehend::CreateDocumentClassifierResponse> instance

Creates a new document classifier that you can use to categorize
documents. To create a classifier, you provide a set of training
documents that are labeled with the categories that you want to use.
For more information, see Training classifier models
(https://docs.aws.amazon.com/comprehend/latest/dg/training-classifier-model.html)
in the Comprehend Developer Guide.


=head2 CreateEndpoint

=over

=item DesiredInferenceUnits => Int

=item EndpointName => Str

=item [ClientRequestToken => Str]

=item [DataAccessRoleArn => Str]

=item [FlywheelArn => Str]

=item [ModelArn => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]


=back

Each argument is described in detail in: L<Paws::Comprehend::CreateEndpoint>

Returns: a L<Paws::Comprehend::CreateEndpointResponse> instance

Creates a model-specific endpoint for synchronous inference for a
previously trained custom model For information about endpoints, see
Managing endpoints
(https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).


=head2 CreateEntityRecognizer

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::EntityRecognizerInputDataConfig>

=item LanguageCode => Str

=item RecognizerName => Str

=item [ClientRequestToken => Str]

=item [ModelKmsKeyId => Str]

=item [ModelPolicy => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VersionName => Str]

=item [VolumeKmsKeyId => Str]

=item [VpcConfig => L<Paws::Comprehend::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::CreateEntityRecognizer>

Returns: a L<Paws::Comprehend::CreateEntityRecognizerResponse> instance

Creates an entity recognizer using submitted files. After your
C<CreateEntityRecognizer> request is submitted, you can check job
status using the C<DescribeEntityRecognizer> API.


=head2 CreateFlywheel

=over

=item DataAccessRoleArn => Str

=item DataLakeS3Uri => Str

=item FlywheelName => Str

=item [ActiveModelArn => Str]

=item [ClientRequestToken => Str]

=item [DataSecurityConfig => L<Paws::Comprehend::DataSecurityConfig>]

=item [ModelType => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [TaskConfig => L<Paws::Comprehend::TaskConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::CreateFlywheel>

Returns: a L<Paws::Comprehend::CreateFlywheelResponse> instance

A flywheel is an Amazon Web Services resource that orchestrates the
ongoing training of a model for custom classification or custom entity
recognition. You can create a flywheel to start with an existing
trained model, or Comprehend can create and train a new model.

When you create the flywheel, Comprehend creates a data lake in your
account. The data lake holds the training data and test data for all
versions of the model.

To use a flywheel with an existing trained model, you specify the
active model version. Comprehend copies the model's training data and
test data into the flywheel's data lake.

To use the flywheel with a new model, you need to provide a dataset for
training data (and optional test data) when you create the flywheel.

For more information about flywheels, see Flywheel overview
(https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 DeleteDocumentClassifier

=over

=item DocumentClassifierArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DeleteDocumentClassifier>

Returns: a L<Paws::Comprehend::DeleteDocumentClassifierResponse> instance

Deletes a previously created document classifier

Only those classifiers that are in terminated states (IN_ERROR,
TRAINED) will be deleted. If an active inference job is using the
model, a C<ResourceInUseException> will be returned.

This is an asynchronous action that puts the classifier into a DELETING
state, and it is then removed by a background job. Once removed, the
classifier disappears from your account and is no longer available for
use.


=head2 DeleteEndpoint

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DeleteEndpoint>

Returns: a L<Paws::Comprehend::DeleteEndpointResponse> instance

Deletes a model-specific endpoint for a previously-trained custom
model. All endpoints must be deleted in order for the model to be
deleted. For information about endpoints, see Managing endpoints
(https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).


=head2 DeleteEntityRecognizer

=over

=item EntityRecognizerArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DeleteEntityRecognizer>

Returns: a L<Paws::Comprehend::DeleteEntityRecognizerResponse> instance

Deletes an entity recognizer.

Only those recognizers that are in terminated states (IN_ERROR,
TRAINED) will be deleted. If an active inference job is using the
model, a C<ResourceInUseException> will be returned.

This is an asynchronous action that puts the recognizer into a DELETING
state, and it is then removed by a background job. Once removed, the
recognizer disappears from your account and is no longer available for
use.


=head2 DeleteFlywheel

=over

=item FlywheelArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DeleteFlywheel>

Returns: a L<Paws::Comprehend::DeleteFlywheelResponse> instance

Deletes a flywheel. When you delete the flywheel, Amazon Comprehend
does not delete the data lake or the model associated with the
flywheel.

For more information about flywheels, see Flywheel overview
(https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str

=item [PolicyRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::DeleteResourcePolicy>

Returns: a L<Paws::Comprehend::DeleteResourcePolicyResponse> instance

Deletes a resource-based policy that is attached to a custom model.


=head2 DescribeDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeDataset>

Returns: a L<Paws::Comprehend::DescribeDatasetResponse> instance

Returns information about the dataset that you specify. For more
information about datasets, see Flywheel overview
(https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 DescribeDocumentClassificationJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeDocumentClassificationJob>

Returns: a L<Paws::Comprehend::DescribeDocumentClassificationJobResponse> instance

Gets the properties associated with a document classification job. Use
this operation to get the status of a classification job.


=head2 DescribeDocumentClassifier

=over

=item DocumentClassifierArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeDocumentClassifier>

Returns: a L<Paws::Comprehend::DescribeDocumentClassifierResponse> instance

Gets the properties associated with a document classifier.


=head2 DescribeDominantLanguageDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeDominantLanguageDetectionJob>

Returns: a L<Paws::Comprehend::DescribeDominantLanguageDetectionJobResponse> instance

Gets the properties associated with a dominant language detection job.
Use this operation to get the status of a detection job.


=head2 DescribeEndpoint

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeEndpoint>

Returns: a L<Paws::Comprehend::DescribeEndpointResponse> instance

Gets the properties associated with a specific endpoint. Use this
operation to get the status of an endpoint. For information about
endpoints, see Managing endpoints
(https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).


=head2 DescribeEntitiesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeEntitiesDetectionJob>

Returns: a L<Paws::Comprehend::DescribeEntitiesDetectionJobResponse> instance

Gets the properties associated with an entities detection job. Use this
operation to get the status of a detection job.


=head2 DescribeEntityRecognizer

=over

=item EntityRecognizerArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeEntityRecognizer>

Returns: a L<Paws::Comprehend::DescribeEntityRecognizerResponse> instance

Provides details about an entity recognizer including status, S3
buckets containing training data, recognizer metadata, metrics, and so
on.


=head2 DescribeEventsDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeEventsDetectionJob>

Returns: a L<Paws::Comprehend::DescribeEventsDetectionJobResponse> instance

Gets the status and details of an events detection job.


=head2 DescribeFlywheel

=over

=item FlywheelArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeFlywheel>

Returns: a L<Paws::Comprehend::DescribeFlywheelResponse> instance

Provides configuration information about the flywheel. For more
information about flywheels, see Flywheel overview
(https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 DescribeFlywheelIteration

=over

=item FlywheelArn => Str

=item FlywheelIterationId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeFlywheelIteration>

Returns: a L<Paws::Comprehend::DescribeFlywheelIterationResponse> instance

Retrieve the configuration properties of a flywheel iteration. For more
information about flywheels, see Flywheel overview
(https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 DescribeKeyPhrasesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeKeyPhrasesDetectionJob>

Returns: a L<Paws::Comprehend::DescribeKeyPhrasesDetectionJobResponse> instance

Gets the properties associated with a key phrases detection job. Use
this operation to get the status of a detection job.


=head2 DescribePiiEntitiesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribePiiEntitiesDetectionJob>

Returns: a L<Paws::Comprehend::DescribePiiEntitiesDetectionJobResponse> instance

Gets the properties associated with a PII entities detection job. For
example, you can use this operation to get the job status.


=head2 DescribeResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeResourcePolicy>

Returns: a L<Paws::Comprehend::DescribeResourcePolicyResponse> instance

Gets the details of a resource-based policy that is attached to a
custom model, including the JSON body of the policy.


=head2 DescribeSentimentDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeSentimentDetectionJob>

Returns: a L<Paws::Comprehend::DescribeSentimentDetectionJobResponse> instance

Gets the properties associated with a sentiment detection job. Use this
operation to get the status of a detection job.


=head2 DescribeTargetedSentimentDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeTargetedSentimentDetectionJob>

Returns: a L<Paws::Comprehend::DescribeTargetedSentimentDetectionJobResponse> instance

Gets the properties associated with a targeted sentiment detection job.
Use this operation to get the status of the job.


=head2 DescribeTopicsDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeTopicsDetectionJob>

Returns: a L<Paws::Comprehend::DescribeTopicsDetectionJobResponse> instance

Gets the properties associated with a topic detection job. Use this
operation to get the status of a detection job.


=head2 DetectDominantLanguage

=over

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectDominantLanguage>

Returns: a L<Paws::Comprehend::DetectDominantLanguageResponse> instance

Determines the dominant language of the input text. For a list of
languages that Amazon Comprehend can detect, see Amazon Comprehend
Supported Languages
(https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).


=head2 DetectEntities

=over

=item [Bytes => Str]

=item [DocumentReaderConfig => L<Paws::Comprehend::DocumentReaderConfig>]

=item [EndpointArn => Str]

=item [LanguageCode => Str]

=item [Text => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectEntities>

Returns: a L<Paws::Comprehend::DetectEntitiesResponse> instance

Detects named entities in input text when you use the pre-trained
model. Detects custom entities if you have a custom entity recognition
model.

When detecting named entities using the pre-trained model, use plain
text as the input. For more information about named entities, see
Entities
(https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html) in
the Comprehend Developer Guide.

When you use a custom entity recognition model, you can input plain
text or you can upload a single-page input document (text, PDF, Word,
or image).

If the system detects errors while processing a page in the input
document, the API response includes an entry in C<Errors> for each
error.

If the system detects a document-level error in your input document,
the API returns an C<InvalidRequestException> error response. For
details about this exception, see Errors in semi-structured documents
(https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html)
in the Comprehend Developer Guide.


=head2 DetectKeyPhrases

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectKeyPhrases>

Returns: a L<Paws::Comprehend::DetectKeyPhrasesResponse> instance

Detects the key noun phrases found in the text.


=head2 DetectPiiEntities

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectPiiEntities>

Returns: a L<Paws::Comprehend::DetectPiiEntitiesResponse> instance

Inspects the input text for entities that contain personally
identifiable information (PII) and returns information about them.


=head2 DetectSentiment

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectSentiment>

Returns: a L<Paws::Comprehend::DetectSentimentResponse> instance

Inspects text and returns an inference of the prevailing sentiment
(C<POSITIVE>, C<NEUTRAL>, C<MIXED>, or C<NEGATIVE>).


=head2 DetectSyntax

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectSyntax>

Returns: a L<Paws::Comprehend::DetectSyntaxResponse> instance

Inspects text for syntax and the part of speech of words in the
document. For more information, see Syntax
(https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in
the Comprehend Developer Guide.


=head2 DetectTargetedSentiment

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectTargetedSentiment>

Returns: a L<Paws::Comprehend::DetectTargetedSentimentResponse> instance

Inspects the input text and returns a sentiment analysis for each
entity identified in the text.

For more information about targeted sentiment, see Targeted sentiment
(https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 DetectToxicContent

=over

=item LanguageCode => Str

=item TextSegments => ArrayRef[L<Paws::Comprehend::TextSegment>]


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectToxicContent>

Returns: a L<Paws::Comprehend::DetectToxicContentResponse> instance

Performs toxicity analysis on the list of text strings that you provide
as input. The API response contains a results list that matches the
size of the input list. For more information about toxicity detection,
see Toxicity detection
(https://docs.aws.amazon.com/comprehend/latest/dg/toxicity-detection.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 ImportModel

=over

=item SourceModelArn => Str

=item [DataAccessRoleArn => Str]

=item [ModelKmsKeyId => Str]

=item [ModelName => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VersionName => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ImportModel>

Returns: a L<Paws::Comprehend::ImportModelResponse> instance

Creates a new custom model that replicates a source custom model that
you import. The source model can be in your Amazon Web Services account
or another one.

If the source model is in another Amazon Web Services account, then it
must have a resource-based policy that authorizes you to import it.

The source model must be in the same Amazon Web Services Region that
you're using when you import. You can't import a model that's in a
different Region.


=head2 ListDatasets

=over

=item [Filter => L<Paws::Comprehend::DatasetFilter>]

=item [FlywheelArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListDatasets>

Returns: a L<Paws::Comprehend::ListDatasetsResponse> instance

List the datasets that you have configured in this Region. For more
information about datasets, see Flywheel overview
(https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 ListDocumentClassificationJobs

=over

=item [Filter => L<Paws::Comprehend::DocumentClassificationJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListDocumentClassificationJobs>

Returns: a L<Paws::Comprehend::ListDocumentClassificationJobsResponse> instance

Gets a list of the documentation classification jobs that you have
submitted.


=head2 ListDocumentClassifiers

=over

=item [Filter => L<Paws::Comprehend::DocumentClassifierFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListDocumentClassifiers>

Returns: a L<Paws::Comprehend::ListDocumentClassifiersResponse> instance

Gets a list of the document classifiers that you have created.


=head2 ListDocumentClassifierSummaries

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListDocumentClassifierSummaries>

Returns: a L<Paws::Comprehend::ListDocumentClassifierSummariesResponse> instance

Gets a list of summaries of the document classifiers that you have
created


=head2 ListDominantLanguageDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::DominantLanguageDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListDominantLanguageDetectionJobs>

Returns: a L<Paws::Comprehend::ListDominantLanguageDetectionJobsResponse> instance

Gets a list of the dominant language detection jobs that you have
submitted.


=head2 ListEndpoints

=over

=item [Filter => L<Paws::Comprehend::EndpointFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListEndpoints>

Returns: a L<Paws::Comprehend::ListEndpointsResponse> instance

Gets a list of all existing endpoints that you've created. For
information about endpoints, see Managing endpoints
(https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).


=head2 ListEntitiesDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::EntitiesDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListEntitiesDetectionJobs>

Returns: a L<Paws::Comprehend::ListEntitiesDetectionJobsResponse> instance

Gets a list of the entity detection jobs that you have submitted.


=head2 ListEntityRecognizers

=over

=item [Filter => L<Paws::Comprehend::EntityRecognizerFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListEntityRecognizers>

Returns: a L<Paws::Comprehend::ListEntityRecognizersResponse> instance

Gets a list of the properties of all entity recognizers that you
created, including recognizers currently in training. Allows you to
filter the list of recognizers based on criteria such as status and
submission time. This call returns up to 500 entity recognizers in the
list, with a default number of 100 recognizers in the list.

The results of this list are not in any particular order. Please get
the list and sort locally if needed.


=head2 ListEntityRecognizerSummaries

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListEntityRecognizerSummaries>

Returns: a L<Paws::Comprehend::ListEntityRecognizerSummariesResponse> instance

Gets a list of summaries for the entity recognizers that you have
created.


=head2 ListEventsDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::EventsDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListEventsDetectionJobs>

Returns: a L<Paws::Comprehend::ListEventsDetectionJobsResponse> instance

Gets a list of the events detection jobs that you have submitted.


=head2 ListFlywheelIterationHistory

=over

=item FlywheelArn => Str

=item [Filter => L<Paws::Comprehend::FlywheelIterationFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListFlywheelIterationHistory>

Returns: a L<Paws::Comprehend::ListFlywheelIterationHistoryResponse> instance

Information about the history of a flywheel iteration. For more
information about flywheels, see Flywheel overview
(https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 ListFlywheels

=over

=item [Filter => L<Paws::Comprehend::FlywheelFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListFlywheels>

Returns: a L<Paws::Comprehend::ListFlywheelsResponse> instance

Gets a list of the flywheels that you have created.


=head2 ListKeyPhrasesDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::KeyPhrasesDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListKeyPhrasesDetectionJobs>

Returns: a L<Paws::Comprehend::ListKeyPhrasesDetectionJobsResponse> instance

Get a list of key phrase detection jobs that you have submitted.


=head2 ListPiiEntitiesDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::PiiEntitiesDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListPiiEntitiesDetectionJobs>

Returns: a L<Paws::Comprehend::ListPiiEntitiesDetectionJobsResponse> instance

Gets a list of the PII entity detection jobs that you have submitted.


=head2 ListSentimentDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::SentimentDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListSentimentDetectionJobs>

Returns: a L<Paws::Comprehend::ListSentimentDetectionJobsResponse> instance

Gets a list of sentiment detection jobs that you have submitted.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::ListTagsForResource>

Returns: a L<Paws::Comprehend::ListTagsForResourceResponse> instance

Lists all tags associated with a given Amazon Comprehend resource.


=head2 ListTargetedSentimentDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::TargetedSentimentDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListTargetedSentimentDetectionJobs>

Returns: a L<Paws::Comprehend::ListTargetedSentimentDetectionJobsResponse> instance

Gets a list of targeted sentiment detection jobs that you have
submitted.


=head2 ListTopicsDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::TopicsDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListTopicsDetectionJobs>

Returns: a L<Paws::Comprehend::ListTopicsDetectionJobsResponse> instance

Gets a list of the topic detection jobs that you have submitted.


=head2 PutResourcePolicy

=over

=item ResourceArn => Str

=item ResourcePolicy => Str

=item [PolicyRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::PutResourcePolicy>

Returns: a L<Paws::Comprehend::PutResourcePolicyResponse> instance

Attaches a resource-based policy to a custom model. You can use this
policy to authorize an entity in another Amazon Web Services account to
import the custom model, which replicates it in Amazon Comprehend in
their account.


=head2 StartDocumentClassificationJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [DocumentClassifierArn => Str]

=item [FlywheelArn => Str]

=item [JobName => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VolumeKmsKeyId => Str]

=item [VpcConfig => L<Paws::Comprehend::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartDocumentClassificationJob>

Returns: a L<Paws::Comprehend::StartDocumentClassificationJobResponse> instance

Starts an asynchronous document classification job using a custom
classification model. Use the C<DescribeDocumentClassificationJob>
operation to track the progress of the job.


=head2 StartDominantLanguageDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VolumeKmsKeyId => Str]

=item [VpcConfig => L<Paws::Comprehend::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartDominantLanguageDetectionJob>

Returns: a L<Paws::Comprehend::StartDominantLanguageDetectionJobResponse> instance

Starts an asynchronous dominant language detection job for a collection
of documents. Use the operation to track the status of a job.


=head2 StartEntitiesDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [EntityRecognizerArn => Str]

=item [FlywheelArn => Str]

=item [JobName => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VolumeKmsKeyId => Str]

=item [VpcConfig => L<Paws::Comprehend::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartEntitiesDetectionJob>

Returns: a L<Paws::Comprehend::StartEntitiesDetectionJobResponse> instance

Starts an asynchronous entity detection job for a collection of
documents. Use the operation to track the status of a job.

This API can be used for either standard entity detection or custom
entity recognition. In order to be used for custom entity recognition,
the optional C<EntityRecognizerArn> must be used in order to provide
access to the recognizer being used to detect the custom entity.


=head2 StartEventsDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item TargetEventTypes => ArrayRef[Str|Undef]

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartEventsDetectionJob>

Returns: a L<Paws::Comprehend::StartEventsDetectionJobResponse> instance

Starts an asynchronous event detection job for a collection of
documents.


=head2 StartFlywheelIteration

=over

=item FlywheelArn => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartFlywheelIteration>

Returns: a L<Paws::Comprehend::StartFlywheelIterationResponse> instance

Start the flywheel iteration.This operation uses any new datasets to
train a new model version. For more information about flywheels, see
Flywheel overview
(https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the I<Amazon Comprehend Developer Guide>.


=head2 StartKeyPhrasesDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VolumeKmsKeyId => Str]

=item [VpcConfig => L<Paws::Comprehend::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartKeyPhrasesDetectionJob>

Returns: a L<Paws::Comprehend::StartKeyPhrasesDetectionJobResponse> instance

Starts an asynchronous key phrase detection job for a collection of
documents. Use the operation to track the status of a job.


=head2 StartPiiEntitiesDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item LanguageCode => Str

=item Mode => Str

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [RedactionConfig => L<Paws::Comprehend::RedactionConfig>]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartPiiEntitiesDetectionJob>

Returns: a L<Paws::Comprehend::StartPiiEntitiesDetectionJobResponse> instance

Starts an asynchronous PII entity detection job for a collection of
documents.


=head2 StartSentimentDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VolumeKmsKeyId => Str]

=item [VpcConfig => L<Paws::Comprehend::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartSentimentDetectionJob>

Returns: a L<Paws::Comprehend::StartSentimentDetectionJobResponse> instance

Starts an asynchronous sentiment detection job for a collection of
documents. Use the operation to track the status of a job.


=head2 StartTargetedSentimentDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VolumeKmsKeyId => Str]

=item [VpcConfig => L<Paws::Comprehend::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartTargetedSentimentDetectionJob>

Returns: a L<Paws::Comprehend::StartTargetedSentimentDetectionJobResponse> instance

Starts an asynchronous targeted sentiment detection job for a
collection of documents. Use the
C<DescribeTargetedSentimentDetectionJob> operation to track the status
of a job.


=head2 StartTopicsDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [NumberOfTopics => Int]

=item [Tags => ArrayRef[L<Paws::Comprehend::Tag>]]

=item [VolumeKmsKeyId => Str]

=item [VpcConfig => L<Paws::Comprehend::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartTopicsDetectionJob>

Returns: a L<Paws::Comprehend::StartTopicsDetectionJobResponse> instance

Starts an asynchronous topic detection job. Use the
C<DescribeTopicDetectionJob> operation to track the status of a job.


=head2 StopDominantLanguageDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopDominantLanguageDetectionJob>

Returns: a L<Paws::Comprehend::StopDominantLanguageDetectionJobResponse> instance

Stops a dominant language detection job in progress.

If the job state is C<IN_PROGRESS> the job is marked for termination
and put into the C<STOP_REQUESTED> state. If the job completes before
it can be stopped, it is put into the C<COMPLETED> state; otherwise the
job is stopped and put into the C<STOPPED> state.

If the job is in the C<COMPLETED> or C<FAILED> state when you call the
C<StopDominantLanguageDetectionJob> operation, the operation returns a
400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.


=head2 StopEntitiesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopEntitiesDetectionJob>

Returns: a L<Paws::Comprehend::StopEntitiesDetectionJobResponse> instance

Stops an entities detection job in progress.

If the job state is C<IN_PROGRESS> the job is marked for termination
and put into the C<STOP_REQUESTED> state. If the job completes before
it can be stopped, it is put into the C<COMPLETED> state; otherwise the
job is stopped and put into the C<STOPPED> state.

If the job is in the C<COMPLETED> or C<FAILED> state when you call the
C<StopDominantLanguageDetectionJob> operation, the operation returns a
400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.


=head2 StopEventsDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopEventsDetectionJob>

Returns: a L<Paws::Comprehend::StopEventsDetectionJobResponse> instance

Stops an events detection job in progress.


=head2 StopKeyPhrasesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopKeyPhrasesDetectionJob>

Returns: a L<Paws::Comprehend::StopKeyPhrasesDetectionJobResponse> instance

Stops a key phrases detection job in progress.

If the job state is C<IN_PROGRESS> the job is marked for termination
and put into the C<STOP_REQUESTED> state. If the job completes before
it can be stopped, it is put into the C<COMPLETED> state; otherwise the
job is stopped and put into the C<STOPPED> state.

If the job is in the C<COMPLETED> or C<FAILED> state when you call the
C<StopDominantLanguageDetectionJob> operation, the operation returns a
400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.


=head2 StopPiiEntitiesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopPiiEntitiesDetectionJob>

Returns: a L<Paws::Comprehend::StopPiiEntitiesDetectionJobResponse> instance

Stops a PII entities detection job in progress.


=head2 StopSentimentDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopSentimentDetectionJob>

Returns: a L<Paws::Comprehend::StopSentimentDetectionJobResponse> instance

Stops a sentiment detection job in progress.

If the job state is C<IN_PROGRESS>, the job is marked for termination
and put into the C<STOP_REQUESTED> state. If the job completes before
it can be stopped, it is put into the C<COMPLETED> state; otherwise the
job is be stopped and put into the C<STOPPED> state.

If the job is in the C<COMPLETED> or C<FAILED> state when you call the
C<StopDominantLanguageDetectionJob> operation, the operation returns a
400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.


=head2 StopTargetedSentimentDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopTargetedSentimentDetectionJob>

Returns: a L<Paws::Comprehend::StopTargetedSentimentDetectionJobResponse> instance

Stops a targeted sentiment detection job in progress.

If the job state is C<IN_PROGRESS>, the job is marked for termination
and put into the C<STOP_REQUESTED> state. If the job completes before
it can be stopped, it is put into the C<COMPLETED> state; otherwise the
job is be stopped and put into the C<STOPPED> state.

If the job is in the C<COMPLETED> or C<FAILED> state when you call the
C<StopDominantLanguageDetectionJob> operation, the operation returns a
400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.


=head2 StopTrainingDocumentClassifier

=over

=item DocumentClassifierArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopTrainingDocumentClassifier>

Returns: a L<Paws::Comprehend::StopTrainingDocumentClassifierResponse> instance

Stops a document classifier training job while in progress.

If the training job state is C<TRAINING>, the job is marked for
termination and put into the C<STOP_REQUESTED> state. If the training
job completes before it can be stopped, it is put into the C<TRAINED>;
otherwise the training job is stopped and put into the C<STOPPED> state
and the service sends back an HTTP 200 response with an empty HTTP
body.


=head2 StopTrainingEntityRecognizer

=over

=item EntityRecognizerArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopTrainingEntityRecognizer>

Returns: a L<Paws::Comprehend::StopTrainingEntityRecognizerResponse> instance

Stops an entity recognizer training job while in progress.

If the training job state is C<TRAINING>, the job is marked for
termination and put into the C<STOP_REQUESTED> state. If the training
job completes before it can be stopped, it is put into the C<TRAINED>;
otherwise the training job is stopped and putted into the C<STOPPED>
state and the service sends back an HTTP 200 response with an empty
HTTP body.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Comprehend::Tag>]


=back

Each argument is described in detail in: L<Paws::Comprehend::TagResource>

Returns: a L<Paws::Comprehend::TagResourceResponse> instance

Associates a specific tag with an Amazon Comprehend resource. A tag is
a key-value pair that adds as a metadata to a resource used by Amazon
Comprehend. For example, a tag with "Sales" as the key might be added
to a resource to indicate its use by the sales department.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::UntagResource>

Returns: a L<Paws::Comprehend::UntagResourceResponse> instance

Removes a specific tag associated with an Amazon Comprehend resource.


=head2 UpdateEndpoint

=over

=item EndpointArn => Str

=item [DesiredDataAccessRoleArn => Str]

=item [DesiredInferenceUnits => Int]

=item [DesiredModelArn => Str]

=item [FlywheelArn => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::UpdateEndpoint>

Returns: a L<Paws::Comprehend::UpdateEndpointResponse> instance

Updates information about the specified endpoint. For information about
endpoints, see Managing endpoints
(https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).


=head2 UpdateFlywheel

=over

=item FlywheelArn => Str

=item [ActiveModelArn => Str]

=item [DataAccessRoleArn => Str]

=item [DataSecurityConfig => L<Paws::Comprehend::UpdateDataSecurityConfig>]


=back

Each argument is described in detail in: L<Paws::Comprehend::UpdateFlywheel>

Returns: a L<Paws::Comprehend::UpdateFlywheelResponse> instance

Update the configuration information for an existing flywheel.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDocumentClassificationJobs(sub { },[Filter => L<Paws::Comprehend::DocumentClassificationJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllDocumentClassificationJobs([Filter => L<Paws::Comprehend::DocumentClassificationJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DocumentClassificationJobPropertiesList, passing the object as the first parameter, and the string 'DocumentClassificationJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListDocumentClassificationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDocumentClassifiers(sub { },[Filter => L<Paws::Comprehend::DocumentClassifierFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllDocumentClassifiers([Filter => L<Paws::Comprehend::DocumentClassifierFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DocumentClassifierPropertiesList, passing the object as the first parameter, and the string 'DocumentClassifierPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListDocumentClassifiersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDominantLanguageDetectionJobs(sub { },[Filter => L<Paws::Comprehend::DominantLanguageDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllDominantLanguageDetectionJobs([Filter => L<Paws::Comprehend::DominantLanguageDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DominantLanguageDetectionJobPropertiesList, passing the object as the first parameter, and the string 'DominantLanguageDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListDominantLanguageDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEndpoints(sub { },[Filter => L<Paws::Comprehend::EndpointFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllEndpoints([Filter => L<Paws::Comprehend::EndpointFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EndpointPropertiesList, passing the object as the first parameter, and the string 'EndpointPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEntitiesDetectionJobs(sub { },[Filter => L<Paws::Comprehend::EntitiesDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllEntitiesDetectionJobs([Filter => L<Paws::Comprehend::EntitiesDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EntitiesDetectionJobPropertiesList, passing the object as the first parameter, and the string 'EntitiesDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListEntitiesDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEntityRecognizers(sub { },[Filter => L<Paws::Comprehend::EntityRecognizerFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllEntityRecognizers([Filter => L<Paws::Comprehend::EntityRecognizerFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EntityRecognizerPropertiesList, passing the object as the first parameter, and the string 'EntityRecognizerPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListEntityRecognizersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeyPhrasesDetectionJobs(sub { },[Filter => L<Paws::Comprehend::KeyPhrasesDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllKeyPhrasesDetectionJobs([Filter => L<Paws::Comprehend::KeyPhrasesDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - KeyPhrasesDetectionJobPropertiesList, passing the object as the first parameter, and the string 'KeyPhrasesDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListKeyPhrasesDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPiiEntitiesDetectionJobs(sub { },[Filter => L<Paws::Comprehend::PiiEntitiesDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllPiiEntitiesDetectionJobs([Filter => L<Paws::Comprehend::PiiEntitiesDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PiiEntitiesDetectionJobPropertiesList, passing the object as the first parameter, and the string 'PiiEntitiesDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListPiiEntitiesDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSentimentDetectionJobs(sub { },[Filter => L<Paws::Comprehend::SentimentDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllSentimentDetectionJobs([Filter => L<Paws::Comprehend::SentimentDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SentimentDetectionJobPropertiesList, passing the object as the first parameter, and the string 'SentimentDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListSentimentDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTopicsDetectionJobs(sub { },[Filter => L<Paws::Comprehend::TopicsDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllTopicsDetectionJobs([Filter => L<Paws::Comprehend::TopicsDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TopicsDetectionJobPropertiesList, passing the object as the first parameter, and the string 'TopicsDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListTopicsDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

