
package Paws::SecurityIR::UpdateCase;
  use Moose;
  has ActualIncidentStartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actualIncidentStartDate');
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EngagementType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engagementType');
  has ImpactedAccountsToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'impactedAccountsToAdd');
  has ImpactedAccountsToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'impactedAccountsToDelete');
  has ImpactedAwsRegionsToAdd => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ImpactedAwsRegion]', traits => ['NameInRequest'], request_name => 'impactedAwsRegionsToAdd');
  has ImpactedAwsRegionsToDelete => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ImpactedAwsRegion]', traits => ['NameInRequest'], request_name => 'impactedAwsRegionsToDelete');
  has ImpactedServicesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'impactedServicesToAdd');
  has ImpactedServicesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'impactedServicesToDelete');
  has ReportedIncidentStartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportedIncidentStartDate');
  has ThreatActorIpAddressesToAdd => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ThreatActorIp]', traits => ['NameInRequest'], request_name => 'threatActorIpAddressesToAdd');
  has ThreatActorIpAddressesToDelete => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ThreatActorIp]', traits => ['NameInRequest'], request_name => 'threatActorIpAddressesToDelete');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');
  has WatchersToAdd => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::Watcher]', traits => ['NameInRequest'], request_name => 'watchersToAdd');
  has WatchersToDelete => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::Watcher]', traits => ['NameInRequest'], request_name => 'watchersToDelete');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/cases/{caseId}/update-case');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::UpdateCaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::UpdateCase - Arguments for method UpdateCase on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCase on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method UpdateCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCase.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $UpdateCaseResponse = $security -ir->UpdateCase(
      CaseId                  => 'MyCaseId',
      ActualIncidentStartDate => '1970-01-01T01:00:00',    # OPTIONAL
      Description             => 'MyCaseDescription',      # OPTIONAL
      EngagementType          => 'Security Incident',      # OPTIONAL
      ImpactedAccountsToAdd   => [
        'MyAWSAccountId', ...                              # min: 12, max: 12
      ],    # OPTIONAL
      ImpactedAccountsToDelete => [
        'MyAWSAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      ImpactedAwsRegionsToAdd => [
        {
          Region => 'af-south-1'
          , # values: af-south-1, ap-east-1, ap-northeast-1, ap-northeast-2, ap-northeast-3, ap-south-1, ap-south-2, ap-southeast-1, ap-southeast-2, ap-southeast-3, ap-southeast-4, ap-southeast-5, ca-central-1, ca-west-1, cn-north-1, cn-northwest-1, eu-central-1, eu-central-2, eu-north-1, eu-south-1, eu-south-2, eu-west-1, eu-west-2, eu-west-3, il-central-1, me-central-1, me-south-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2

        },
        ...
      ],    # OPTIONAL
      ImpactedAwsRegionsToDelete => [
        {
          Region => 'af-south-1'
          , # values: af-south-1, ap-east-1, ap-northeast-1, ap-northeast-2, ap-northeast-3, ap-south-1, ap-south-2, ap-southeast-1, ap-southeast-2, ap-southeast-3, ap-southeast-4, ap-southeast-5, ca-central-1, ca-west-1, cn-north-1, cn-northwest-1, eu-central-1, eu-central-2, eu-north-1, eu-south-1, eu-south-2, eu-west-1, eu-west-2, eu-west-3, il-central-1, me-central-1, me-south-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2

        },
        ...
      ],    # OPTIONAL
      ImpactedServicesToAdd => [
        'MyAwsService', ...    # min: 3, max: 50
      ],    # OPTIONAL
      ImpactedServicesToDelete => [
        'MyAwsService', ...    # min: 3, max: 50
      ],    # OPTIONAL
      ReportedIncidentStartDate   => '1970-01-01T01:00:00',    # OPTIONAL
      ThreatActorIpAddressesToAdd => [
        {
          IpAddress => 'MyIPAddress',
          UserAgent => 'MyUserAgent',    # min: 1, max: 500; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ThreatActorIpAddressesToDelete => [
        {
          IpAddress => 'MyIPAddress',
          UserAgent => 'MyUserAgent',    # min: 1, max: 500; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Title         => 'MyCaseTitle',    # OPTIONAL
      WatchersToAdd => [
        {
          Email    => 'MyEmailAddress',    # min: 6, max: 254
          JobTitle => 'MyJobTitle',        # min: 1, max: 50; OPTIONAL
          Name     => 'MyPersonName',      # min: 1, max: 50; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      WatchersToDelete => [
        {
          Email    => 'MyEmailAddress',    # min: 6, max: 254
          JobTitle => 'MyJobTitle',        # min: 1, max: 50; OPTIONAL
          Name     => 'MyPersonName',      # min: 1, max: 50; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/UpdateCase>

=head1 ATTRIBUTES


=head2 ActualIncidentStartDate => Str

Optional element for UpdateCase to provide content for the incident
start date field.



=head2 B<REQUIRED> CaseId => Str

Required element for UpdateCase to identify the case ID for updates.



=head2 Description => Str

Optional element for UpdateCase to provide content for the description
field.



=head2 EngagementType => Str

Optional element for UpdateCase to provide content for the engagement
type field. C<Available engagement types include Security Incident |
Investigation>.

Valid values are: C<"Security Incident">, C<"Investigation">

=head2 ImpactedAccountsToAdd => ArrayRef[Str|Undef]

Optional element for UpdateCase to provide content to add accounts
impacted.



=head2 ImpactedAccountsToDelete => ArrayRef[Str|Undef]

Optional element for UpdateCase to provide content to add accounts
impacted.



=head2 ImpactedAwsRegionsToAdd => ArrayRef[L<Paws::SecurityIR::ImpactedAwsRegion>]

Optional element for UpdateCase to provide content to add regions
impacted.



=head2 ImpactedAwsRegionsToDelete => ArrayRef[L<Paws::SecurityIR::ImpactedAwsRegion>]

Optional element for UpdateCase to provide content to remove regions
impacted.



=head2 ImpactedServicesToAdd => ArrayRef[Str|Undef]

Optional element for UpdateCase to provide content to add services
impacted.



=head2 ImpactedServicesToDelete => ArrayRef[Str|Undef]

Optional element for UpdateCase to provide content to remove services
impacted.



=head2 ReportedIncidentStartDate => Str

Optional element for UpdateCase to provide content for the customer
reported incident start date field.



=head2 ThreatActorIpAddressesToAdd => ArrayRef[L<Paws::SecurityIR::ThreatActorIp>]

Optional element for UpdateCase to provide content to add additional
suspicious IP addresses related to a case.



=head2 ThreatActorIpAddressesToDelete => ArrayRef[L<Paws::SecurityIR::ThreatActorIp>]

Optional element for UpdateCase to provide content to remove suspicious
IP addresses from a case.



=head2 Title => Str

Optional element for UpdateCase to provide content for the title field.



=head2 WatchersToAdd => ArrayRef[L<Paws::SecurityIR::Watcher>]

Optional element for UpdateCase to provide content to add additional
watchers to a case.



=head2 WatchersToDelete => ArrayRef[L<Paws::SecurityIR::Watcher>]

Optional element for UpdateCase to provide content to remove existing
watchers from a case.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCase in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

