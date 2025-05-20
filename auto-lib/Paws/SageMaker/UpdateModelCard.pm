
package Paws::SageMaker::UpdateModelCard;
  use Moose;
  has Content => (is => 'ro', isa => 'Str');
  has ModelCardName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateModelCard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateModelCardResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateModelCard - Arguments for method UpdateModelCard on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateModelCard on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateModelCard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateModelCard.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateModelCardResponse = $api . sagemaker->UpdateModelCard(
      ModelCardName   => 'MyModelCardNameOrArn',
      Content         => 'MyModelCardContent',     # OPTIONAL
      ModelCardStatus => 'Draft',                  # OPTIONAL
    );

    # Results:
    my $ModelCardArn = $UpdateModelCardResponse->ModelCardArn;

    # Returns a L<Paws::SageMaker::UpdateModelCardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateModelCard>

=head1 ATTRIBUTES


=head2 Content => Str

The updated model card content. Content must be in model card JSON
schema
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema)
and provided as a string.

When updating model card content, be sure to include the full content
and not just updated content.



=head2 B<REQUIRED> ModelCardName => Str

The name or Amazon Resource Name (ARN) of the model card to update.



=head2 ModelCardStatus => Str

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


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateModelCard in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

