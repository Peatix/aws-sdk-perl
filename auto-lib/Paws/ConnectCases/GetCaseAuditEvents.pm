
package Paws::ConnectCases::GetCaseAuditEvents;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCaseAuditEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/cases/{caseId}/audit-history');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::GetCaseAuditEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetCaseAuditEvents - Arguments for method GetCaseAuditEvents on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCaseAuditEvents on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method GetCaseAuditEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCaseAuditEvents.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $GetCaseAuditEventsResponse = $cases->GetCaseAuditEvents(
      CaseId     => 'MyCaseId',
      DomainId   => 'MyDomainId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AuditEvents = $GetCaseAuditEventsResponse->AuditEvents;
    my $NextToken   = $GetCaseAuditEventsResponse->NextToken;

    # Returns a L<Paws::ConnectCases::GetCaseAuditEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/GetCaseAuditEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

A unique identifier of the case.



=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 MaxResults => Int

The maximum number of audit events to return. The current maximum
supported value is 25. This is also the default when no other value is
provided.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCaseAuditEvents in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

