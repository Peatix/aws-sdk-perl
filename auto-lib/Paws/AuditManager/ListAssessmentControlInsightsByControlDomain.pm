
package Paws::AuditManager::ListAssessmentControlInsightsByControlDomain;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assessmentId', required => 1);
  has ControlDomainId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'controlDomainId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssessmentControlInsightsByControlDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/insights/controls-by-assessment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::ListAssessmentControlInsightsByControlDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListAssessmentControlInsightsByControlDomain - Arguments for method ListAssessmentControlInsightsByControlDomain on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssessmentControlInsightsByControlDomain on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method ListAssessmentControlInsightsByControlDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssessmentControlInsightsByControlDomain.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $ListAssessmentControlInsightsByControlDomainResponse =
      $auditmanager->ListAssessmentControlInsightsByControlDomain(
      AssessmentId    => 'MyUUID',
      ControlDomainId => 'MyControlDomainId',
      MaxResults      => 1,                     # OPTIONAL
      NextToken       => 'MyToken',             # OPTIONAL
      );

    # Results:
    my $ControlInsightsByAssessment =
      $ListAssessmentControlInsightsByControlDomainResponse
      ->ControlInsightsByAssessment;
    my $NextToken =
      $ListAssessmentControlInsightsByControlDomainResponse->NextToken;

# Returns a L<Paws::AuditManager::ListAssessmentControlInsightsByControlDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/ListAssessmentControlInsightsByControlDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The unique identifier for the active assessment.



=head2 B<REQUIRED> ControlDomainId => Str

The unique identifier for the control domain.

Audit Manager supports the control domains that are provided by Amazon
Web Services Control Catalog. For information about how to find a list
of available control domains, see C<ListDomains>
(https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html)
in the Amazon Web Services Control Catalog API Reference.



=head2 MaxResults => Int

Represents the maximum number of results on a page or for an API
request call.



=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssessmentControlInsightsByControlDomain in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

