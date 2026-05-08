package Paws::Rekognition;
  use Moose;
  sub service { 'rekognition' }
  sub signing_name { 'rekognition' }
  sub version { '2016-06-27' }
  sub target_prefix { 'RekognitionService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::AssociateFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompareFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CompareFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyProjectVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CopyProjectVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CreateCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFaceLivenessSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CreateFaceLivenessSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProjectVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CreateProjectVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CreateStreamProcessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProjectPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteProjectPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProjectVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteProjectVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteStreamProcessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DescribeCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DescribeProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProjectVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DescribeProjectVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DescribeStreamProcessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectCustomLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectCustomLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectModerationLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectModerationLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectProtectiveEquipment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectProtectiveEquipment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DisassociateFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DistributeDatasetEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DistributeDatasetEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCelebrityInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetCelebrityInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCelebrityRecognition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetCelebrityRecognition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContentModeration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetContentModeration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFaceDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetFaceDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFaceLivenessSessionResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetFaceLivenessSessionResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFaceSearch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetFaceSearch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLabelDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetLabelDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMediaAnalysisJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetMediaAnalysisJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPersonTracking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetPersonTracking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegmentDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetSegmentDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTextDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetTextDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IndexFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::IndexFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListCollections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListDatasetEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListDatasetLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMediaAnalysisJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListMediaAnalysisJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjectPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListProjectPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamProcessors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListStreamProcessors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProjectPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::PutProjectPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RecognizeCelebrities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::RecognizeCelebrities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::SearchFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchFacesByImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::SearchFacesByImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::SearchUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchUsersByImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::SearchUsersByImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCelebrityRecognition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartCelebrityRecognition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartContentModeration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartContentModeration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFaceDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartFaceDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFaceSearch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartFaceSearch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLabelDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartLabelDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMediaAnalysisJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartMediaAnalysisJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPersonTracking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartPersonTracking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartProjectVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartProjectVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSegmentDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartSegmentDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartStreamProcessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTextDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartTextDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopProjectVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StopProjectVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StopStreamProcessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatasetEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::UpdateDatasetEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::UpdateStreamProcessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeProjects(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProjectDescriptions }, @{ $next_result->ProjectDescriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProjectDescriptions') foreach (@{ $result->ProjectDescriptions });
        $result = $self->DescribeProjects(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProjectDescriptions') foreach (@{ $result->ProjectDescriptions });
    }

    return undef
  }
  sub DescribeAllProjectVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeProjectVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeProjectVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProjectVersionDescriptions }, @{ $next_result->ProjectVersionDescriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProjectVersionDescriptions') foreach (@{ $result->ProjectVersionDescriptions });
        $result = $self->DescribeProjectVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProjectVersionDescriptions') foreach (@{ $result->ProjectVersionDescriptions });
    }

    return undef
  }
  sub ListAllCollections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCollections(@_, NextToken => $next_result->NextToken);
        push @{ $result->CollectionIds }, @{ $next_result->CollectionIds };
        push @{ $result->FaceModelVersions }, @{ $next_result->FaceModelVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CollectionIds') foreach (@{ $result->CollectionIds });
        $callback->($_ => 'FaceModelVersions') foreach (@{ $result->FaceModelVersions });
        $result = $self->ListCollections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CollectionIds') foreach (@{ $result->CollectionIds });
      $callback->($_ => 'FaceModelVersions') foreach (@{ $result->FaceModelVersions });
    }

    return undef
  }
  sub ListAllDatasetEntries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetEntries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasetEntries(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatasetEntries }, @{ $next_result->DatasetEntries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatasetEntries') foreach (@{ $result->DatasetEntries });
        $result = $self->ListDatasetEntries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatasetEntries') foreach (@{ $result->DatasetEntries });
    }

    return undef
  }
  sub ListAllDatasetLabels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetLabels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasetLabels(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatasetLabelDescriptions }, @{ $next_result->DatasetLabelDescriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatasetLabelDescriptions') foreach (@{ $result->DatasetLabelDescriptions });
        $result = $self->ListDatasetLabels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatasetLabelDescriptions') foreach (@{ $result->DatasetLabelDescriptions });
    }

    return undef
  }
  sub ListAllFaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Faces }, @{ $next_result->Faces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Faces') foreach (@{ $result->Faces });
        $result = $self->ListFaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Faces') foreach (@{ $result->Faces });
    }

    return undef
  }
  sub ListAllProjectPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjectPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProjectPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProjectPolicies }, @{ $next_result->ProjectPolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProjectPolicies') foreach (@{ $result->ProjectPolicies });
        $result = $self->ListProjectPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProjectPolicies') foreach (@{ $result->ProjectPolicies });
    }

    return undef
  }
  sub ListAllStreamProcessors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamProcessors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStreamProcessors(@_, NextToken => $next_result->NextToken);
        push @{ $result->StreamProcessors }, @{ $next_result->StreamProcessors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StreamProcessors') foreach (@{ $result->StreamProcessors });
        $result = $self->ListStreamProcessors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StreamProcessors') foreach (@{ $result->StreamProcessors });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AssociateFaces CompareFaces CopyProjectVersion CreateCollection CreateDataset CreateFaceLivenessSession CreateProject CreateProjectVersion CreateStreamProcessor CreateUser DeleteCollection DeleteDataset DeleteFaces DeleteProject DeleteProjectPolicy DeleteProjectVersion DeleteStreamProcessor DeleteUser DescribeCollection DescribeDataset DescribeProjects DescribeProjectVersions DescribeStreamProcessor DetectCustomLabels DetectFaces DetectLabels DetectModerationLabels DetectProtectiveEquipment DetectText DisassociateFaces DistributeDatasetEntries GetCelebrityInfo GetCelebrityRecognition GetContentModeration GetFaceDetection GetFaceLivenessSessionResults GetFaceSearch GetLabelDetection GetMediaAnalysisJob GetPersonTracking GetSegmentDetection GetTextDetection IndexFaces ListCollections ListDatasetEntries ListDatasetLabels ListFaces ListMediaAnalysisJobs ListProjectPolicies ListStreamProcessors ListTagsForResource ListUsers PutProjectPolicy RecognizeCelebrities SearchFaces SearchFacesByImage SearchUsers SearchUsersByImage StartCelebrityRecognition StartContentModeration StartFaceDetection StartFaceSearch StartLabelDetection StartMediaAnalysisJob StartPersonTracking StartProjectVersion StartSegmentDetection StartStreamProcessor StartTextDetection StopProjectVersion StopStreamProcessor TagResource UntagResource UpdateDatasetEntries UpdateStreamProcessor / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition - Perl Interface to AWS Amazon Rekognition

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Rekognition');
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

This is the API Reference for Amazon Rekognition Image
(https://docs.aws.amazon.com/rekognition/latest/dg/images.html), Amazon
Rekognition Custom Labels
(https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/what-is.html),
Amazon Rekognition Stored Video
(https://docs.aws.amazon.com/rekognition/latest/dg/video.html), Amazon
Rekognition Streaming Video
(https://docs.aws.amazon.com/rekognition/latest/dg/streaming-video.html).
It provides descriptions of actions, data types, common parameters, and
common errors.

B<Amazon Rekognition Image>

=over

=item *

AssociateFaces
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_AssociateFaces.html)

=item *

CompareFaces
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CompareFaces.html)

=item *

CreateCollection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateCollection.html)

=item *

CreateUser
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateUser.html)

=item *

DeleteCollection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteCollection.html)

=item *

DeleteFaces
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteFaces.html)

=item *

DeleteUser
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteUser.html)

=item *

DescribeCollection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeCollection.html)

=item *

DetectFaces
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectFaces.html)

=item *

DetectLabels
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectLabels.html)

=item *

DetectModerationLabels
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectModerationLabels.html)

=item *

DetectProtectiveEquipment
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectProtectiveEquipment.html)

=item *

DetectText
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectText.html)

=item *

DisassociateFaces
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DisassociateFaces.html)

=item *

GetCelebrityInfo
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetCelebrityInfo.html)

=item *

GetMediaAnalysisJob
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetMediaAnalysisJob.html)

=item *

IndexFaces
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_IndexFaces.html)

=item *

ListCollections
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListCollections.html)

=item *

ListMediaAnalysisJob
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListMediaAnalysisJob.html)

=item *

ListFaces
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListFaces.html)

=item *

ListUsers
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListFaces.html)

=item *

RecognizeCelebrities
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_RecognizeCelebrities.html)

=item *

SearchFaces
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_SearchFaces.html)

=item *

SearchFacesByImage
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_SearchFacesByImage.html)

=item *

SearchUsers
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_SearchUsers.html)

=item *

SearchUsersByImage
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_SearchUsersByImage.html)

=item *

StartMediaAnalysisJob
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartMediaAnalysisJob.html)

=back

B<Amazon Rekognition Custom Labels>

=over

=item *

CopyProjectVersion
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CopyProjectVersion.html)

=item *

CreateDataset
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateDataset.html)

=item *

CreateProject
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateProject.html)

=item *

CreateProjectVersion
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateProjectVersion.html)

=item *

DeleteDataset
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteDataset.html)

=item *

DeleteProject
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteProject.html)

=item *

DeleteProjectPolicy
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteProjectPolicy.html)

=item *

DeleteProjectVersion
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteProjectVersion.html)

=item *

DescribeDataset
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeDataset.html)

=item *

DescribeProjects
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeProjects.html)

=item *

DescribeProjectVersions
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeProjectVersions.html)

=item *

DetectCustomLabels
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectCustomLabels.html)

=item *

DistributeDatasetEntries
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DistributeDatasetEntries.html)

=item *

ListDatasetEntries
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListDatasetEntries.html)

=item *

ListDatasetLabels
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListDatasetLabels.html)

=item *

ListProjectPolicies
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListProjectPolicies.html)

=item *

PutProjectPolicy
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_PutProjectPolicy.html)

=item *

StartProjectVersion
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartProjectVersion.html)

=item *

StopProjectVersion
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StopProjectVersion.html)

=item *

UpdateDatasetEntries
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_UpdateDatasetEntries.html)

=back

B<Amazon Rekognition Video Stored Video>

=over

=item *

GetCelebrityRecognition
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetCelebrityRecognition.html)

=item *

GetContentModeration
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetContentModeration.html)

=item *

GetFaceDetection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetFaceDetection.html)

=item *

GetFaceSearch
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetFaceSearch.html)

=item *

GetLabelDetection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetLabelDetection.html)

=item *

GetPersonTracking
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetPersonTracking.html)

=item *

GetSegmentDetection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetSegmentDetection.html)

=item *

GetTextDetection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetTextDetection.html)

=item *

StartCelebrityRecognition
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartCelebrityRecognition.html)

=item *

StartContentModeration
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartContentModeration.html)

=item *

StartFaceDetection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartFaceDetection.html)

=item *

StartFaceSearch
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartFaceSearch.html)

=item *

StartLabelDetection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartLabelDetection.html)

=item *

StartPersonTracking
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartPersonTracking.html)

=item *

StartSegmentDetection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartSegmentDetection.html)

=item *

StartTextDetection
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartTextDetection.html)

=back

B<Amazon Rekognition Video Streaming Video>

=over

=item *

CreateStreamProcessor
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateStreamProcessor.html)

=item *

DeleteStreamProcessor
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteStreamProcessor.html)

=item *

DescribeStreamProcessor
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeStreamProcessor.html)

=item *

ListStreamProcessors
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListStreamProcessors.html)

=item *

StartStreamProcessor
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartStreamProcessor.html)

=item *

StopStreamProcessor
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StopStreamProcessor.html)

