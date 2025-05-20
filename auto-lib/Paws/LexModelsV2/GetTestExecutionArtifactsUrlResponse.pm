
package Paws::LexModelsV2::GetTestExecutionArtifactsUrlResponse;
  use Moose;
  has DownloadArtifactsUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'downloadArtifactsUrl');
  has TestExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testExecutionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::GetTestExecutionArtifactsUrlResponse

=head1 ATTRIBUTES


=head2 DownloadArtifactsUrl => Str

The pre-signed Amazon S3 URL to download completed test execution.


=head2 TestExecutionId => Str

The unique identifier of the completed test execution.


=head2 _request_id => Str


=cut

