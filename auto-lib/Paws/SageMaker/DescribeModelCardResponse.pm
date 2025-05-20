
package Paws::SageMaker::DescribeModelCardResponse;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ModelCardArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardProcessingStatus => (is => 'ro', isa => 'Str');
  has ModelCardStatus => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardVersion => (is => 'ro', isa => 'Int', required => 1);
  has SecurityConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelCardSecurityConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelCardResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The content of the model card.


=head2 B<REQUIRED> CreatedBy => L<Paws::SageMaker::UserContext>




=head2 B<REQUIRED> CreationTime => Str

The date and time the model card was created.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

The date and time the model card was last modified.


=head2 B<REQUIRED> ModelCardArn => Str

The Amazon Resource Name (ARN) of the model card.


=head2 B<REQUIRED> ModelCardName => Str

The name of the model card.


=head2 ModelCardProcessingStatus => Str

The processing status of model card deletion. The
C<ModelCardProcessingStatus> updates throughout the different deletion
steps.

=over

=item *

C<DeletePending>: Model card deletion request received.

=item *

C<DeleteInProgress>: Model card deletion is in progress.

=item *

C<ContentDeleted>: Deleted model card content.

=item *

C<ExportJobsDeleted>: Deleted all export jobs associated with the model
card.

=item *

C<DeleteCompleted>: Successfully deleted the model card.

=item *

C<DeleteFailed>: The model card failed to delete.

=back


Valid values are: C<"DeleteInProgress">, C<"DeletePending">, C<"ContentDeleted">, C<"ExportJobsDeleted">, C<"DeleteCompleted">, C<"DeleteFailed">
=head2 B<REQUIRED> ModelCardStatus => Str

The approval status of the model card within your organization.
Different organizations might have different criteria for model card
review and approval.

=over

=item *

C<Draft>: The model card is a work in progress.

=item *

C<PendingReview>: The model card is pending review.

=item *

C<Approved>: The model card is approved.

=item *

C<Archived>: The model card is archived. No more updates should be made
to the model card, but it can still be exported.

=back


Valid values are: C<"Draft">, C<"PendingReview">, C<"Approved">, C<"Archived">
=head2 B<REQUIRED> ModelCardVersion => Int

The version of the model card.


=head2 SecurityConfig => L<Paws::SageMaker::ModelCardSecurityConfig>

The security configuration used to protect model card content.


=head2 _request_id => Str


=cut

1;