=item *

UpdateStreamProcessor
(https://docs.aws.amazon.com/rekognition/latest/APIReference/API_UpdateStreamProcessor.html)

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateFaces

=over

=item CollectionId => Str

=item FaceIds => ArrayRef[Str|Undef]

=item UserId => Str

=item [ClientRequestToken => Str]

=item [UserMatchThreshold => Num]


=back

Each argument is described in detail in: L<Paws::Rekognition::AssociateFaces>

Returns: a L<Paws::Rekognition::AssociateFacesResponse> instance

Associates one or more faces with an existing UserID. Takes an array of
C<FaceIds>. Each C<FaceId> that are present in the C<FaceIds> list is
associated with the provided UserID. The maximum number of total
C<FaceIds> per UserID is 100.

The C<UserMatchThreshold> parameter specifies the minimum user match
confidence required for the face to be associated with a UserID that
has at least one C<FaceID> already associated. This ensures that the
C<FaceIds> are associated with the right UserID. The value ranges from
0-100 and default value is 75.

If successful, an array of C<AssociatedFace> objects containing the
associated C<FaceIds> is returned. If a given face is already
associated with the given C<UserID>, it will be ignored and will not be
returned in the response. If a given face is already associated to a
different C<UserID>, isn't found in the collection, doesnE<rsquo>t meet
the C<UserMatchThreshold>, or there are already 100 faces associated
with the C<UserID>, it will be returned as part of an array of
C<UnsuccessfulFaceAssociations.>

The C<UserStatus> reflects the status of an operation which updates a
UserID representation with a list of given faces. The C<UserStatus> can
be:

=over

=item *

ACTIVE - All associations or disassociations of FaceID(s) for a UserID
are complete.

=item *

CREATED - A UserID has been created, but has no FaceID(s) associated
with it.

=item *

UPDATING - A UserID is being updated and there are current associations
or disassociations of FaceID(s) taking place.

=back



=head2 CompareFaces

=over

=item SourceImage => L<Paws::Rekognition::Image>

=item TargetImage => L<Paws::Rekognition::Image>

=item [QualityFilter => Str]

=item [SimilarityThreshold => Num]


=back

Each argument is described in detail in: L<Paws::Rekognition::CompareFaces>

Returns: a L<Paws::Rekognition::CompareFacesResponse> instance

Compares a face in the I<source> input image with each of the 100
largest faces detected in the I<target> input image.

If the source image contains multiple faces, the service detects the
largest face and compares it with each face detected in the target
image.

CompareFaces uses machine learning algorithms, which are probabilistic.
A false negative is an incorrect prediction that a face in the target
image has a low similarity confidence score when compared to the face
in the source image. To reduce the probability of false negatives, we
recommend that you compare the target image against multiple source
images. If you plan to use C<CompareFaces> to make a decision that
impacts an individual's rights, privacy, or access to services, we
recommend that you pass the result to a human for review and further
validation before taking action.

You pass the input and target images either as base64-encoded image
bytes or as references to images in an Amazon S3 bucket. If you use the
AWS CLI to call Amazon Rekognition operations, passing image bytes
isn't supported. The image must be formatted as a PNG or JPEG file.

In response, the operation returns an array of face matches ordered by
similarity score in descending order. For each face match, the response
provides a bounding box of the face, facial landmarks, pose details
(pitch, roll, and yaw), quality (brightness and sharpness), and
confidence value (indicating the level of confidence that the bounding
box contains a face). The response also provides a similarity score,
which indicates how closely the faces match.

By default, only faces with a similarity score of greater than or equal
to 80% are returned in the response. You can change this value by
specifying the C<SimilarityThreshold> parameter.

C<CompareFaces> also returns an array of faces that don't match the
source image. For each face, it returns a bounding box, confidence
value, landmarks, pose details, and quality. The response also returns
information about the face in the source image, including the bounding
box of the face and confidence value.

The C<QualityFilter> input parameter allows you to filter out detected
faces that donE<rsquo>t meet a required quality bar. The quality bar is
based on a variety of common use cases. Use C<QualityFilter> to set the
quality bar by specifying C<LOW>, C<MEDIUM>, or C<HIGH>. If you do not
want to filter detected faces, specify C<NONE>. The default value is
C<NONE>.

If the image doesn't contain Exif metadata, C<CompareFaces> returns
orientation information for the source and target images. Use these
values to display the images with the correct image orientation.

If no faces are detected in the source or target images,
C<CompareFaces> returns an C<InvalidParameterException> error.

This is a stateless API operation. That is, data returned by this
operation doesn't persist.

For an example, see Comparing Faces in Images in the Amazon Rekognition
Developer Guide.

This operation requires permissions to perform the
C<rekognition:CompareFaces> action.


=head2 CopyProjectVersion

=over

=item DestinationProjectArn => Str

=item OutputConfig => L<Paws::Rekognition::OutputConfig>

=item SourceProjectArn => Str

=item SourceProjectVersionArn => Str

=item VersionName => Str

=item [KmsKeyId => Str]

=item [Tags => L<Paws::Rekognition::TagMap>]


=back

Each argument is described in detail in: L<Paws::Rekognition::CopyProjectVersion>

Returns: a L<Paws::Rekognition::CopyProjectVersionResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Copies a version of an Amazon Rekognition Custom Labels model from a
source project to a destination project. The source and destination
projects can be in different AWS accounts but must be in the same AWS
Region. You can't copy a model to another AWS service.

To copy a model version to a different AWS account, you need to create
a resource-based policy known as a I<project policy>. You attach the
project policy to the source project by calling PutProjectPolicy. The
project policy gives permission to copy the model version from a
trusting AWS account to a trusted account.

For more information creating and attaching a project policy, see
Attaching a project policy (SDK) in the I<Amazon Rekognition Custom
Labels Developer Guide>.

If you are copying a model version to a project in the same AWS
account, you don't need to create a project policy.

Copying project versions is supported only for Custom Labels models.

To copy a model, the destination project, source project, and source
model version must already exist.

Copying a model version takes a while to complete. To get the current
status, call DescribeProjectVersions and check the value of C<Status>
in the ProjectVersionDescription object. The copy operation has
finished when the value of C<Status> is C<COPYING_COMPLETED>.

This operation requires permissions to perform the
C<rekognition:CopyProjectVersion> action.


=head2 CreateCollection

=over

=item CollectionId => Str

=item [Tags => L<Paws::Rekognition::TagMap>]


=back

Each argument is described in detail in: L<Paws::Rekognition::CreateCollection>

Returns: a L<Paws::Rekognition::CreateCollectionResponse> instance

Creates a collection in an AWS Region. You can add faces to the
collection using the IndexFaces operation.

For example, you might create collections, one for each of your
application users. A user can then index faces using the C<IndexFaces>
operation and persist results in a specific collection. Then, a user
can search the collection for faces in the user-specific container.

When you create a collection, it is associated with the latest version
of the face model version.

Collection names are case-sensitive.

This operation requires permissions to perform the
C<rekognition:CreateCollection> action. If you want to tag your
collection, you also require permission to perform the
C<rekognition:TagResource> operation.


=head2 CreateDataset

=over

=item DatasetType => Str

=item ProjectArn => Str

=item [DatasetSource => L<Paws::Rekognition::DatasetSource>]

=item [Tags => L<Paws::Rekognition::TagMap>]


=back

Each argument is described in detail in: L<Paws::Rekognition::CreateDataset>

Returns: a L<Paws::Rekognition::CreateDatasetResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Creates a new Amazon Rekognition Custom Labels dataset. You can create
a dataset by using an Amazon Sagemaker format manifest file or by
copying an existing Amazon Rekognition Custom Labels dataset.

To create a training dataset for a project, specify C<TRAIN> for the
value of C<DatasetType>. To create the test dataset for a project,
specify C<TEST> for the value of C<DatasetType>.

The response from C<CreateDataset> is the Amazon Resource Name (ARN)
for the dataset. Creating a dataset takes a while to complete. Use
DescribeDataset to check the current status. The dataset created
successfully if the value of C<Status> is C<CREATE_COMPLETE>.

To check if any non-terminal errors occurred, call ListDatasetEntries
and check for the presence of C<errors> lists in the JSON Lines.

Dataset creation fails if a terminal error occurs (C<Status> =
C<CREATE_FAILED>). Currently, you can't access the terminal error
information.

For more information, see Creating dataset in the I<Amazon Rekognition
Custom Labels Developer Guide>.

This operation requires permissions to perform the
C<rekognition:CreateDataset> action. If you want to copy an existing
dataset, you also require permission to perform the
C<rekognition:ListDatasetEntries> action.


=head2 CreateFaceLivenessSession

=over

=item [ClientRequestToken => Str]

=item [KmsKeyId => Str]

=item [Settings => L<Paws::Rekognition::CreateFaceLivenessSessionRequestSettings>]


=back

Each argument is described in detail in: L<Paws::Rekognition::CreateFaceLivenessSession>

Returns: a L<Paws::Rekognition::CreateFaceLivenessSessionResponse> instance

This API operation initiates a Face Liveness session. It returns a
C<SessionId>, which you can use to start streaming Face Liveness video
and get the results for a Face Liveness session.

You can use the C<OutputConfig> option in the Settings parameter to
provide an Amazon S3 bucket location. The Amazon S3 bucket stores
reference images and audit images. If no Amazon S3 bucket is defined,
raw bytes are sent instead.

You can use C<AuditImagesLimit> to limit the number of audit images
returned when C<GetFaceLivenessSessionResults> is called. This number
is between 0 and 4. By default, it is set to 0. The limit is best
effort and based on the duration of the selfie-video.


=head2 CreateProject

=over

=item ProjectName => Str

=item [AutoUpdate => Str]

=item [Feature => Str]

=item [Tags => L<Paws::Rekognition::TagMap>]


=back

Each argument is described in detail in: L<Paws::Rekognition::CreateProject>

Returns: a L<Paws::Rekognition::CreateProjectResponse> instance

Creates a new Amazon Rekognition project. A project is a group of
resources (datasets, model versions) that you use to create and manage
a Amazon Rekognition Custom Labels Model or custom adapter. You can
specify a feature to create the project with, if no feature is
specified then Custom Labels is used by default. For adapters, you can
also choose whether or not to have the project auto update by using the
AutoUpdate argument. This operation requires permissions to perform the
C<rekognition:CreateProject> action.


=head2 CreateProjectVersion

=over

=item OutputConfig => L<Paws::Rekognition::OutputConfig>

=item ProjectArn => Str

=item VersionName => Str

=item [FeatureConfig => L<Paws::Rekognition::CustomizationFeatureConfig>]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::Rekognition::TagMap>]

=item [TestingData => L<Paws::Rekognition::TestingData>]

=item [TrainingData => L<Paws::Rekognition::TrainingData>]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::CreateProjectVersion>

Returns: a L<Paws::Rekognition::CreateProjectVersionResponse> instance

Creates a new version of Amazon Rekognition project (like a Custom
Labels model or a custom adapter) and begins training. Models and
adapters are managed as part of a Rekognition project. The response
from C<CreateProjectVersion> is an Amazon Resource Name (ARN) for the
project version.

The FeatureConfig operation argument allows you to configure specific
model or adapter settings. You can provide a description to the project
version by using the VersionDescription argment. Training can take a
while to complete. You can get the current status by calling
DescribeProjectVersions. Training completed successfully if the value
of the C<Status> field is C<TRAINING_COMPLETED>. Once training has
successfully completed, call DescribeProjectVersions to get the
training results and evaluate the model.

This operation requires permissions to perform the
C<rekognition:CreateProjectVersion> action.

I<The following applies only to projects with Amazon Rekognition Custom
Labels as the chosen feature:>

