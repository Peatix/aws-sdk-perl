
package Paws::Resiliencehub::ListRecommendationTemplates;
  use Moose;
  has AssessmentArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assessmentArn');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RecommendationTemplateArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'recommendationTemplateArn');
  has ReverseOrder => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'reverseOrder');
  has Status => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecommendationTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-recommendation-templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::ListRecommendationTemplatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListRecommendationTemplates - Arguments for method ListRecommendationTemplates on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecommendationTemplates on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method ListRecommendationTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecommendationTemplates.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $ListRecommendationTemplatesResponse =
      $resiliencehub->ListRecommendationTemplates(
      AssessmentArn             => 'MyArn',           # OPTIONAL
      MaxResults                => 1,                 # OPTIONAL
      Name                      => 'MyEntityName',    # OPTIONAL
      NextToken                 => 'MyNextToken',     # OPTIONAL
      RecommendationTemplateArn => 'MyArn',           # OPTIONAL
      ReverseOrder              => 1,                 # OPTIONAL
      Status                    => [
        'Pending', ...    # values: Pending, InProgress, Failed, Success
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRecommendationTemplatesResponse->NextToken;
    my $RecommendationTemplates =
      $ListRecommendationTemplatesResponse->RecommendationTemplates;

 # Returns a L<Paws::Resiliencehub::ListRecommendationTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/ListRecommendationTemplates>

=head1 ATTRIBUTES


=head2 AssessmentArn => Str

Amazon Resource Name (ARN) of the assessment. The format for this ARN
is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app-assessment/C<app-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 MaxResults => Int

Maximum number of results to include in the response. If more results
exist than the specified C<MaxResults> value, a token is included in
the response so that the remaining results can be retrieved.



=head2 Name => Str

The name for one of the listed recommendation templates.



=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.



=head2 RecommendationTemplateArn => Str

The Amazon Resource Name (ARN) for a recommendation template.



=head2 ReverseOrder => Bool

The default is to sort by ascending B<startTime>. To sort by descending
B<startTime>, set reverseOrder to C<true>.



=head2 Status => ArrayRef[Str|Undef]

Status of the action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecommendationTemplates in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

