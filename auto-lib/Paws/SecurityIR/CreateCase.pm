
package Paws::SecurityIR::CreateCase;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has EngagementType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engagementType', required => 1);
  has ImpactedAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'impactedAccounts', required => 1);
  has ImpactedAwsRegions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ImpactedAwsRegion]', traits => ['NameInRequest'], request_name => 'impactedAwsRegions');
  has ImpactedServices => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'impactedServices');
  has ReportedIncidentStartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportedIncidentStartDate', required => 1);
  has ResolverType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolverType', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SecurityIR::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has ThreatActorIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::ThreatActorIp]', traits => ['NameInRequest'], request_name => 'threatActorIpAddresses');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title', required => 1);
  has Watchers => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::Watcher]', traits => ['NameInRequest'], request_name => 'watchers', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/create-case');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::CreateCaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::CreateCase - Arguments for method CreateCase on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCase on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method CreateCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCase.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $CreateCaseResponse = $security -ir->CreateCase(
      Description      => 'MyCaseDescription',
      EngagementType   => 'Security Incident',
      ImpactedAccounts => [
        'MyAWSAccountId', ...    # min: 12, max: 12
      ],
      ReportedIncidentStartDate => '1970-01-01T01:00:00',
      ResolverType              => 'AWS',
      Title                     => 'MyCaseTitle',
      Watchers                  => [
        {
          Email    => 'MyEmailAddress',    # min: 6, max: 254
          JobTitle => 'MyJobTitle',        # min: 1, max: 50; OPTIONAL
          Name     => 'MyPersonName',      # min: 1, max: 50; OPTIONAL
        },
        ...
      ],
      ClientToken        => 'MyCreateCaseRequestClientTokenString',   # OPTIONAL
      ImpactedAwsRegions => [
        {
          Region => 'af-south-1'
          , # values: af-south-1, ap-east-1, ap-northeast-1, ap-northeast-2, ap-northeast-3, ap-south-1, ap-south-2, ap-southeast-1, ap-southeast-2, ap-southeast-3, ap-southeast-4, ap-southeast-5, ca-central-1, ca-west-1, cn-north-1, cn-northwest-1, eu-central-1, eu-central-2, eu-north-1, eu-south-1, eu-south-2, eu-west-1, eu-west-2, eu-west-3, il-central-1, me-central-1, me-south-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2

        },
        ...
      ],    # OPTIONAL
      ImpactedServices => [
        'MyAwsService', ...    # min: 3, max: 50
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      ThreatActorIpAddresses => [
        {
          IpAddress => 'MyIPAddress',
          UserAgent => 'MyUserAgent',    # min: 1, max: 500; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CaseId = $CreateCaseResponse->CaseId;

    # Returns a L<Paws::SecurityIR::CreateCaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/CreateCase>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Required element used in combination with CreateCase.



=head2 B<REQUIRED> Description => Str

Required element used in combination with CreateCase to provide a
description for the new case.



=head2 B<REQUIRED> EngagementType => Str

Required element used in combination with CreateCase to provide an
engagement type for the new cases. Available engagement types include
Security Incident | Investigation

Valid values are: C<"Security Incident">, C<"Investigation">

=head2 B<REQUIRED> ImpactedAccounts => ArrayRef[Str|Undef]

Required element used in combination with CreateCase to provide a list
of impacted accounts.



=head2 ImpactedAwsRegions => ArrayRef[L<Paws::SecurityIR::ImpactedAwsRegion>]

An optional element used in combination with CreateCase to provide a
list of impacted regions.



=head2 ImpactedServices => ArrayRef[Str|Undef]

An optional element used in combination with CreateCase to provide a
list of services impacted.



=head2 B<REQUIRED> ReportedIncidentStartDate => Str

Required element used in combination with CreateCase to provide an
initial start date for the unauthorized activity.



=head2 B<REQUIRED> ResolverType => Str

Required element used in combination with CreateCase to identify the
resolver type. Available resolvers include self-supported |
aws-supported.

Valid values are: C<"AWS">, C<"Self">

=head2 Tags => L<Paws::SecurityIR::TagMap>

An optional element used in combination with CreateCase to add customer
specified tags to a case.



=head2 ThreatActorIpAddresses => ArrayRef[L<Paws::SecurityIR::ThreatActorIp>]

An optional element used in combination with CreateCase to provide a
list of suspicious internet protocol addresses associated with
unauthorized activity.



=head2 B<REQUIRED> Title => Str

Required element used in combination with CreateCase to provide a title
for the new case.



=head2 B<REQUIRED> Watchers => ArrayRef[L<Paws::SecurityIR::Watcher>]

Required element used in combination with CreateCase to provide a list
of entities to receive notifications for case updates.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCase in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