You can train a model in a project that doesn't have associated
datasets by specifying manifest files in the C<TrainingData> and
C<TestingData> fields.

If you open the console after training a model with manifest files,
Amazon Rekognition Custom Labels creates the datasets for you using the
most recent manifest files. You can no longer train a model version for
the project by specifying manifest files.

Instead of training with a project without associated datasets, we
recommend that you use the manifest files to create training and test
datasets for the project.


=head2 CreateStreamProcessor

=over

=item Input => L<Paws::Rekognition::StreamProcessorInput>

=item Name => Str

=item Output => L<Paws::Rekognition::StreamProcessorOutput>

=item RoleArn => Str

=item Settings => L<Paws::Rekognition::StreamProcessorSettings>

=item [DataSharingPreference => L<Paws::Rekognition::StreamProcessorDataSharingPreference>]

=item [KmsKeyId => Str]

=item [NotificationChannel => L<Paws::Rekognition::StreamProcessorNotificationChannel>]

=item [RegionsOfInterest => ArrayRef[L<Paws::Rekognition::RegionOfInterest>]]

=item [Tags => L<Paws::Rekognition::TagMap>]


=back

Each argument is described in detail in: L<Paws::Rekognition::CreateStreamProcessor>

Returns: a L<Paws::Rekognition::CreateStreamProcessorResponse> instance

Creates an Amazon Rekognition stream processor that you can use to
detect and recognize faces or to detect labels in a streaming video.

Amazon Rekognition Video is a consumer of live video from Amazon
Kinesis Video Streams. There are two different settings for stream
processors in Amazon Rekognition: detecting faces and detecting labels.

=over

=item *

If you are creating a stream processor for detecting faces, you provide
as input a Kinesis video stream (C<Input>) and a Kinesis data stream
(C<Output>) stream for receiving the output. You must use the
C<FaceSearch> option in C<Settings>, specifying the collection that
contains the faces you want to recognize. After you have finished
analyzing a streaming video, use StopStreamProcessor to stop
processing.

=item *

If you are creating a stream processor to detect labels, you provide as
input a Kinesis video stream (C<Input>), Amazon S3 bucket information
(C<Output>), and an Amazon SNS topic ARN (C<NotificationChannel>). You
can also provide a KMS key ID to encrypt the data sent to your Amazon
S3 bucket. You specify what you want to detect by using the
C<ConnectedHome> option in settings, and selecting one of the
following: C<PERSON>, C<PET>, C<PACKAGE>, C<ALL> You can also specify
where in the frame you want Amazon Rekognition to monitor with
C<RegionsOfInterest>. When you run the StartStreamProcessor operation
on a label detection stream processor, you input start and stop
information to determine the length of the processing time.

=back

Use C<Name> to assign an identifier for the stream processor. You use
C<Name> to manage the stream processor. For example, you can start
processing the source video by calling StartStreamProcessor with the
C<Name> field.

This operation requires permissions to perform the
C<rekognition:CreateStreamProcessor> action. If you want to tag your
stream processor, you also require permission to perform the
C<rekognition:TagResource> operation.


=head2 CreateUser

=over

=item CollectionId => Str

=item UserId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::CreateUser>

Returns: a L<Paws::Rekognition::CreateUserResponse> instance

Creates a new User within a collection specified by C<CollectionId>.
Takes C<UserId> as a parameter, which is a user provided ID which
should be unique within the collection. The provided C<UserId> will
alias the system generated UUID to make the C<UserId> more user
friendly.

Uses a C<ClientToken>, an idempotency token that ensures a call to
C<CreateUser> completes only once. If the value is not supplied, the
AWS SDK generates an idempotency token for the requests. This prevents
retries after a network error results from making multiple
C<CreateUser> calls.


=head2 DeleteCollection

=over

=item CollectionId => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteCollection>

Returns: a L<Paws::Rekognition::DeleteCollectionResponse> instance

Deletes the specified collection. Note that this operation removes all
faces in the collection. For an example, see Deleting a collection
(https://docs.aws.amazon.com/rekognition/latest/dg/delete-collection-procedure.html).

This operation requires permissions to perform the
C<rekognition:DeleteCollection> action.


=head2 DeleteDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteDataset>

Returns: a L<Paws::Rekognition::DeleteDatasetResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Deletes an existing Amazon Rekognition Custom Labels dataset. Deleting
a dataset might take while. Use DescribeDataset to check the current
status. The dataset is still deleting if the value of C<Status> is
C<DELETE_IN_PROGRESS>. If you try to access the dataset after it is
deleted, you get a C<ResourceNotFoundException> exception.

You can't delete a dataset while it is creating (C<Status> =
C<CREATE_IN_PROGRESS>) or if the dataset is updating (C<Status> =
C<UPDATE_IN_PROGRESS>).

This operation requires permissions to perform the
C<rekognition:DeleteDataset> action.


=head2 DeleteFaces

=over

=item CollectionId => Str

=item FaceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteFaces>

Returns: a L<Paws::Rekognition::DeleteFacesResponse> instance

Deletes faces from a collection. You specify a collection ID and an
array of face IDs to remove from the collection.

This operation requires permissions to perform the
C<rekognition:DeleteFaces> action.


=head2 DeleteProject

=over

=item ProjectArn => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteProject>

Returns: a L<Paws::Rekognition::DeleteProjectResponse> instance

Deletes a Amazon Rekognition project. To delete a project you must
first delete all models or adapters associated with the project. To
delete a model or adapter, see DeleteProjectVersion.

C<DeleteProject> is an asynchronous operation. To check if the project
is deleted, call DescribeProjects. The project is deleted when the
project no longer appears in the response. Be aware that deleting a
given project will also delete any C<ProjectPolicies> associated with
that project.

This operation requires permissions to perform the
C<rekognition:DeleteProject> action.


=head2 DeleteProjectPolicy

=over

=item PolicyName => Str

=item ProjectArn => Str

