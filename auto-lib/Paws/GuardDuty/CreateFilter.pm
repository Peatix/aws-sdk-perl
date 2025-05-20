
package Paws::GuardDuty::CreateFilter;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FindingCriteria => (is => 'ro', isa => 'Paws::GuardDuty::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Rank => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'rank');
  has Tags => (is => 'ro', isa => 'Paws::GuardDuty::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/filter');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateFilter - Arguments for method CreateFilter on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFilter on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFilter.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateFilterResponse = $guardduty->CreateFilter(
      DetectorId      => 'MyDetectorId',
      FindingCriteria => {
        Criterion => {
          'MyString' => {
            Eq                 => [ 'MyString', ... ],    # OPTIONAL
            Equals             => [ 'MyString', ... ],    # OPTIONAL
            GreaterThan        => 1,                      # OPTIONAL
            GreaterThanOrEqual => 1,                      # OPTIONAL
            Gt                 => 1,                      # OPTIONAL
            Gte                => 1,                      # OPTIONAL
            LessThan           => 1,                      # OPTIONAL
            LessThanOrEqual    => 1,                      # OPTIONAL
            Lt                 => 1,                      # OPTIONAL
            Lte                => 1,                      # OPTIONAL
            Neq                => [ 'MyString', ... ],    # OPTIONAL
            NotEquals          => [ 'MyString', ... ],    # OPTIONAL
          },
        },    # OPTIONAL
      },
      Name        => 'MyFilterName',
      Action      => 'NOOP',                   # OPTIONAL
      ClientToken => 'MyClientToken',          # OPTIONAL
      Description => 'MyFilterDescription',    # OPTIONAL
      Rank        => 1,                        # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Name = $CreateFilterResponse->Name;

    # Returns a L<Paws::GuardDuty::CreateFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateFilter>

=head1 ATTRIBUTES


=head2 Action => Str

Specifies the action that is to be applied to the findings that match
the filter.

Valid values are: C<"NOOP">, C<"ARCHIVE">

=head2 ClientToken => Str

The idempotency token for the create request.



=head2 Description => Str

The description of the filter. Valid characters include alphanumeric
characters, and special characters such as hyphen, period, colon,
underscore, parentheses (C<{ }>, C<[ ]>, and C<( )>), forward slash,
horizontal tab, vertical tab, newline, form feed, return, and
whitespace.



=head2 B<REQUIRED> DetectorId => Str

The detector ID associated with the GuardDuty account for which you
want to create a filter.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.



=head2 B<REQUIRED> FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

Represents the criteria to be used in the filter for querying findings.

You can only use the following attributes to query findings:

=over

=item *

accountId

=item *

id

=item *

region

=item *

severity

To filter on the basis of severity, the API and CLI use the following
input list for the FindingCriteria
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_FindingCriteria.html)
condition:

=over

=item *

B<Low>: C<["1", "2", "3"]>

=item *

B<Medium>: C<["4", "5", "6"]>

=item *

B<High>: C<["7", "8"]>

=item *

B<Critical>: C<["9", "10"]>

=back

For more information, see Findings severity levels
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-severity.html)
in the I<Amazon GuardDuty User Guide>.

=item *

type

=item *

updatedAt

Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or
YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains
milliseconds.

=item *

resource.accessKeyDetails.accessKeyId

=item *

resource.accessKeyDetails.principalId

=item *

resource.accessKeyDetails.userName

=item *

resource.accessKeyDetails.userType

=item *

resource.instanceDetails.iamInstanceProfile.id

=item *

resource.instanceDetails.imageId

=item *

resource.instanceDetails.instanceId

=item *

resource.instanceDetails.tags.key

=item *

resource.instanceDetails.tags.value

=item *

resource.instanceDetails.networkInterfaces.ipv6Addresses

=item *

resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress

=item *

resource.instanceDetails.networkInterfaces.publicDnsName

=item *

resource.instanceDetails.networkInterfaces.publicIp

=item *

resource.instanceDetails.networkInterfaces.securityGroups.groupId

=item *

resource.instanceDetails.networkInterfaces.securityGroups.groupName

=item *

resource.instanceDetails.networkInterfaces.subnetId

=item *

resource.instanceDetails.networkInterfaces.vpcId

=item *

resource.instanceDetails.outpostArn

=item *

resource.resourceType

=item *

resource.s3BucketDetails.publicAccess.effectivePermissions

=item *

resource.s3BucketDetails.name

=item *

resource.s3BucketDetails.tags.key

