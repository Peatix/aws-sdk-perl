package Paws::Panorama;
  use Moose;
  sub service { 'panorama' }
  sub signing_name { 'panorama' }
  sub version { '2019-07-24' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::CreateApplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJobForDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::CreateJobForDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNodeFromTemplateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::CreateNodeFromTemplateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::CreatePackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePackageImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::CreatePackageImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DeleteDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DeletePackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterPackageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DeregisterPackageVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DescribeApplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplicationInstanceDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DescribeApplicationInstanceDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DescribeDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeviceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DescribeDeviceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DescribeNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNodeFromTemplateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DescribeNodeFromTemplateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DescribePackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePackageImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DescribePackageImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePackageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::DescribePackageVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationInstanceDependencies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListApplicationInstanceDependencies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationInstanceNodeInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListApplicationInstanceNodeInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListApplicationInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevicesJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListDevicesJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNodeFromTemplateJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListNodeFromTemplateJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPackageImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListPackageImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListPackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::ProvisionDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterPackageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::RegisterPackageVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveApplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::RemoveApplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SignalApplicationInstanceNodeInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::SignalApplicationInstanceNodeInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeviceMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Panorama::UpdateDeviceMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateApplicationInstance CreateJobForDevices CreateNodeFromTemplateJob CreatePackage CreatePackageImportJob DeleteDevice DeletePackage DeregisterPackageVersion DescribeApplicationInstance DescribeApplicationInstanceDetails DescribeDevice DescribeDeviceJob DescribeNode DescribeNodeFromTemplateJob DescribePackage DescribePackageImportJob DescribePackageVersion ListApplicationInstanceDependencies ListApplicationInstanceNodeInstances ListApplicationInstances ListDevices ListDevicesJobs ListNodeFromTemplateJobs ListNodes ListPackageImportJobs ListPackages ListTagsForResource ProvisionDevice RegisterPackageVersion RemoveApplicationInstance SignalApplicationInstanceNodeInstances TagResource UntagResource UpdateDeviceMetadata / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama - Perl Interface to AWS AWS Panorama

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Panorama');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Panorama

B<Overview>

This is the I<AWS Panorama API Reference>. For an introduction to the
service, see What is AWS Panorama?
(https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html)
in the I<AWS Panorama Developer Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateApplicationInstance

=over

=item DefaultRuntimeContextDevice => Str

=item ManifestPayload => L<Paws::Panorama::ManifestPayload>

=item [ApplicationInstanceIdToReplace => Str]

=item [Description => Str]

=item [ManifestOverridesPayload => L<Paws::Panorama::ManifestOverridesPayload>]

=item [Name => Str]

=item [RuntimeRoleArn => Str]

=item [Tags => L<Paws::Panorama::TagMap>]


=back

Each argument is described in detail in: L<Paws::Panorama::CreateApplicationInstance>

Returns: a L<Paws::Panorama::CreateApplicationInstanceResponse> instance

Creates an application instance and deploys it to a device.


=head2 CreateJobForDevices

=over

=item DeviceIds => ArrayRef[Str|Undef]

=item JobType => Str

=item [DeviceJobConfig => L<Paws::Panorama::DeviceJobConfig>]


=back

Each argument is described in detail in: L<Paws::Panorama::CreateJobForDevices>

Returns: a L<Paws::Panorama::CreateJobForDevicesResponse> instance

Creates a job to run on a device. A job can update a device's software
or reboot it.


=head2 CreateNodeFromTemplateJob

=over

=item NodeName => Str

=item OutputPackageName => Str

=item OutputPackageVersion => Str

=item TemplateParameters => L<Paws::Panorama::TemplateParametersMap>

=item TemplateType => Str

=item [JobTags => ArrayRef[L<Paws::Panorama::JobResourceTags>]]

=item [NodeDescription => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::CreateNodeFromTemplateJob>

Returns: a L<Paws::Panorama::CreateNodeFromTemplateJobResponse> instance

Creates a camera stream node.


=head2 CreatePackage

=over

=item PackageName => Str

=item [Tags => L<Paws::Panorama::TagMap>]


=back

Each argument is described in detail in: L<Paws::Panorama::CreatePackage>

Returns: a L<Paws::Panorama::CreatePackageResponse> instance

Creates a package and storage location in an Amazon S3 access point.


=head2 CreatePackageImportJob

=over

=item ClientToken => Str

=item InputConfig => L<Paws::Panorama::PackageImportJobInputConfig>

=item JobType => Str

=item OutputConfig => L<Paws::Panorama::PackageImportJobOutputConfig>

=item [JobTags => ArrayRef[L<Paws::Panorama::JobResourceTags>]]


=back

Each argument is described in detail in: L<Paws::Panorama::CreatePackageImportJob>

Returns: a L<Paws::Panorama::CreatePackageImportJobResponse> instance

Imports a node package.


=head2 DeleteDevice

=over

=item DeviceId => Str


=back

Each argument is described in detail in: L<Paws::Panorama::DeleteDevice>

Returns: a L<Paws::Panorama::DeleteDeviceResponse> instance

Deletes a device.


=head2 DeletePackage

=over

=item PackageId => Str

=item [ForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::Panorama::DeletePackage>

Returns: a L<Paws::Panorama::DeletePackageResponse> instance

Deletes a package.

To delete a package, you need permission to call C<s3:DeleteObject> in
addition to permissions for the AWS Panorama API.


=head2 DeregisterPackageVersion

=over

=item PackageId => Str

=item PackageVersion => Str

=item PatchVersion => Str

=item [OwnerAccount => Str]

=item [UpdatedLatestPatchVersion => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::DeregisterPackageVersion>

Returns: a L<Paws::Panorama::DeregisterPackageVersionResponse> instance

Deregisters a package version.


=head2 DescribeApplicationInstance

=over

=item ApplicationInstanceId => Str


=back

Each argument is described in detail in: L<Paws::Panorama::DescribeApplicationInstance>

Returns: a L<Paws::Panorama::DescribeApplicationInstanceResponse> instance

Returns information about an application instance on a device.


=head2 DescribeApplicationInstanceDetails

=over

=item ApplicationInstanceId => Str


=back

Each argument is described in detail in: L<Paws::Panorama::DescribeApplicationInstanceDetails>

Returns: a L<Paws::Panorama::DescribeApplicationInstanceDetailsResponse> instance

Returns information about an application instance's configuration
manifest.


=head2 DescribeDevice

=over

=item DeviceId => Str


=back

Each argument is described in detail in: L<Paws::Panorama::DescribeDevice>

Returns: a L<Paws::Panorama::DescribeDeviceResponse> instance

Returns information about a device.


=head2 DescribeDeviceJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Panorama::DescribeDeviceJob>

Returns: a L<Paws::Panorama::DescribeDeviceJobResponse> instance

Returns information about a device job.


=head2 DescribeNode

=over

=item NodeId => Str

=item [OwnerAccount => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::DescribeNode>

Returns: a L<Paws::Panorama::DescribeNodeResponse> instance

Returns information about a node.


=head2 DescribeNodeFromTemplateJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Panorama::DescribeNodeFromTemplateJob>

Returns: a L<Paws::Panorama::DescribeNodeFromTemplateJobResponse> instance

Returns information about a job to create a camera stream node.


=head2 DescribePackage

=over

=item PackageId => Str


=back

Each argument is described in detail in: L<Paws::Panorama::DescribePackage>

Returns: a L<Paws::Panorama::DescribePackageResponse> instance

Returns information about a package.


=head2 DescribePackageImportJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Panorama::DescribePackageImportJob>

Returns: a L<Paws::Panorama::DescribePackageImportJobResponse> instance

Returns information about a package import job.


=head2 DescribePackageVersion

=over

=item PackageId => Str

=item PackageVersion => Str

=item [OwnerAccount => Str]

=item [PatchVersion => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::DescribePackageVersion>

Returns: a L<Paws::Panorama::DescribePackageVersionResponse> instance

Returns information about a package version.


=head2 ListApplicationInstanceDependencies

=over

=item ApplicationInstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::ListApplicationInstanceDependencies>

Returns: a L<Paws::Panorama::ListApplicationInstanceDependenciesResponse> instance

Returns a list of application instance dependencies.


=head2 ListApplicationInstanceNodeInstances

=over

=item ApplicationInstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::ListApplicationInstanceNodeInstances>

Returns: a L<Paws::Panorama::ListApplicationInstanceNodeInstancesResponse> instance

Returns a list of application node instances.


=head2 ListApplicationInstances

=over

=item [DeviceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::ListApplicationInstances>

Returns: a L<Paws::Panorama::ListApplicationInstancesResponse> instance

Returns a list of application instances.


=head2 ListDevices

=over

=item [DeviceAggregatedStatusFilter => Str]

=item [MaxResults => Int]

=item [NameFilter => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::ListDevices>

Returns: a L<Paws::Panorama::ListDevicesResponse> instance

Returns a list of devices.


=head2 ListDevicesJobs

=over

=item [DeviceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::ListDevicesJobs>

Returns: a L<Paws::Panorama::ListDevicesJobsResponse> instance

Returns a list of jobs.


=head2 ListNodeFromTemplateJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::ListNodeFromTemplateJobs>

Returns: a L<Paws::Panorama::ListNodeFromTemplateJobsResponse> instance

Returns a list of camera stream node jobs.


=head2 ListNodes

=over

=item [Category => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwnerAccount => Str]

=item [PackageName => Str]

=item [PackageVersion => Str]

=item [PatchVersion => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::ListNodes>

Returns: a L<Paws::Panorama::ListNodesResponse> instance

Returns a list of nodes.


=head2 ListPackageImportJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::ListPackageImportJobs>

Returns: a L<Paws::Panorama::ListPackageImportJobsResponse> instance

Returns a list of package import jobs.


=head2 ListPackages

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::ListPackages>

Returns: a L<Paws::Panorama::ListPackagesResponse> instance

Returns a list of packages.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Panorama::ListTagsForResource>

Returns: a L<Paws::Panorama::ListTagsForResourceResponse> instance

Returns a list of tags for a resource.


=head2 ProvisionDevice

=over

=item Name => Str

=item [Description => Str]

=item [NetworkingConfiguration => L<Paws::Panorama::NetworkPayload>]

=item [Tags => L<Paws::Panorama::TagMap>]


=back

Each argument is described in detail in: L<Paws::Panorama::ProvisionDevice>

Returns: a L<Paws::Panorama::ProvisionDeviceResponse> instance

Creates a device and returns a configuration archive. The configuration
archive is a ZIP file that contains a provisioning certificate that is
valid for 5 minutes. Name the configuration archive
C<certificates-omni_I<device-name>.zip> and transfer it to the device
within 5 minutes. Use the included USB storage device and connect it to
the USB 3.0 port next to the HDMI output.


=head2 RegisterPackageVersion

=over

=item PackageId => Str

=item PackageVersion => Str

=item PatchVersion => Str

=item [MarkLatest => Bool]

=item [OwnerAccount => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::RegisterPackageVersion>

Returns: a L<Paws::Panorama::RegisterPackageVersionResponse> instance

Registers a package version.


=head2 RemoveApplicationInstance

=over

=item ApplicationInstanceId => Str


=back

Each argument is described in detail in: L<Paws::Panorama::RemoveApplicationInstance>

Returns: a L<Paws::Panorama::RemoveApplicationInstanceResponse> instance

Removes an application instance.


=head2 SignalApplicationInstanceNodeInstances

=over

=item ApplicationInstanceId => Str

=item NodeSignals => ArrayRef[L<Paws::Panorama::NodeSignal>]


=back

Each argument is described in detail in: L<Paws::Panorama::SignalApplicationInstanceNodeInstances>

Returns: a L<Paws::Panorama::SignalApplicationInstanceNodeInstancesResponse> instance

Signal camera nodes to stop or resume.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Panorama::TagMap>


=back

Each argument is described in detail in: L<Paws::Panorama::TagResource>

Returns: a L<Paws::Panorama::TagResourceResponse> instance

Tags a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Panorama::UntagResource>

Returns: a L<Paws::Panorama::UntagResourceResponse> instance

Removes tags from a resource.


=head2 UpdateDeviceMetadata

=over

=item DeviceId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Panorama::UpdateDeviceMetadata>

Returns: a L<Paws::Panorama::UpdateDeviceMetadataResponse> instance

Updates a device's metadata.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