=item [PolicyRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteProjectPolicy>

Returns: a L<Paws::Rekognition::DeleteProjectPolicyResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Deletes an existing project policy.

To get a list of project policies attached to a project, call
ListProjectPolicies. To attach a project policy to a project, call
PutProjectPolicy.

This operation requires permissions to perform the
C<rekognition:DeleteProjectPolicy> action.


=head2 DeleteProjectVersion

=over

=item ProjectVersionArn => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteProjectVersion>

Returns: a L<Paws::Rekognition::DeleteProjectVersionResponse> instance

Deletes a Rekognition project model or project version, like a Amazon
Rekognition Custom Labels model or a custom adapter.

You can't delete a project version if it is running or if it is
training. To check the status of a project version, use the Status
field returned from DescribeProjectVersions. To stop a project version
call StopProjectVersion. If the project version is training, wait until
it finishes.

This operation requires permissions to perform the
C<rekognition:DeleteProjectVersion> action.


=head2 DeleteStreamProcessor

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteStreamProcessor>

Returns: a L<Paws::Rekognition::DeleteStreamProcessorResponse> instance

Deletes the stream processor identified by C<Name>. You assign the
value for C<Name> when you create the stream processor with
CreateStreamProcessor. You might not be able to use the same name for a
stream processor for a few seconds after calling
C<DeleteStreamProcessor>.


=head2 DeleteUser

=over

=item CollectionId => Str

=item UserId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteUser>

Returns: a L<Paws::Rekognition::DeleteUserResponse> instance

Deletes the specified UserID within the collection. Faces that are
associated with the UserID are disassociated from the UserID before
deleting the specified UserID. If the specified C<Collection> or
C<UserID> is already deleted or not found, a
C<ResourceNotFoundException> will be thrown. If the action is
successful with a 200 response, an empty HTTP body is returned.


=head2 DescribeCollection

=over

=item CollectionId => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DescribeCollection>

Returns: a L<Paws::Rekognition::DescribeCollectionResponse> instance

Describes the specified collection. You can use C<DescribeCollection>
to get information, such as the number of faces indexed into a
collection and the version of the model used by the collection for face
detection.

For more information, see Describing a Collection in the Amazon
Rekognition Developer Guide.


=head2 DescribeDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DescribeDataset>

Returns: a L<Paws::Rekognition::DescribeDatasetResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Describes an Amazon Rekognition Custom Labels dataset. You can get
information such as the current status of a dataset and statistics
about the images and labels in a dataset.

This operation requires permissions to perform the
C<rekognition:DescribeDataset> action.


=head2 DescribeProjects

=over

=item [Features => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProjectNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Rekognition::DescribeProjects>

Returns: a L<Paws::Rekognition::DescribeProjectsResponse> instance

Gets information about your Rekognition projects.

This operation requires permissions to perform the
C<rekognition:DescribeProjects> action.


=head2 DescribeProjectVersions

=over

=item ProjectArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VersionNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Rekognition::DescribeProjectVersions>

Returns: a L<Paws::Rekognition::DescribeProjectVersionsResponse> instance

Lists and describes the versions of an Amazon Rekognition project. You
can specify up to 10 model or adapter versions in
C<ProjectVersionArns>. If you don't specify a value, descriptions for
all model/adapter versions in the project are returned.

This operation requires permissions to perform the
C<rekognition:DescribeProjectVersions> action.


=head2 DescribeStreamProcessor

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DescribeStreamProcessor>

Returns: a L<Paws::Rekognition::DescribeStreamProcessorResponse> instance

Provides information about a stream processor created by
CreateStreamProcessor. You can get information about the input and
output streams, the input parameters for the face recognition being
performed, and the current status of the stream processor.


=head2 DetectCustomLabels

=over

=item Image => L<Paws::Rekognition::Image>

=item ProjectVersionArn => Str

=item [MaxResults => Int]

=item [MinConfidence => Num]


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectCustomLabels>

Returns: a L<Paws::Rekognition::DetectCustomLabelsResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Detects custom labels in a supplied image by using an Amazon
Rekognition Custom Labels model.

You specify which version of a model version to use by using the
C<ProjectVersionArn> input parameter.

You pass the input image as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

For each object that the model version detects on an image, the API
returns a (C<CustomLabel>) object in an array (C<CustomLabels>). Each
C<CustomLabel> object provides the label name (C<Name>), the level of
confidence that the image contains the object (C<Confidence>), and
object location information, if it exists, for the label on the image
(C<Geometry>). Note that for the C<DetectCustomLabelsLabels> operation,
C<Polygons> are not returned in the C<Geometry> section of the
response.

To filter labels that are returned, specify a value for
C<MinConfidence>. C<DetectCustomLabelsLabels> only returns labels with
a confidence that's higher than the specified value. The value of
C<MinConfidence> maps to the assumed threshold values created during
training. For more information, see I<Assumed threshold> in the Amazon
Rekognition Custom Labels Developer Guide. Amazon Rekognition Custom
Labels metrics expresses an assumed threshold as a floating point value
between 0-1. The range of C<MinConfidence> normalizes the threshold
value to a percentage value (0-100). Confidence responses from
C<DetectCustomLabels> are also returned as a percentage. You can use
C<MinConfidence> to change the precision and recall or your model. For
more information, see I<Analyzing an image> in the Amazon Rekognition
Custom Labels Developer Guide.

If you don't specify a value for C<MinConfidence>,
C<DetectCustomLabels> returns labels based on the assumed threshold of
each label.

This is a stateless API operation. That is, the operation does not
persist any data.

This operation requires permissions to perform the
C<rekognition:DetectCustomLabels> action.

For more information, see I<Analyzing an image> in the Amazon
Rekognition Custom Labels Developer Guide.


=head2 DetectFaces

=over

=item Image => L<Paws::Rekognition::Image>

=item [Attributes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectFaces>

Returns: a L<Paws::Rekognition::DetectFacesResponse> instance

Detects faces within an image that is provided as input.

C<DetectFaces> detects the 100 largest faces in the image. For each
face detected, the operation returns face details. These details
include a bounding box of the face, a confidence value (that the
bounding box contains a face), and a fixed set of attributes such as
facial landmarks (for example, coordinates of eye and mouth), pose,
presence of facial occlusion, and so on.

The face-detection algorithm is most effective on frontal faces. For
non-frontal or obscured faces, the algorithm might not detect the faces
or might detect faces with lower confidence.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

This is a stateless API operation. That is, the operation does not
persist any data.

This operation requires permissions to perform the
C<rekognition:DetectFaces> action.


=head2 DetectLabels

=over

=item Image => L<Paws::Rekognition::Image>

=item [Features => ArrayRef[Str|Undef]]

=item [MaxLabels => Int]

=item [MinConfidence => Num]

=item [Settings => L<Paws::Rekognition::DetectLabelsSettings>]


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectLabels>

Returns: a L<Paws::Rekognition::DetectLabelsResponse> instance

Detects instances of real-world entities within an image (JPEG or PNG)
provided as input. This includes objects like flower, tree, and table;
events like wedding, graduation, and birthday party; and concepts like
landscape, evening, and nature.

For an example, see Analyzing images stored in an Amazon S3 bucket in
the Amazon Rekognition Developer Guide.

You pass the input image as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

B<Optional Parameters>

You can specify one or both of the C<GENERAL_LABELS> and
C<IMAGE_PROPERTIES> feature types when calling the DetectLabels API.
Including C<GENERAL_LABELS> will ensure the response includes the
labels detected in the input image, while including C<IMAGE_PROPERTIES
>will ensure the response includes information about the image quality
and color.

When using C<GENERAL_LABELS> and/or C<IMAGE_PROPERTIES> you can provide
filtering criteria to the Settings parameter. You can filter with sets
of individual labels or with label categories. You can specify
inclusive filters, exclusive filters, or a combination of inclusive and
exclusive filters. For more information on filtering see Detecting
Labels in an Image
(https://docs.aws.amazon.com/rekognition/latest/dg/labels-detect-labels-image.html).

When getting labels, you can specify C<MinConfidence> to control the
confidence threshold for the labels returned. The default is 55%. You
can also add the C<MaxLabels> parameter to limit the number of labels
returned. The default and upper limit is 1000 labels. These arguments
are only valid when supplying GENERAL_LABELS as a feature type.

B<Response Elements>

For each object, scene, and concept the API returns one or more labels.
The API returns the following types of information about labels:

=over

=item *

Name - The name of the detected label.

=item *

Confidence - The level of confidence in the label assigned to a
detected object.

=item *

Parents - The ancestor labels for a detected label. DetectLabels
returns a hierarchical taxonomy of detected labels. For example, a
detected car might be assigned the label car. The label car has two
parent labels: Vehicle (its parent) and Transportation (its
grandparent). The response includes the all ancestors for a label,
where every ancestor is a unique label. In the previous example, Car,
Vehicle, and Transportation are returned as unique labels in the
response.

=item *

Aliases - Possible Aliases for the label.

=item *

Categories - The label categories that the detected label belongs to.

=item *

BoundingBox E<mdash> Bounding boxes are described for all instances of
detected common object labels, returned in an array of Instance
objects. An Instance object contains a BoundingBox object, describing
the location of the label on the input image. It also includes the
confidence for the accuracy of the detected bounding box.

=back

The API returns the following information regarding the image, as part
of the ImageProperties structure:

=over

=item *

Quality - Information about the Sharpness, Brightness, and Contrast of
the input image, scored between 0 to 100. Image quality is returned for
the entire image, as well as the background and the foreground.

=item *

Dominant Color - An array of the dominant colors in the image.

=item *

Foreground - Information about the sharpness, brightness, and dominant
colors of the input imageE<rsquo>s foreground.

=item *

Background - Information about the sharpness, brightness, and dominant
colors of the input imageE<rsquo>s background.

=back

The list of returned labels will include at least one label for every
detected object, along with information about that label. In the
following example, suppose the input image has a lighthouse, the sea,
and a rock. The response includes all three labels, one for each
object, as well as the confidence in the label:

C<{Name: lighthouse, Confidence: 98.4629}>

C<{Name: rock,Confidence: 79.2097}>

C<{Name: sea,Confidence: 75.061}>

The list of labels can include multiple labels for the same object. For
example, if the input image shows a flower (for example, a tulip), the
operation might return the following three labels.

C<{Name: flower,Confidence: 99.0562}>

C<{Name: plant,Confidence: 99.0562}>

C<{Name: tulip,Confidence: 99.0562}>

In this example, the detection algorithm more precisely identifies the
flower as a tulip.

If the object detected is a person, the operation doesn't provide the
same facial details that the DetectFaces operation provides.

This is a stateless API operation that doesn't return any data.

This operation requires permissions to perform the
C<rekognition:DetectLabels> action.


=head2 DetectModerationLabels

=over

=item Image => L<Paws::Rekognition::Image>

=item [HumanLoopConfig => L<Paws::Rekognition::HumanLoopConfig>]

=item [MinConfidence => Num]

=item [ProjectVersion => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectModerationLabels>

Returns: a L<Paws::Rekognition::DetectModerationLabelsResponse> instance

Detects unsafe content in a specified JPEG or PNG format image. Use
C<DetectModerationLabels> to moderate images depending on your
requirements. For example, you might want to filter images that contain
nudity, but not images containing suggestive content.

To filter images, use the labels returned by C<DetectModerationLabels>
to determine which types of content are appropriate.

For information about moderation labels, see Detecting Unsafe Content
in the Amazon Rekognition Developer Guide.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

You can specify an adapter to use when retrieving label predictions by
providing a C<ProjectVersionArn> to the C<ProjectVersion> argument.


=head2 DetectProtectiveEquipment

=over

=item Image => L<Paws::Rekognition::Image>

=item [SummarizationAttributes => L<Paws::Rekognition::ProtectiveEquipmentSummarizationAttributes>]


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectProtectiveEquipment>

Returns: a L<Paws::Rekognition::DetectProtectiveEquipmentResponse> instance

Detects Personal Protective Equipment (PPE) worn by people detected in
an image. Amazon Rekognition can detect the following types of PPE.

=over

=item *

Face cover

=item *

Hand cover

=item *

Head cover

=back

You pass the input image as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. The image must be either
a PNG or JPG formatted file.

C<DetectProtectiveEquipment> detects PPE worn by up to 15 persons
detected in an image.

For each person detected in the image the API returns an array of body
parts (face, head, left-hand, right-hand). For each body part, an array
of detected items of PPE is returned, including an indicator of whether
or not the PPE covers the body part. The API returns the confidence it
has in each detection (person, PPE, body part and body part coverage).
It also returns a bounding box (BoundingBox) for each detected person
and each detected item of PPE.

You can optionally request a summary of detected PPE items with the
C<SummarizationAttributes> input parameter. The summary provides the
following information.

=over

=item *

The persons detected as wearing all of the types of PPE that you
specify.

=item *

The persons detected as not wearing all of the types PPE that you
specify.

=item *

The persons detected where PPE adornment could not be determined.

=back

This is a stateless API operation. That is, the operation does not
persist any data.

This operation requires permissions to perform the
C<rekognition:DetectProtectiveEquipment> action.


=head2 DetectText

=over

=item Image => L<Paws::Rekognition::Image>

=item [Filters => L<Paws::Rekognition::DetectTextFilters>]


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectText>

Returns: a L<Paws::Rekognition::DetectTextResponse> instance

Detects text in the input image and converts it into machine-readable
text.

Pass the input image as base64-encoded image bytes or as a reference to
an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon
Rekognition operations, you must pass it as a reference to an image in
an Amazon S3 bucket. For the AWS CLI, passing image bytes is not
supported. The image must be either a .png or .jpeg formatted file.

The C<DetectText> operation returns text in an array of TextDetection
elements, C<TextDetections>. Each C<TextDetection> element provides
information about a single word or line of text that was detected in
the image.

A word is one or more script characters that are not separated by
spaces. C<DetectText> can detect up to 100 words in an image.

A line is a string of equally spaced words. A line isn't necessarily a
complete sentence. For example, a driver's license number is detected
as a line. A line ends when there is no aligned text after it. Also, a
line ends when there is a large gap between words, relative to the
length of the words. This means, depending on the gap between words,
Amazon Rekognition may detect multiple lines in text aligned in the
same direction. Periods don't represent the end of a line. If a
sentence spans multiple lines, the C<DetectText> operation returns
multiple lines.

To determine whether a C<TextDetection> element is a line of text or a
word, use the C<TextDetection> object C<Type> field.

To be detected, text must be within +/- 90 degrees orientation of the
horizontal axis.

For more information, see Detecting text in the Amazon Rekognition
Developer Guide.


=head2 DisassociateFaces

=over

=item CollectionId => Str

=item FaceIds => ArrayRef[Str|Undef]

=item UserId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::DisassociateFaces>

Returns: a L<Paws::Rekognition::DisassociateFacesResponse> instance

Removes the association between a C<Face> supplied in an array of
C<FaceIds> and the User. If the User is not present already, then a
C<ResourceNotFound> exception is thrown. If successful, an array of
faces that are disassociated from the User is returned. If a given face
is already disassociated from the given UserID, it will be ignored and
not be returned in the response. If a given face is already associated
with a different User or not found in the collection it will be
returned as part of C<UnsuccessfulDisassociations>. You can remove 1 -
100 face IDs from a user at one time.


=head2 DistributeDatasetEntries

=over

=item Datasets => ArrayRef[L<Paws::Rekognition::DistributeDataset>]


=back

Each argument is described in detail in: L<Paws::Rekognition::DistributeDatasetEntries>

Returns: a L<Paws::Rekognition::DistributeDatasetEntriesResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Distributes the entries (images) in a training dataset across the
training dataset and the test dataset for a project.
C<DistributeDatasetEntries> moves 20% of the training dataset images to
the test dataset. An entry is a JSON Line that describes an image.

You supply the Amazon Resource Names (ARN) of a project's training
dataset and test dataset. The training dataset must contain the images
that you want to split. The test dataset must be empty. The datasets
must belong to the same project. To create training and test datasets
for a project, call CreateDataset.

Distributing a dataset takes a while to complete. To check the status
call C<DescribeDataset>. The operation is complete when the C<Status>
field for the training dataset and the test dataset is
C<UPDATE_COMPLETE>. If the dataset split fails, the value of C<Status>
is C<UPDATE_FAILED>.

This operation requires permissions to perform the
C<rekognition:DistributeDatasetEntries> action.


=head2 GetCelebrityInfo

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::GetCelebrityInfo>

Returns: a L<Paws::Rekognition::GetCelebrityInfoResponse> instance

Gets the name and additional information about a celebrity based on
their Amazon Rekognition ID. The additional information is returned as
an array of URLs. If there is no additional information about the
celebrity, this list is empty.

For more information, see Getting information about a celebrity in the
Amazon Rekognition Developer Guide.

This operation requires permissions to perform the
C<rekognition:GetCelebrityInfo> action.


=head2 GetCelebrityRecognition

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetCelebrityRecognition>

Returns: a L<Paws::Rekognition::GetCelebrityRecognitionResponse> instance

Gets the celebrity recognition results for a Amazon Rekognition Video
analysis started by StartCelebrityRecognition.

Celebrity recognition in a video is an asynchronous operation. Analysis
is started by a call to StartCelebrityRecognition which returns a job
identifier (C<JobId>).

When the celebrity recognition operation finishes, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic registered in the initial call to
C<StartCelebrityRecognition>. To get the results of the celebrity
recognition analysis, first check that the status value published to
the Amazon SNS topic is C<SUCCEEDED>. If so, call
C<GetCelebrityDetection> and pass the job identifier (C<JobId>) from
the initial call to C<StartCelebrityDetection>.

For more information, see Working With Stored Videos in the Amazon
Rekognition Developer Guide.

C<GetCelebrityRecognition> returns detected celebrities and the time(s)
they are detected in an array (C<Celebrities>) of CelebrityRecognition
objects. Each C<CelebrityRecognition> contains information about the
celebrity in a CelebrityDetail object and the time, C<Timestamp>, the
celebrity was detected. This CelebrityDetail object stores information
about the detected celebrity's face attributes, a face bounding box,
known gender, the celebrity's name, and a confidence estimate.

C<GetCelebrityRecognition> only returns the default facial attributes
(C<BoundingBox>, C<Confidence>, C<Landmarks>, C<Pose>, and C<Quality>).
The C<BoundingBox> field only applies to the detected face instance.
The other facial attributes listed in the C<Face> object of the
following response syntax are not returned. For more information, see
FaceDetail in the Amazon Rekognition Developer Guide.

By default, the C<Celebrities> array is sorted by time (milliseconds
from the start of the video). You can also sort the array by celebrity
by specifying the value C<ID> in the C<SortBy> input parameter.

The C<CelebrityDetail> object includes the celebrity identifer and
additional information urls. If you don't store the additional
information urls, you can get them later by calling GetCelebrityInfo
with the celebrity identifer.

No information is returned for faces not recognized as celebrities.

Use MaxResults parameter to limit the number of labels returned. If
there are more results than specified in C<MaxResults>, the value of
C<NextToken> in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
C<GetCelebrityDetection> and populate the C<NextToken> request
parameter with the token value returned from the previous call to
C<GetCelebrityRecognition>.


=head2 GetContentModeration

=over

=item JobId => Str

=item [AggregateBy => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetContentModeration>

Returns: a L<Paws::Rekognition::GetContentModerationResponse> instance

Gets the inappropriate, unwanted, or offensive content analysis results
for a Amazon Rekognition Video analysis started by
StartContentModeration. For a list of moderation labels in Amazon
Rekognition, see Using the image and video moderation APIs
(https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api).

Amazon Rekognition Video inappropriate or offensive content detection
in a stored video is an asynchronous operation. You start analysis by
calling StartContentModeration which returns a job identifier
(C<JobId>). When analysis finishes, Amazon Rekognition Video publishes
a completion status to the Amazon Simple Notification Service topic
registered in the initial call to C<StartContentModeration>. To get the
results of the content analysis, first check that the status value
published to the Amazon SNS topic is C<SUCCEEDED>. If so, call
C<GetContentModeration> and pass the job identifier (C<JobId>) from the
initial call to C<StartContentModeration>.

For more information, see Working with Stored Videos in the Amazon
Rekognition Devlopers Guide.

C<GetContentModeration> returns detected inappropriate, unwanted, or
offensive content moderation labels, and the time they are detected, in
an array, C<ModerationLabels>, of ContentModerationDetection objects.

By default, the moderated labels are returned sorted by time, in
milliseconds from the start of the video. You can also sort them by
moderated label by specifying C<NAME> for the C<SortBy> input
parameter.

Since video analysis can return a large number of results, use the
C<MaxResults> parameter to limit the number of labels returned in a
single call to C<GetContentModeration>. If there are more results than
specified in C<MaxResults>, the value of C<NextToken> in the operation
response contains a pagination token for getting the next set of
results. To get the next page of results, call C<GetContentModeration>
and populate the C<NextToken> request parameter with the value of
C<NextToken> returned from the previous call to
C<GetContentModeration>.

For more information, see moderating content in the Amazon Rekognition
Developer Guide.


=head2 GetFaceDetection

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetFaceDetection>

Returns: a L<Paws::Rekognition::GetFaceDetectionResponse> instance

Gets face detection results for a Amazon Rekognition Video analysis
started by StartFaceDetection.

Face detection with Amazon Rekognition Video is an asynchronous
operation. You start face detection by calling StartFaceDetection which
returns a job identifier (C<JobId>). When the face detection operation
finishes, Amazon Rekognition Video publishes a completion status to the
Amazon Simple Notification Service topic registered in the initial call
to C<StartFaceDetection>. To get the results of the face detection
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call GetFaceDetection and pass the
job identifier (C<JobId>) from the initial call to
C<StartFaceDetection>.

C<GetFaceDetection> returns an array of detected faces (C<Faces>)
sorted by the time the faces were detected.

Use MaxResults parameter to limit the number of labels returned. If
there are more results than specified in C<MaxResults>, the value of
C<NextToken> in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
C<GetFaceDetection> and populate the C<NextToken> request parameter
with the token value returned from the previous call to
C<GetFaceDetection>.

Note that for the C<GetFaceDetection> operation, the returned values
for C<FaceOccluded> and C<EyeDirection> will always be "null".


=head2 GetFaceLivenessSessionResults

=over

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::GetFaceLivenessSessionResults>

Returns: a L<Paws::Rekognition::GetFaceLivenessSessionResultsResponse> instance

Retrieves the results of a specific Face Liveness session. It requires
the C<sessionId> as input, which was created using
C<CreateFaceLivenessSession>. Returns the corresponding Face Liveness
confidence score, a reference image that includes a face bounding box,
and audit images that also contain face bounding boxes. The Face
Liveness confidence score ranges from 0 to 100.

The number of audit images returned by C<GetFaceLivenessSessionResults>
is defined by the C<AuditImagesLimit> paramater when calling
C<CreateFaceLivenessSession>. Reference images are always returned when
possible.


=head2 GetFaceSearch

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetFaceSearch>

Returns: a L<Paws::Rekognition::GetFaceSearchResponse> instance

Gets the face search results for Amazon Rekognition Video face search
started by StartFaceSearch. The search returns faces in a collection
that match the faces of persons detected in a video. It also includes
the time(s) that faces are matched in the video.

Face search in a video is an asynchronous operation. You start face
search by calling to StartFaceSearch which returns a job identifier
(C<JobId>). When the search operation finishes, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic registered in the initial call to C<StartFaceSearch>. To
get the search results, first check that the status value published to
the Amazon SNS topic is C<SUCCEEDED>. If so, call C<GetFaceSearch> and
pass the job identifier (C<JobId>) from the initial call to
C<StartFaceSearch>.

For more information, see Searching Faces in a Collection in the Amazon
Rekognition Developer Guide.

The search results are retured in an array, C<Persons>, of PersonMatch
objects. EachC<PersonMatch> element contains details about the matching
faces in the input collection, person information (facial attributes,
bounding boxes, and person identifer) for the matched person, and the
time the person was matched in the video.

C<GetFaceSearch> only returns the default facial attributes
(C<BoundingBox>, C<Confidence>, C<Landmarks>, C<Pose>, and C<Quality>).
The other facial attributes listed in the C<Face> object of the
following response syntax are not returned. For more information, see
FaceDetail in the Amazon Rekognition Developer Guide.

By default, the C<Persons> array is sorted by the time, in milliseconds
from the start of the video, persons are matched. You can also sort by
persons by specifying C<INDEX> for the C<SORTBY> input parameter.


=head2 GetLabelDetection

=over

=item JobId => Str

=item [AggregateBy => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetLabelDetection>

Returns: a L<Paws::Rekognition::GetLabelDetectionResponse> instance

Gets the label detection results of a Amazon Rekognition Video analysis
started by StartLabelDetection.

The label detection operation is started by a call to
StartLabelDetection which returns a job identifier (C<JobId>). When the
label detection operation finishes, Amazon Rekognition publishes a
completion status to the Amazon Simple Notification Service topic
registered in the initial call to C<StartlabelDetection>.

To get the results of the label detection operation, first check that
the status value published to the Amazon SNS topic is C<SUCCEEDED>. If
so, call GetLabelDetection and pass the job identifier (C<JobId>) from
the initial call to C<StartLabelDetection>.

C<GetLabelDetection> returns an array of detected labels (C<Labels>)
sorted by the time the labels were detected. You can also sort by the
label name by specifying C<NAME> for the C<SortBy> input parameter. If
there is no C<NAME> specified, the default sort is by timestamp.

You can select how results are aggregated by using the C<AggregateBy>
input parameter. The default aggregation method is C<TIMESTAMPS>. You
can also aggregate by C<SEGMENTS>, which aggregates all instances of
labels detected in a given segment.

The returned Labels array may include the following attributes:

=over

=item *

Name - The name of the detected label.

=item *

Confidence - The level of confidence in the label assigned to a
detected object.

=item *

Parents - The ancestor labels for a detected label. GetLabelDetection
returns a hierarchical taxonomy of detected labels. For example, a
detected car might be assigned the label car. The label car has two
parent labels: Vehicle (its parent) and Transportation (its
grandparent). The response includes the all ancestors for a label,
where every ancestor is a unique label. In the previous example, Car,
Vehicle, and Transportation are returned as unique labels in the
response.

=item *

Aliases - Possible Aliases for the label.

=item *

Categories - The label categories that the detected label belongs to.

=item *

BoundingBox E<mdash> Bounding boxes are described for all instances of
detected common object labels, returned in an array of Instance
objects. An Instance object contains a BoundingBox object, describing
the location of the label on the input image. It also includes the
confidence for the accuracy of the detected bounding box.

=item *

Timestamp - Time, in milliseconds from the start of the video, that the
label was detected. For aggregation by C<SEGMENTS>, the
C<StartTimestampMillis>, C<EndTimestampMillis>, and C<DurationMillis>
structures are what define a segment. Although the
E<ldquo>TimestampE<rdquo> structure is still returned with each label,
its value is set to be the same as C<StartTimestampMillis>.

=back

Timestamp and Bounding box information are returned for detected
Instances, only if aggregation is done by C<TIMESTAMPS>. If aggregating
by C<SEGMENTS>, information about detected instances isnE<rsquo>t
returned.

The version of the label model used for the detection is also returned.

B<Note C<DominantColors> isn't returned for C<Instances>, although it
is shown as part of the response in the sample seen below.>

Use C<MaxResults> parameter to limit the number of labels returned. If
there are more results than specified in C<MaxResults>, the value of
C<NextToken> in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
C<GetlabelDetection> and populate the C<NextToken> request parameter
with the token value returned from the previous call to
C<GetLabelDetection>.

If you are retrieving results while using the Amazon Simple
Notification Service, note that you will receive an "ERROR"
notification if the job encounters an issue.


=head2 GetMediaAnalysisJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::GetMediaAnalysisJob>

Returns: a L<Paws::Rekognition::GetMediaAnalysisJobResponse> instance

Retrieves the results for a given media analysis job. Takes a C<JobId>
returned by StartMediaAnalysisJob.


=head2 GetPersonTracking

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetPersonTracking>

Returns: a L<Paws::Rekognition::GetPersonTrackingResponse> instance

Gets the path tracking results of a Amazon Rekognition Video analysis
started by StartPersonTracking.

The person path tracking operation is started by a call to
C<StartPersonTracking> which returns a job identifier (C<JobId>). When
the operation finishes, Amazon Rekognition Video publishes a completion
status to the Amazon Simple Notification Service topic registered in
the initial call to C<StartPersonTracking>.

To get the results of the person path tracking operation, first check
that the status value published to the Amazon SNS topic is
C<SUCCEEDED>. If so, call GetPersonTracking and pass the job identifier
(C<JobId>) from the initial call to C<StartPersonTracking>.

C<GetPersonTracking> returns an array, C<Persons>, of tracked persons
and the time(s) their paths were tracked in the video.

C<GetPersonTracking> only returns the default facial attributes
(C<BoundingBox>, C<Confidence>, C<Landmarks>, C<Pose>, and C<Quality>).
The other facial attributes listed in the C<Face> object of the
following response syntax are not returned.

For more information, see FaceDetail in the Amazon Rekognition
Developer Guide.

By default, the array is sorted by the time(s) a person's path is
tracked in the video. You can sort by tracked persons by specifying
C<INDEX> for the C<SortBy> input parameter.

Use the C<MaxResults> parameter to limit the number of items returned.
If there are more results than specified in C<MaxResults>, the value of
C<NextToken> in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
C<GetPersonTracking> and populate the C<NextToken> request parameter
with the token value returned from the previous call to
C<GetPersonTracking>.


=head2 GetSegmentDetection

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetSegmentDetection>

Returns: a L<Paws::Rekognition::GetSegmentDetectionResponse> instance

Gets the segment detection results of a Amazon Rekognition Video
analysis started by StartSegmentDetection.

Segment detection with Amazon Rekognition Video is an asynchronous
operation. You start segment detection by calling StartSegmentDetection
which returns a job identifier (C<JobId>). When the segment detection
operation finishes, Amazon Rekognition publishes a completion status to
the Amazon Simple Notification Service topic registered in the initial
call to C<StartSegmentDetection>. To get the results of the segment
detection operation, first check that the status value published to the
Amazon SNS topic is C<SUCCEEDED>. if so, call C<GetSegmentDetection>
and pass the job identifier (C<JobId>) from the initial call of
C<StartSegmentDetection>.

C<GetSegmentDetection> returns detected segments in an array
(C<Segments>) of SegmentDetection objects. C<Segments> is sorted by the
segment types specified in the C<SegmentTypes> input parameter of
C<StartSegmentDetection>. Each element of the array includes the
detected segment, the precentage confidence in the acuracy of the
detected segment, the type of the segment, and the frame in which the
segment was detected.

Use C<SelectedSegmentTypes> to find out the type of segment detection
requested in the call to C<StartSegmentDetection>.

Use the C<MaxResults> parameter to limit the number of segment
detections returned. If there are more results than specified in
C<MaxResults>, the value of C<NextToken> in the operation response
contains a pagination token for getting the next set of results. To get
the next page of results, call C<GetSegmentDetection> and populate the
C<NextToken> request parameter with the token value returned from the
previous call to C<GetSegmentDetection>.

For more information, see Detecting video segments in stored video in
the Amazon Rekognition Developer Guide.


=head2 GetTextDetection

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetTextDetection>

Returns: a L<Paws::Rekognition::GetTextDetectionResponse> instance

Gets the text detection results of a Amazon Rekognition Video analysis
started by StartTextDetection.

Text detection with Amazon Rekognition Video is an asynchronous
operation. You start text detection by calling StartTextDetection which
returns a job identifier (C<JobId>) When the text detection operation
finishes, Amazon Rekognition publishes a completion status to the
Amazon Simple Notification Service topic registered in the initial call
to C<StartTextDetection>. To get the results of the text detection
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. if so, call C<GetTextDetection> and pass the
job identifier (C<JobId>) from the initial call of
C<StartLabelDetection>.

C<GetTextDetection> returns an array of detected text
(C<TextDetections>) sorted by the time the text was detected, up to 100
words per frame of video.

Each element of the array includes the detected text, the precentage
confidence in the acuracy of the detected text, the time the text was
detected, bounding box information for where the text was located, and
unique identifiers for words and their lines.

Use MaxResults parameter to limit the number of text detections
returned. If there are more results than specified in C<MaxResults>,
the value of C<NextToken> in the operation response contains a
pagination token for getting the next set of results. To get the next
page of results, call C<GetTextDetection> and populate the C<NextToken>
request parameter with the token value returned from the previous call
to C<GetTextDetection>.


=head2 IndexFaces

=over

=item CollectionId => Str

=item Image => L<Paws::Rekognition::Image>

=item [DetectionAttributes => ArrayRef[Str|Undef]]

=item [ExternalImageId => Str]

=item [MaxFaces => Int]

=item [QualityFilter => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::IndexFaces>

Returns: a L<Paws::Rekognition::IndexFacesResponse> instance

Detects faces in the input image and adds them to the specified
collection.

Amazon Rekognition doesn't save the actual faces that are detected.
Instead, the underlying detection algorithm first detects the faces in
the input image. For each face, the algorithm extracts facial features
into a feature vector, and stores it in the backend database. Amazon
Rekognition uses feature vectors when it performs face match and search
operations using the SearchFaces and SearchFacesByImage operations.

For more information, see Adding faces to a collection in the Amazon
Rekognition Developer Guide.

To get the number of faces in a collection, call DescribeCollection.

If you're using version 1.0 of the face detection model, C<IndexFaces>
indexes the 15 largest faces in the input image. Later versions of the
face detection model index the 100 largest faces in the input image.

If you're using version 4 or later of the face model, image orientation
information is not returned in the C<OrientationCorrection> field.

To determine which version of the model you're using, call
DescribeCollection and supply the collection ID. You can also get the
model version from the value of C<FaceModelVersion> in the response
from C<IndexFaces>

For more information, see Model Versioning in the Amazon Rekognition
Developer Guide.

If you provide the optional C<ExternalImageId> for the input image you
provided, Amazon Rekognition associates this ID with all faces that it
detects. When you call the ListFaces operation, the response returns
the external ID. You can use this external image ID to create a
client-side index to associate the faces with each image. You can then
use the index to find all faces in an image.

You can specify the maximum number of faces to index with the
C<MaxFaces> input parameter. This is useful when you want to index the
largest faces in an image and don't want to index smaller faces, such
as those belonging to people standing in the background.

The C<QualityFilter> input parameter allows you to filter out detected
faces that donE<rsquo>t meet a required quality bar. The quality bar is
based on a variety of common use cases. By default, C<IndexFaces>
chooses the quality bar that's used to filter faces. You can also
explicitly choose the quality bar. Use C<QualityFilter>, to set the
quality bar by specifying C<LOW>, C<MEDIUM>, or C<HIGH>. If you do not
want to filter detected faces, specify C<NONE>.

To use quality filtering, you need a collection associated with version
3 of the face model or higher. To get the version of the face model
associated with a collection, call DescribeCollection.

Information about faces detected in an image, but not indexed, is
returned in an array of UnindexedFace objects, C<UnindexedFaces>. Faces
aren't indexed for reasons such as:

=over

=item *

The number of faces detected exceeds the value of the C<MaxFaces>
request parameter.

=item *

The face is too small compared to the image dimensions.

=item *

The face is too blurry.

=item *

The image is too dark.

=item *

The face has an extreme pose.

=item *

The face doesnE<rsquo>t have enough detail to be suitable for face
search.

=back

In response, the C<IndexFaces> operation returns an array of metadata
for all detected faces, C<FaceRecords>. This includes:

=over

=item *

The bounding box, C<BoundingBox>, of the detected face.

=item *

A confidence value, C<Confidence>, which indicates the confidence that
the bounding box contains a face.

=item *

A face ID, C<FaceId>, assigned by the service for each face that's
detected and stored.

=item *

An image ID, C<ImageId>, assigned by the service for the input image.

=back

If you request C<ALL> or specific facial attributes (e.g.,
C<FACE_OCCLUDED>) by using the detectionAttributes parameter, Amazon
Rekognition returns detailed facial attributes, such as facial
landmarks (for example, location of eye and mouth), facial occlusion,
and other facial attributes.

If you provide the same image, specify the same collection, and use the
same external ID in the C<IndexFaces> operation, Amazon Rekognition
doesn't save duplicate face metadata.

The input image is passed either as base64-encoded image bytes, or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes isn't
supported. The image must be formatted as a PNG or JPEG file.

This operation requires permissions to perform the
C<rekognition:IndexFaces> action.


=head2 ListCollections

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListCollections>

Returns: a L<Paws::Rekognition::ListCollectionsResponse> instance

Returns list of collection IDs in your account. If the result is
truncated, the response also provides a C<NextToken> that you can use
in the subsequent request to fetch the next set of collection IDs.

For an example, see Listing collections in the Amazon Rekognition
Developer Guide.

This operation requires permissions to perform the
C<rekognition:ListCollections> action.


=head2 ListDatasetEntries

=over

=item DatasetArn => Str

=item [ContainsLabels => ArrayRef[Str|Undef]]

=item [HasErrors => Bool]

=item [Labeled => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SourceRefContains => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListDatasetEntries>

Returns: a L<Paws::Rekognition::ListDatasetEntriesResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Lists the entries (images) within a dataset. An entry is a JSON Line
that contains the information for a single image, including the image
location, assigned labels, and object location bounding boxes. For more
information, see Creating a manifest file
(https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/md-manifest-files.html).

JSON Lines in the response include information about non-terminal
errors found in the dataset. Non terminal errors are reported in
C<errors> lists within each JSON Line. The same information is reported
in the training and testing validation result manifests that Amazon
Rekognition Custom Labels creates during model training.

You can filter the response in variety of ways, such as choosing which
labels to return and returning JSON Lines created after a specific
date.

This operation requires permissions to perform the
C<rekognition:ListDatasetEntries> action.


=head2 ListDatasetLabels

=over

=item DatasetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListDatasetLabels>

Returns: a L<Paws::Rekognition::ListDatasetLabelsResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Lists the labels in a dataset. Amazon Rekognition Custom Labels uses
labels to describe images. For more information, see Labeling images
(https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/md-labeling-images.html).

Lists the labels in a dataset. Amazon Rekognition Custom Labels uses
labels to describe images. For more information, see Labeling images in
the I<Amazon Rekognition Custom Labels Developer Guide>.


=head2 ListFaces

=over

=item CollectionId => Str

=item [FaceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListFaces>

Returns: a L<Paws::Rekognition::ListFacesResponse> instance

Returns metadata for faces in the specified collection. This metadata
includes information such as the bounding box coordinates, the
confidence (that the bounding box contains a face), and face ID. For an
example, see Listing Faces in a Collection in the Amazon Rekognition
Developer Guide.

This operation requires permissions to perform the
C<rekognition:ListFaces> action.


=head2 ListMediaAnalysisJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListMediaAnalysisJobs>

Returns: a L<Paws::Rekognition::ListMediaAnalysisJobsResponse> instance

Returns a list of media analysis jobs. Results are sorted by
C<CreationTimestamp> in descending order.


=head2 ListProjectPolicies

=over

=item ProjectArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListProjectPolicies>

Returns: a L<Paws::Rekognition::ListProjectPoliciesResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Gets a list of the project policies attached to a project.

To attach a project policy to a project, call PutProjectPolicy. To
remove a project policy from a project, call DeleteProjectPolicy.

This operation requires permissions to perform the
C<rekognition:ListProjectPolicies> action.


=head2 ListStreamProcessors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListStreamProcessors>

Returns: a L<Paws::Rekognition::ListStreamProcessorsResponse> instance

Gets a list of stream processors that you have created with
CreateStreamProcessor.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::ListTagsForResource>

Returns: a L<Paws::Rekognition::ListTagsForResourceResponse> instance

Returns a list of tags in an Amazon Rekognition collection, stream
processor, or Custom Labels model.

This operation requires permissions to perform the
C<rekognition:ListTagsForResource> action.


=head2 ListUsers

=over

=item CollectionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListUsers>

Returns: a L<Paws::Rekognition::ListUsersResponse> instance

Returns metadata of the User such as C<UserID> in the specified
collection. Anonymous User (to reserve faces without any identity) is
not returned as part of this request. The results are sorted by system
generated primary key ID. If the response is truncated, C<NextToken> is
returned in the response that can be used in the subsequent request to
retrieve the next set of identities.


=head2 PutProjectPolicy

=over

=item PolicyDocument => Str

=item PolicyName => Str

=item ProjectArn => Str

=item [PolicyRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::PutProjectPolicy>

Returns: a L<Paws::Rekognition::PutProjectPolicyResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Attaches a project policy to a Amazon Rekognition Custom Labels project
in a trusting AWS account. A project policy specifies that a trusted
AWS account can copy a model version from a trusting AWS account to a
project in the trusted AWS account. To copy a model version you use the
CopyProjectVersion operation. Only applies to Custom Labels projects.

For more information about the format of a project policy document, see
Attaching a project policy (SDK) in the I<Amazon Rekognition Custom
Labels Developer Guide>.

The response from C<PutProjectPolicy> is a revision ID for the project
policy. You can attach multiple project policies to a project. You can
also update an existing project policy by specifying the policy
revision ID of the existing policy.

To remove a project policy from a project, call DeleteProjectPolicy. To
get a list of project policies attached to a project, call
ListProjectPolicies.

You copy a model version by calling CopyProjectVersion.

This operation requires permissions to perform the
C<rekognition:PutProjectPolicy> action.


=head2 RecognizeCelebrities

=over

=item Image => L<Paws::Rekognition::Image>


=back

Each argument is described in detail in: L<Paws::Rekognition::RecognizeCelebrities>

Returns: a L<Paws::Rekognition::RecognizeCelebritiesResponse> instance

Returns an array of celebrities recognized in the input image. For more
information, see Recognizing celebrities in the Amazon Rekognition
Developer Guide.

C<RecognizeCelebrities> returns the 64 largest faces in the image. It
lists the recognized celebrities in the C<CelebrityFaces> array and any
unrecognized faces in the C<UnrecognizedFaces> array.
C<RecognizeCelebrities> doesn't return celebrities whose faces aren't
among the largest 64 faces in the image.

For each celebrity recognized, C<RecognizeCelebrities> returns a
C<Celebrity> object. The C<Celebrity> object contains the celebrity
name, ID, URL links to additional information, match confidence, and a
C<ComparedFace> object that you can use to locate the celebrity's face
on the image.

Amazon Rekognition doesn't retain information about which images a
celebrity has been recognized in. Your application must store this
information and use the C<Celebrity> ID property as a unique identifier
for the celebrity. If you don't store the celebrity name or additional
information URLs returned by C<RecognizeCelebrities>, you will need the
ID to identify the celebrity in a call to the GetCelebrityInfo
operation.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

For an example, see Recognizing celebrities in an image in the Amazon
Rekognition Developer Guide.

This operation requires permissions to perform the
C<rekognition:RecognizeCelebrities> operation.


=head2 SearchFaces

=over

=item CollectionId => Str

=item FaceId => Str

=item [FaceMatchThreshold => Num]

=item [MaxFaces => Int]


=back

Each argument is described in detail in: L<Paws::Rekognition::SearchFaces>

Returns: a L<Paws::Rekognition::SearchFacesResponse> instance

For a given input face ID, searches for matching faces in the
collection the face belongs to. You get a face ID when you add a face
to the collection using the IndexFaces operation. The operation
compares the features of the input face with faces in the specified
collection.

You can also search faces without indexing faces by using the
C<SearchFacesByImage> operation.

The operation response returns an array of faces that match, ordered by
similarity score with the highest similarity first. More specifically,
it is an array of metadata for each face match that is found. Along
with the metadata, the response also includes a C<confidence> value for
each face match, indicating the confidence that the specific face
matches the input face.

For an example, see Searching for a face using its face ID in the
Amazon Rekognition Developer Guide.

This operation requires permissions to perform the
C<rekognition:SearchFaces> action.


=head2 SearchFacesByImage

=over

=item CollectionId => Str

=item Image => L<Paws::Rekognition::Image>

=item [FaceMatchThreshold => Num]

=item [MaxFaces => Int]

=item [QualityFilter => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::SearchFacesByImage>

Returns: a L<Paws::Rekognition::SearchFacesByImageResponse> instance

For a given input image, first detects the largest face in the image,
and then searches the specified collection for matching faces. The
operation compares the features of the input face with faces in the
specified collection.

To search for all faces in an input image, you might first call the
IndexFaces operation, and then use the face IDs returned in subsequent
calls to the SearchFaces operation.

You can also call the C<DetectFaces> operation and use the bounding
boxes in the response to make face crops, which then you can pass in to
the C<SearchFacesByImage> operation.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

The response returns an array of faces that match, ordered by
similarity score with the highest similarity first. More specifically,
it is an array of metadata for each face match found. Along with the
metadata, the response also includes a C<similarity> indicating how
similar the face is to the input face. In the response, the operation
also returns the bounding box (and a confidence level that the bounding
box contains a face) of the face that Amazon Rekognition used for the
input image.

If no faces are detected in the input image, C<SearchFacesByImage>
returns an C<InvalidParameterException> error.

For an example, Searching for a Face Using an Image in the Amazon
Rekognition Developer Guide.

The C<QualityFilter> input parameter allows you to filter out detected
faces that donE<rsquo>t meet a required quality bar. The quality bar is
based on a variety of common use cases. Use C<QualityFilter> to set the
quality bar for filtering by specifying C<LOW>, C<MEDIUM>, or C<HIGH>.
If you do not want to filter detected faces, specify C<NONE>. The
default value is C<NONE>.

To use quality filtering, you need a collection associated with version
3 of the face model or higher. To get the version of the face model
associated with a collection, call DescribeCollection.

This operation requires permissions to perform the
C<rekognition:SearchFacesByImage> action.


=head2 SearchUsers

=over

=item CollectionId => Str

=item [FaceId => Str]

=item [MaxUsers => Int]

=item [UserId => Str]

=item [UserMatchThreshold => Num]


=back

Each argument is described in detail in: L<Paws::Rekognition::SearchUsers>

Returns: a L<Paws::Rekognition::SearchUsersResponse> instance

Searches for UserIDs within a collection based on a C<FaceId> or
C<UserId>. This API can be used to find the closest UserID (with a
highest similarity) to associate a face. The request must be provided
with either C<FaceId> or C<UserId>. The operation returns an array of
UserID that match the C<FaceId> or C<UserId>, ordered by similarity
score with the highest similarity first.


=head2 SearchUsersByImage

=over

=item CollectionId => Str

=item Image => L<Paws::Rekognition::Image>

=item [MaxUsers => Int]

=item [QualityFilter => Str]

=item [UserMatchThreshold => Num]


=back

Each argument is described in detail in: L<Paws::Rekognition::SearchUsersByImage>

Returns: a L<Paws::Rekognition::SearchUsersByImageResponse> instance

Searches for UserIDs using a supplied image. It first detects the
largest face in the image, and then searches a specified collection for
matching UserIDs.

The operation returns an array of UserIDs that match the face in the
supplied image, ordered by similarity score with the highest similarity
first. It also returns a bounding box for the face found in the input
image.

Information about faces detected in the supplied image, but not used
for the search, is returned in an array of C<UnsearchedFace> objects.
If no valid face is detected in the image, the response will contain an
empty C<UserMatches> list and no C<SearchedFace> object.


=head2 StartCelebrityRecognition

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartCelebrityRecognition>

Returns: a L<Paws::Rekognition::StartCelebrityRecognitionResponse> instance

Starts asynchronous recognition of celebrities in a stored video.

Amazon Rekognition Video can detect celebrities in a video must be
stored in an Amazon S3 bucket. Use Video to specify the bucket name and
the filename of the video. C<StartCelebrityRecognition> returns a job
identifier (C<JobId>) which you use to get the results of the analysis.
When celebrity recognition analysis is finished, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic that you specify in C<NotificationChannel>. To get the
results of the celebrity recognition analysis, first check that the
status value published to the Amazon SNS topic is C<SUCCEEDED>. If so,
call GetCelebrityRecognition and pass the job identifier (C<JobId>)
from the initial call to C<StartCelebrityRecognition>.

For more information, see Recognizing celebrities in the Amazon
Rekognition Developer Guide.


=head2 StartContentModeration

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [MinConfidence => Num]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartContentModeration>

Returns: a L<Paws::Rekognition::StartContentModerationResponse> instance

Starts asynchronous detection of inappropriate, unwanted, or offensive
content in a stored video. For a list of moderation labels in Amazon
Rekognition, see Using the image and video moderation APIs
(https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api).

Amazon Rekognition Video can moderate content in a video stored in an
Amazon S3 bucket. Use Video to specify the bucket name and the filename
of the video. C<StartContentModeration> returns a job identifier
(C<JobId>) which you use to get the results of the analysis. When
content analysis is finished, Amazon Rekognition Video publishes a
completion status to the Amazon Simple Notification Service topic that
you specify in C<NotificationChannel>.

To get the results of the content analysis, first check that the status
value published to the Amazon SNS topic is C<SUCCEEDED>. If so, call
GetContentModeration and pass the job identifier (C<JobId>) from the
initial call to C<StartContentModeration>.

For more information, see Moderating content in the Amazon Rekognition
Developer Guide.


=head2 StartFaceDetection

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [FaceAttributes => Str]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartFaceDetection>

Returns: a L<Paws::Rekognition::StartFaceDetectionResponse> instance

Starts asynchronous detection of faces in a stored video.

Amazon Rekognition Video can detect faces in a video stored in an
Amazon S3 bucket. Use Video to specify the bucket name and the filename
of the video. C<StartFaceDetection> returns a job identifier (C<JobId>)
that you use to get the results of the operation. When face detection
is finished, Amazon Rekognition Video publishes a completion status to
the Amazon Simple Notification Service topic that you specify in
C<NotificationChannel>. To get the results of the face detection
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call GetFaceDetection and pass the
job identifier (C<JobId>) from the initial call to
C<StartFaceDetection>.

For more information, see Detecting faces in a stored video in the
Amazon Rekognition Developer Guide.


=head2 StartFaceSearch

=over

=item CollectionId => Str

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [FaceMatchThreshold => Num]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartFaceSearch>

Returns: a L<Paws::Rekognition::StartFaceSearchResponse> instance

Starts the asynchronous search for faces in a collection that match the
faces of persons detected in a stored video.

The video must be stored in an Amazon S3 bucket. Use Video to specify
the bucket name and the filename of the video. C<StartFaceSearch>
returns a job identifier (C<JobId>) which you use to get the search
results once the search has completed. When searching is finished,
Amazon Rekognition Video publishes a completion status to the Amazon
Simple Notification Service topic that you specify in
C<NotificationChannel>. To get the search results, first check that the
status value published to the Amazon SNS topic is C<SUCCEEDED>. If so,
call GetFaceSearch and pass the job identifier (C<JobId>) from the
initial call to C<StartFaceSearch>. For more information, see Searching
stored videos for faces
(https://docs.aws.amazon.com/rekognition/latest/dg/procedure-person-search-videos.html).


=head2 StartLabelDetection

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [Features => ArrayRef[Str|Undef]]

=item [JobTag => Str]

=item [MinConfidence => Num]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]

=item [Settings => L<Paws::Rekognition::LabelDetectionSettings>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartLabelDetection>

Returns: a L<Paws::Rekognition::StartLabelDetectionResponse> instance

Starts asynchronous detection of labels in a stored video.

Amazon Rekognition Video can detect labels in a video. Labels are
instances of real-world entities. This includes objects like flower,
tree, and table; events like wedding, graduation, and birthday party;
concepts like landscape, evening, and nature; and activities like a
person getting out of a car or a person skiing.

The video must be stored in an Amazon S3 bucket. Use Video to specify
the bucket name and the filename of the video. C<StartLabelDetection>
returns a job identifier (C<JobId>) which you use to get the results of
the operation. When label detection is finished, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic that you specify in C<NotificationChannel>.

To get the results of the label detection operation, first check that
the status value published to the Amazon SNS topic is C<SUCCEEDED>. If
so, call GetLabelDetection and pass the job identifier (C<JobId>) from
the initial call to C<StartLabelDetection>.

I<Optional Parameters>

C<StartLabelDetection> has the C<GENERAL_LABELS> Feature applied by
default. This feature allows you to provide filtering criteria to the
C<Settings> parameter. You can filter with sets of individual labels or
with label categories. You can specify inclusive filters, exclusive
filters, or a combination of inclusive and exclusive filters. For more
information on filtering, see Detecting labels in a video
(https://docs.aws.amazon.com/rekognition/latest/dg/labels-detecting-labels-video.html).

You can specify C<MinConfidence> to control the confidence threshold
for the labels returned. The default is 50.


=head2 StartMediaAnalysisJob

=over

=item Input => L<Paws::Rekognition::MediaAnalysisInput>

=item OperationsConfig => L<Paws::Rekognition::MediaAnalysisOperationsConfig>

=item OutputConfig => L<Paws::Rekognition::MediaAnalysisOutputConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [KmsKeyId => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartMediaAnalysisJob>

Returns: a L<Paws::Rekognition::StartMediaAnalysisJobResponse> instance

Initiates a new media analysis job. Accepts a manifest file in an
Amazon S3 bucket. The output is a manifest file and a summary of the
manifest stored in the Amazon S3 bucket.


=head2 StartPersonTracking

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartPersonTracking>

Returns: a L<Paws::Rekognition::StartPersonTrackingResponse> instance

Starts the asynchronous tracking of a person's path in a stored video.

Amazon Rekognition Video can track the path of people in a video stored
in an Amazon S3 bucket. Use Video to specify the bucket name and the
filename of the video. C<StartPersonTracking> returns a job identifier
(C<JobId>) which you use to get the results of the operation. When
label detection is finished, Amazon Rekognition publishes a completion
status to the Amazon Simple Notification Service topic that you specify
in C<NotificationChannel>.

To get the results of the person detection operation, first check that
the status value published to the Amazon SNS topic is C<SUCCEEDED>. If
so, call GetPersonTracking and pass the job identifier (C<JobId>) from
the initial call to C<StartPersonTracking>.


=head2 StartProjectVersion

=over

=item MinInferenceUnits => Int

=item ProjectVersionArn => Str

=item [MaxInferenceUnits => Int]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartProjectVersion>

Returns: a L<Paws::Rekognition::StartProjectVersionResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Starts the running of the version of a model. Starting a model takes a
while to complete. To check the current state of the model, use
DescribeProjectVersions.

Once the model is running, you can detect custom labels in new images
by calling DetectCustomLabels.

You are charged for the amount of time that the model is running. To
stop a running model, call StopProjectVersion.

This operation requires permissions to perform the
C<rekognition:StartProjectVersion> action.


=head2 StartSegmentDetection

=over

=item SegmentTypes => ArrayRef[Str|Undef]

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [Filters => L<Paws::Rekognition::StartSegmentDetectionFilters>]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartSegmentDetection>

Returns: a L<Paws::Rekognition::StartSegmentDetectionResponse> instance

Starts asynchronous detection of segment detection in a stored video.

Amazon Rekognition Video can detect segments in a video stored in an
Amazon S3 bucket. Use Video to specify the bucket name and the filename
of the video. C<StartSegmentDetection> returns a job identifier
(C<JobId>) which you use to get the results of the operation. When
segment detection is finished, Amazon Rekognition Video publishes a
completion status to the Amazon Simple Notification Service topic that
you specify in C<NotificationChannel>.

You can use the C<Filters> (StartSegmentDetectionFilters) input
parameter to specify the minimum detection confidence returned in the
response. Within C<Filters>, use C<ShotFilter>
(StartShotDetectionFilter) to filter detected shots. Use
C<TechnicalCueFilter> (StartTechnicalCueDetectionFilter) to filter
technical cues.

To get the results of the segment detection operation, first check that
the status value published to the Amazon SNS topic is C<SUCCEEDED>. if
so, call GetSegmentDetection and pass the job identifier (C<JobId>)
from the initial call to C<StartSegmentDetection>.

For more information, see Detecting video segments in stored video in
the Amazon Rekognition Developer Guide.


=head2 StartStreamProcessor

=over

=item Name => Str

=item [StartSelector => L<Paws::Rekognition::StreamProcessingStartSelector>]

=item [StopSelector => L<Paws::Rekognition::StreamProcessingStopSelector>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartStreamProcessor>

Returns: a L<Paws::Rekognition::StartStreamProcessorResponse> instance

Starts processing a stream processor. You create a stream processor by
calling CreateStreamProcessor. To tell C<StartStreamProcessor> which
stream processor to start, use the value of the C<Name> field specified
in the call to C<CreateStreamProcessor>.

If you are using a label detection stream processor to detect labels,
you need to provide a C<Start selector> and a C<Stop selector> to
determine the length of the stream processing time.


=head2 StartTextDetection

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [Filters => L<Paws::Rekognition::StartTextDetectionFilters>]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartTextDetection>

Returns: a L<Paws::Rekognition::StartTextDetectionResponse> instance

Starts asynchronous detection of text in a stored video.

Amazon Rekognition Video can detect text in a video stored in an Amazon
S3 bucket. Use Video to specify the bucket name and the filename of the
video. C<StartTextDetection> returns a job identifier (C<JobId>) which
you use to get the results of the operation. When text detection is
finished, Amazon Rekognition Video publishes a completion status to the
Amazon Simple Notification Service topic that you specify in
C<NotificationChannel>.

To get the results of the text detection operation, first check that
the status value published to the Amazon SNS topic is C<SUCCEEDED>. if
so, call GetTextDetection and pass the job identifier (C<JobId>) from
the initial call to C<StartTextDetection>.


=head2 StopProjectVersion

=over

=item ProjectVersionArn => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::StopProjectVersion>

Returns: a L<Paws::Rekognition::StopProjectVersionResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Stops a running model. The operation might take a while to complete. To
check the current status, call DescribeProjectVersions. Only applies to
Custom Labels projects.

This operation requires permissions to perform the
C<rekognition:StopProjectVersion> action.


=head2 StopStreamProcessor

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::StopStreamProcessor>

Returns: a L<Paws::Rekognition::StopStreamProcessorResponse> instance

Stops a running stream processor that was created by
CreateStreamProcessor.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Rekognition::TagMap>


=back

Each argument is described in detail in: L<Paws::Rekognition::TagResource>

Returns: a L<Paws::Rekognition::TagResourceResponse> instance

Adds one or more key-value tags to an Amazon Rekognition collection,
stream processor, or Custom Labels model. For more information, see
Tagging AWS Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).

This operation requires permissions to perform the
C<rekognition:TagResource> action.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Rekognition::UntagResource>

Returns: a L<Paws::Rekognition::UntagResourceResponse> instance

Removes one or more tags from an Amazon Rekognition collection, stream
processor, or Custom Labels model.

This operation requires permissions to perform the
C<rekognition:UntagResource> action.


=head2 UpdateDatasetEntries

=over

=item Changes => L<Paws::Rekognition::DatasetChanges>

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::UpdateDatasetEntries>

Returns: a L<Paws::Rekognition::UpdateDatasetEntriesResponse> instance

This operation applies only to Amazon Rekognition Custom Labels.

Adds or updates one or more entries (images) in a dataset. An entry is
a JSON Line which contains the information for a single image,
including the image location, assigned labels, and object location
bounding boxes. For more information, see Image-Level labels in
manifest files and Object localization in manifest files in the
I<Amazon Rekognition Custom Labels Developer Guide>.

If the C<source-ref> field in the JSON line references an existing
image, the existing image in the dataset is updated. If C<source-ref>
field doesn't reference an existing image, the image is added as a new
image to the dataset.

You specify the changes that you want to make in the C<Changes> input
parameter. There isn't a limit to the number JSON Lines that you can
change, but the size of C<Changes> must be less than 5MB.

C<UpdateDatasetEntries> returns immediatly, but the dataset update
might take a while to complete. Use DescribeDataset to check the
current status. The dataset updated successfully if the value of
C<Status> is C<UPDATE_COMPLETE>.

To check if any non-terminal errors occured, call ListDatasetEntries
and check for the presence of C<errors> lists in the JSON Lines.

Dataset update fails if a terminal error occurs (C<Status> =
C<UPDATE_FAILED>). Currently, you can't access the terminal error
information from the Amazon Rekognition Custom Labels SDK.

This operation requires permissions to perform the
C<rekognition:UpdateDatasetEntries> action.


=head2 UpdateStreamProcessor

=over

=item Name => Str

=item [DataSharingPreferenceForUpdate => L<Paws::Rekognition::StreamProcessorDataSharingPreference>]

=item [ParametersToDelete => ArrayRef[Str|Undef]]

=item [RegionsOfInterestForUpdate => ArrayRef[L<Paws::Rekognition::RegionOfInterest>]]

=item [SettingsForUpdate => L<Paws::Rekognition::StreamProcessorSettingsForUpdate>]


=back

Each argument is described in detail in: L<Paws::Rekognition::UpdateStreamProcessor>

Returns: a L<Paws::Rekognition::UpdateStreamProcessorResponse> instance

Allows you to update a stream processor. You can change some settings
and regions of interest and delete certain parameters.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllProjects(sub { },[Features => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ProjectNames => ArrayRef[Str|Undef]])

=head2 DescribeAllProjects([Features => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ProjectNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProjectDescriptions, passing the object as the first parameter, and the string 'ProjectDescriptions' as the second parameter 

If not, it will return a a L<Paws::Rekognition::DescribeProjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllProjectVersions(sub { },ProjectArn => Str, [MaxResults => Int, NextToken => Str, VersionNames => ArrayRef[Str|Undef]])

=head2 DescribeAllProjectVersions(ProjectArn => Str, [MaxResults => Int, NextToken => Str, VersionNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProjectVersionDescriptions, passing the object as the first parameter, and the string 'ProjectVersionDescriptions' as the second parameter 

If not, it will return a a L<Paws::Rekognition::DescribeProjectVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCollections(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCollections([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CollectionIds, passing the object as the first parameter, and the string 'CollectionIds' as the second parameter 

 - FaceModelVersions, passing the object as the first parameter, and the string 'FaceModelVersions' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListCollectionsResponse> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetEntries(sub { },DatasetArn => Str, [ContainsLabels => ArrayRef[Str|Undef], HasErrors => Bool, Labeled => Bool, MaxResults => Int, NextToken => Str, SourceRefContains => Str])

=head2 ListAllDatasetEntries(DatasetArn => Str, [ContainsLabels => ArrayRef[Str|Undef], HasErrors => Bool, Labeled => Bool, MaxResults => Int, NextToken => Str, SourceRefContains => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatasetEntries, passing the object as the first parameter, and the string 'DatasetEntries' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListDatasetEntriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetLabels(sub { },DatasetArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetLabels(DatasetArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatasetLabelDescriptions, passing the object as the first parameter, and the string 'DatasetLabelDescriptions' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListDatasetLabelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFaces(sub { },CollectionId => Str, [FaceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, UserId => Str])

=head2 ListAllFaces(CollectionId => Str, [FaceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, UserId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Faces, passing the object as the first parameter, and the string 'Faces' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListFacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjectPolicies(sub { },ProjectArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllProjectPolicies(ProjectArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProjectPolicies, passing the object as the first parameter, and the string 'ProjectPolicies' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListProjectPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamProcessors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllStreamProcessors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StreamProcessors, passing the object as the first parameter, and the string 'StreamProcessors' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListStreamProcessorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },CollectionId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUsers(CollectionId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