=item *

resource.s3BucketDetails.tags.value

=item *

resource.s3BucketDetails.type

=item *

service.action.actionType

=item *

service.action.awsApiCallAction.api

=item *

service.action.awsApiCallAction.callerType

=item *

service.action.awsApiCallAction.errorCode

=item *

service.action.awsApiCallAction.remoteIpDetails.city.cityName

=item *

service.action.awsApiCallAction.remoteIpDetails.country.countryName

=item *

service.action.awsApiCallAction.remoteIpDetails.ipAddressV4

=item *

service.action.awsApiCallAction.remoteIpDetails.ipAddressV6

=item *

service.action.awsApiCallAction.remoteIpDetails.organization.asn

=item *

service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg

=item *

service.action.awsApiCallAction.serviceName

=item *

service.action.dnsRequestAction.domain

=item *

service.action.dnsRequestAction.domainWithSuffix

=item *

service.action.networkConnectionAction.blocked

=item *

service.action.networkConnectionAction.connectionDirection

=item *

service.action.networkConnectionAction.localPortDetails.port

=item *

service.action.networkConnectionAction.protocol

=item *

service.action.networkConnectionAction.remoteIpDetails.city.cityName

=item *

service.action.networkConnectionAction.remoteIpDetails.country.countryName

=item *

service.action.networkConnectionAction.remoteIpDetails.ipAddressV4

=item *

service.action.networkConnectionAction.remoteIpDetails.ipAddressV6

=item *

service.action.networkConnectionAction.remoteIpDetails.organization.asn

=item *

service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg

=item *

service.action.networkConnectionAction.remotePortDetails.port

=item *

service.action.awsApiCallAction.remoteAccountDetails.affiliated

=item *

service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV4

=item *

service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV6

=item *

service.action.kubernetesApiCallAction.namespace

=item *

service.action.kubernetesApiCallAction.remoteIpDetails.organization.asn

=item *

service.action.kubernetesApiCallAction.requestUri

=item *

service.action.kubernetesApiCallAction.statusCode

=item *

service.action.networkConnectionAction.localIpDetails.ipAddressV4

=item *

service.action.networkConnectionAction.localIpDetails.ipAddressV6

=item *

service.action.networkConnectionAction.protocol

=item *

service.action.awsApiCallAction.serviceName

=item *

service.action.awsApiCallAction.remoteAccountDetails.accountId

=item *

service.additionalInfo.threatListName

=item *

service.resourceRole

=item *

resource.eksClusterDetails.name

=item *

resource.kubernetesDetails.kubernetesWorkloadDetails.name

=item *

resource.kubernetesDetails.kubernetesWorkloadDetails.namespace

=item *

resource.kubernetesDetails.kubernetesUserDetails.username

=item *

resource.kubernetesDetails.kubernetesWorkloadDetails.containers.image

=item *

resource.kubernetesDetails.kubernetesWorkloadDetails.containers.imagePrefix

=item *

service.ebsVolumeScanDetails.scanId

=item *

service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.name

=item *

service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.severity

=item *

service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.hash

=item *

resource.ecsClusterDetails.name

=item *

resource.ecsClusterDetails.taskDetails.containers.image

=item *

resource.ecsClusterDetails.taskDetails.definitionArn

=item *

resource.containerDetails.image

=item *

resource.rdsDbInstanceDetails.dbInstanceIdentifier

=item *

resource.rdsDbInstanceDetails.dbClusterIdentifier

=item *

resource.rdsDbInstanceDetails.engine

=item *

resource.rdsDbUserDetails.user

=item *

resource.rdsDbInstanceDetails.tags.key

=item *

resource.rdsDbInstanceDetails.tags.value

=item *

service.runtimeDetails.process.executableSha256

=item *

service.runtimeDetails.process.name

=item *

service.runtimeDetails.process.executablePath

=item *

resource.lambdaDetails.functionName

=item *

resource.lambdaDetails.functionArn

=item *

resource.lambdaDetails.tags.key

=item *

resource.lambdaDetails.tags.value

=back




=head2 B<REQUIRED> Name => Str

The name of the filter. Valid characters include period (.), underscore
(_), dash (-), and alphanumeric characters. A whitespace is considered
to be an invalid character.



=head2 Rank => Int

Specifies the position of the filter in the list of current filters.
Also specifies the order in which this filter is applied to the
findings.



=head2 Tags => L<Paws::GuardDuty::TagMap>

The tags to be added to a new filter resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFilter in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

