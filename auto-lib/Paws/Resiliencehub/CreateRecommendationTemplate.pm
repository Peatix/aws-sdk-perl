
package Paws::Resiliencehub::CreateRecommendationTemplate;
  use Moose;
  has AssessmentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentArn', required => 1);
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RecommendationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'recommendationIds');
  has RecommendationTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'recommendationTypes');
  has Tags => (is => 'ro', isa => 'Paws::Resiliencehub::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRecommendationTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-recommendation-template');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::CreateRecommendationTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::CreateRecommendationTemplate - Arguments for method CreateRecommendationTemplate on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRecommendationTemplate on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method CreateRecommendationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRecommendationTemplate.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $CreateRecommendationTemplateResponse =
      $resiliencehub->CreateRecommendationTemplate(
      AssessmentArn       => 'MyArn',
      Name                => 'MyEntityName',
      BucketName          => 'MyEntityName',       # OPTIONAL
      ClientToken         => 'MyClientToken',      # OPTIONAL
      Format              => 'CfnYaml',            # OPTIONAL
      RecommendationIds   => [ 'MyUuid', ... ],    # OPTIONAL
      RecommendationTypes => [
        'Alarm', ...                               # values: Alarm, Sop, Test
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $RecommendationTemplate =
      $CreateRecommendationTemplateResponse->RecommendationTemplate;

# Returns a L<Paws::Resiliencehub::CreateRecommendationTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/CreateRecommendationTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentArn => Str

Amazon Resource Name (ARN) of the assessment. The format for this ARN
is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app-assessment/C<app-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 BucketName => Str

The name of the Amazon S3 bucket that will contain the recommendation
template.



=head2 ClientToken => Str

Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not
reuse the same client token for other API requests.



=head2 Format => Str

The format for the recommendation template.

=over

=item CfnJson

The template is CloudFormation JSON.

=item CfnYaml

The template is CloudFormation YAML.

=back


Valid values are: C<"CfnYaml">, C<"CfnJson">

=head2 B<REQUIRED> Name => Str

The name for the recommendation template.



=head2 RecommendationIds => ArrayRef[Str|Undef]

Identifiers for the recommendations used to create a recommendation
template.



=head2 RecommendationTypes => ArrayRef[Str|Undef]

An array of strings that specify the recommendation template type or
types.

=over

=item Alarm

The template is an AlarmRecommendation template.

=item Sop

The template is a SopRecommendation template.

=item Test

The template is a TestRecommendation template.

=back




=head2 Tags => L<Paws::Resiliencehub::TagMap>

Tags assigned to the resource. A tag is a label that you assign to an
Amazon Web Services resource. Each tag consists of a key/value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRecommendationTemplate in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

