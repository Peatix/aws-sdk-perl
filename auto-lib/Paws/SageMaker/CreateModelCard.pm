
package Paws::SageMaker::CreateModelCard;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardStatus => (is => 'ro', isa => 'Str', required => 1);
  has SecurityConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelCardSecurityConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelCard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateModelCardResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelCard - Arguments for method CreateModelCard on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelCard on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateModelCard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelCard.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateModelCardResponse = $api . sagemaker->CreateModelCard(
      Content         => 'MyModelCardContent',
      ModelCardName   => 'MyEntityName',
      ModelCardStatus => 'Draft',
      SecurityConfig  => {
        KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ModelCardArn = $CreateModelCardResponse->ModelCardArn;

    # Returns a L<Paws::SageMaker::CreateModelCardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateModelCard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The content of the model card. Content must be in model card JSON
schema
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema)
and provided as a string.



=head2 B<REQUIRED> ModelCardName => Str

The unique name of the model card.



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

=head2 SecurityConfig => L<Paws::SageMaker::ModelCardSecurityConfig>

An optional Key Management Service key to encrypt, decrypt, and
re-encrypt model card content for regulated workloads with highly
sensitive data.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Key-value pairs used to manage metadata for model cards.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelCard in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

