
package Paws::Resiliencehub::ListAppAssessmentResourceDrifts;
  use Moose;
  has AssessmentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppAssessmentResourceDrifts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-app-assessment-resource-drifts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::ListAppAssessmentResourceDriftsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppAssessmentResourceDrifts - Arguments for method ListAppAssessmentResourceDrifts on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppAssessmentResourceDrifts on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method ListAppAssessmentResourceDrifts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppAssessmentResourceDrifts.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $ListAppAssessmentResourceDriftsResponse =
      $resiliencehub->ListAppAssessmentResourceDrifts(
      AssessmentArn => 'MyArn',
      MaxResults    => 1,                # OPTIONAL
      NextToken     => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListAppAssessmentResourceDriftsResponse->NextToken;
    my $ResourceDrifts =
      $ListAppAssessmentResourceDriftsResponse->ResourceDrifts;

# Returns a L<Paws::Resiliencehub::ListAppAssessmentResourceDriftsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/ListAppAssessmentResourceDrifts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentArn => Str

Amazon Resource Name (ARN) of the assessment. The format for this ARN
is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app-assessment/C<app-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 MaxResults => Int

Maximum number of drift results to include in the response. If more
results exist than the specified C<MaxResults> value, a token is
included in the response so that the remaining results can be
retrieved.



=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppAssessmentResourceDrifts in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

