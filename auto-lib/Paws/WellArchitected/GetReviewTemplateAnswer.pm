
package Paws::WellArchitected::GetReviewTemplateAnswer;
  use Moose;
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);
  has QuestionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QuestionId', required => 1);
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReviewTemplateAnswer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::GetReviewTemplateAnswerOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetReviewTemplateAnswer - Arguments for method GetReviewTemplateAnswer on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReviewTemplateAnswer on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method GetReviewTemplateAnswer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReviewTemplateAnswer.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $GetReviewTemplateAnswerOutput =
      $wellarchitected->GetReviewTemplateAnswer(
      LensAlias   => 'MyLensAlias',
      QuestionId  => 'MyQuestionId',
      TemplateArn => 'MyTemplateArn',

      );

    # Results:
    my $Answer      = $GetReviewTemplateAnswerOutput->Answer;
    my $LensAlias   = $GetReviewTemplateAnswerOutput->LensAlias;
    my $TemplateArn = $GetReviewTemplateAnswerOutput->TemplateArn;

    # Returns a L<Paws::WellArchitected::GetReviewTemplateAnswerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/GetReviewTemplateAnswer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LensAlias => Str





=head2 B<REQUIRED> QuestionId => Str





=head2 B<REQUIRED> TemplateArn => Str

The review template ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReviewTemplateAnswer in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

