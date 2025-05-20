
package Paws::Bedrock::GetModelImportJobResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage');
  has ImportedModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importedModelArn');
  has ImportedModelKmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importedModelKmsKeyArn');
  has ImportedModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importedModelName');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn');
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName');
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has ModelDataSource => (is => 'ro', isa => 'Paws::Bedrock::ModelDataSource', traits => ['NameInRequest'], request_name => 'modelDataSource');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has VpcConfig => (is => 'ro', isa => 'Paws::Bedrock::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelImportJobResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time the resource was created.


=head2 EndTime => Str

Time that the resource transitioned to terminal state.


=head2 FailureMessage => Str

Information about why the import job failed.


=head2 ImportedModelArn => Str

The Amazon Resource Name (ARN) of the imported model.


=head2 ImportedModelKmsKeyArn => Str

The imported model is encrypted at rest using this key.


=head2 ImportedModelName => Str

The name of the imported model.


=head2 JobArn => Str

The Amazon Resource Name (ARN) of the import job.


=head2 JobName => Str

The name of the import job.


=head2 LastModifiedTime => Str

Time the resource was last modified.


=head2 ModelDataSource => L<Paws::Bedrock::ModelDataSource>

The data source for the imported model.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role associated with this
job.


=head2 Status => Str

The status of the job. A successful job transitions from in-progress to
completed when the imported model is ready to use. If the job failed,
the failure message contains information about why the job failed.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">
=head2 VpcConfig => L<Paws::Bedrock::VpcConfig>

The Virtual Private Cloud (VPC) configuration of the import model job.


=head2 _request_id => Str


=cut

