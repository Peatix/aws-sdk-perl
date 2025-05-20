
package Paws::WellArchitected::ListReviewTemplateAnswers;
  use Moose;
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has PillarId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'PillarId');
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReviewTemplateAnswers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ListReviewTemplateAnswersOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListReviewTemplateAnswers - Arguments for method ListReviewTemplateAnswers on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReviewTemplateAnswers on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ListReviewTemplateAnswers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReviewTemplateAnswers.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ListReviewTemplateAnswersOutput =
      $wellarchitected->ListReviewTemplateAnswers(
      LensAlias   => 'MyLensAlias',
      TemplateArn => 'MyTemplateArn',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
      PillarId    => 'MyPillarId',      # OPTIONAL
      );

    # Results:
    my $AnswerSummaries = $ListReviewTemplateAnswersOutput->AnswerSummaries;
    my $LensAlias       = $ListReviewTemplateAnswersOutput->LensAlias;
    my $NextToken       = $ListReviewTemplateAnswersOutput->NextToken;
    my $TemplateArn     = $ListReviewTemplateAnswersOutput->TemplateArn;

   # Returns a L<Paws::WellArchitected::ListReviewTemplateAnswersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ListReviewTemplateAnswers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LensAlias => Str





=head2 MaxResults => Int

The maximum number of results to return for this request.



=head2 NextToken => Str





=head2 PillarId => Str





=head2 B<REQUIRED> TemplateArn => Str

The ARN of the review template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReviewTemplateAnswers in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

