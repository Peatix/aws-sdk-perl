
package Paws::Resiliencehub::ListAppAssessments;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'appArn');
  has AssessmentName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assessmentName');
  has AssessmentStatus => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'assessmentStatus');
  has ComplianceStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'complianceStatus');
  has Invoker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'invoker');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ReverseOrder => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'reverseOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppAssessments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-app-assessments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::ListAppAssessmentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppAssessments - Arguments for method ListAppAssessments on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppAssessments on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method ListAppAssessments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppAssessments.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $ListAppAssessmentsResponse = $resiliencehub->ListAppAssessments(
      AppArn           => 'MyArn',           # OPTIONAL
      AssessmentName   => 'MyEntityName',    # OPTIONAL
      AssessmentStatus => [
        'Pending', ...    # values: Pending, InProgress, Failed, Success
      ],    # OPTIONAL
      ComplianceStatus => 'PolicyBreached',    # OPTIONAL
      Invoker          => 'User',              # OPTIONAL
      MaxResults       => 1,                   # OPTIONAL
      NextToken        => 'MyNextToken',       # OPTIONAL
      ReverseOrder     => 1,                   # OPTIONAL
    );

    # Results:
    my $AssessmentSummaries = $ListAppAssessmentsResponse->AssessmentSummaries;
    my $NextToken           = $ListAppAssessmentsResponse->NextToken;

    # Returns a L<Paws::Resiliencehub::ListAppAssessmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/ListAppAssessments>

=head1 ATTRIBUTES


=head2 AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 AssessmentName => Str

The name for the assessment.



=head2 AssessmentStatus => ArrayRef[Str|Undef]

The current status of the assessment for the resiliency policy.



=head2 ComplianceStatus => Str

The current status of compliance for the resiliency policy.

Valid values are: C<"PolicyBreached">, C<"PolicyMet">, C<"NotApplicable">, C<"MissingPolicy">

=head2 Invoker => Str

Specifies the entity that invoked a specific assessment, either a
C<User> or the C<System>.

Valid values are: C<"User">, C<"System">

=head2 MaxResults => Int

Maximum number of results to include in the response. If more results
exist than the specified C<MaxResults> value, a token is included in
the response so that the remaining results can be retrieved.



=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.



=head2 ReverseOrder => Bool

The default is to sort by ascending B<startTime>. To sort by descending
B<startTime>, set reverseOrder to C<true>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppAssessments in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

