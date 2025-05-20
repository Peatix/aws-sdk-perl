
package Paws::AuditManager::ListAssessmentFrameworkShareRequests;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RequestType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'requestType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssessmentFrameworkShareRequests');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessmentFrameworkShareRequests');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::ListAssessmentFrameworkShareRequestsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListAssessmentFrameworkShareRequests - Arguments for method ListAssessmentFrameworkShareRequests on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssessmentFrameworkShareRequests on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method ListAssessmentFrameworkShareRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssessmentFrameworkShareRequests.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $ListAssessmentFrameworkShareRequestsResponse =
      $auditmanager->ListAssessmentFrameworkShareRequests(
      RequestType => 'SENT',
      MaxResults  => 1,            # OPTIONAL
      NextToken   => 'MyToken',    # OPTIONAL
      );

    # Results:
    my $AssessmentFrameworkShareRequests =
      $ListAssessmentFrameworkShareRequestsResponse
      ->AssessmentFrameworkShareRequests;
    my $NextToken = $ListAssessmentFrameworkShareRequestsResponse->NextToken;

# Returns a L<Paws::AuditManager::ListAssessmentFrameworkShareRequestsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/ListAssessmentFrameworkShareRequests>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Represents the maximum number of results on a page or for an API
request call.



=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.



=head2 B<REQUIRED> RequestType => Str

Specifies whether the share request is a sent request or a received
request.

Valid values are: C<"SENT">, C<"RECEIVED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssessmentFrameworkShareRequests in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

