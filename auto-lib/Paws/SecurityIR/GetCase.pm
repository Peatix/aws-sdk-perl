
package Paws::SecurityIR::GetCase;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/cases/{caseId}/get-case');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::GetCaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::GetCase - Arguments for method GetCase on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCase on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method GetCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCase.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $GetCaseResponse = $security -ir->GetCase(
      CaseId => 'MyCaseId',

    );

    # Results:
    my $ActualIncidentStartDate   = $GetCaseResponse->ActualIncidentStartDate;
    my $CaseArn                   = $GetCaseResponse->CaseArn;
    my $CaseAttachments           = $GetCaseResponse->CaseAttachments;
    my $CaseStatus                = $GetCaseResponse->CaseStatus;
    my $ClosedDate                = $GetCaseResponse->ClosedDate;
    my $ClosureCode               = $GetCaseResponse->ClosureCode;
    my $CreatedDate               = $GetCaseResponse->CreatedDate;
    my $Description               = $GetCaseResponse->Description;
    my $EngagementType            = $GetCaseResponse->EngagementType;
    my $ImpactedAccounts          = $GetCaseResponse->ImpactedAccounts;
    my $ImpactedAwsRegions        = $GetCaseResponse->ImpactedAwsRegions;
    my $ImpactedServices          = $GetCaseResponse->ImpactedServices;
    my $LastUpdatedDate           = $GetCaseResponse->LastUpdatedDate;
    my $PendingAction             = $GetCaseResponse->PendingAction;
    my $ReportedIncidentStartDate = $GetCaseResponse->ReportedIncidentStartDate;
    my $ResolverType              = $GetCaseResponse->ResolverType;
    my $ThreatActorIpAddresses    = $GetCaseResponse->ThreatActorIpAddresses;
    my $Title                     = $GetCaseResponse->Title;
    my $Watchers                  = $GetCaseResponse->Watchers;

    # Returns a L<Paws::SecurityIR::GetCaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/GetCase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

Required element for GetCase to identify the requested case ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCase in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

