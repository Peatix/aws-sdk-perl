
package Paws::SageMaker::DescribeModelCardExportJobResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has ExportArtifacts => (is => 'ro', isa => 'Paws::SageMaker::ModelCardExportArtifacts');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedAt => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardExportJobArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardExportJobName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardVersion => (is => 'ro', isa => 'Int', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelCardExportOutputConfig', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelCardExportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time that the model export job was created.


=head2 ExportArtifacts => L<Paws::SageMaker::ModelCardExportArtifacts>

The exported model card artifacts.


=head2 FailureReason => Str

The failure reason if the model export job fails.


=head2 B<REQUIRED> LastModifiedAt => Str

The date and time that the model export job was last modified.


=head2 B<REQUIRED> ModelCardExportJobArn => Str

The Amazon Resource Name (ARN) of the model card export job.


=head2 B<REQUIRED> ModelCardExportJobName => Str

The name of the model card export job to describe.


=head2 B<REQUIRED> ModelCardName => Str

The name or Amazon Resource Name (ARN) of the model card that the model
export job exports.


=head2 B<REQUIRED> ModelCardVersion => Int

The version of the model card that the model export job exports.


=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::ModelCardExportOutputConfig>

The export output details for the model card.


=head2 B<REQUIRED> Status => Str

The completion status of the model card export job.

=over

=item *

C<InProgress>: The model card export job is in progress.

=item *

C<Completed>: The model card export job is complete.

=item *

C<Failed>: The model card export job failed. To see the reason for the
failure, see the C<FailureReason> field in the response to a
C<DescribeModelCardExportJob> call.

=back


Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">
=head2 _request_id => Str


=cut

1;