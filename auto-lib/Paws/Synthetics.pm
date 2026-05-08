package Paws::Synthetics;
  use Moose;
  sub service { 'synthetics' }
  sub signing_name { 'synthetics' }
  sub version { '2017-10-11' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::AssociateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::CreateCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DeleteCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCanaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DescribeCanaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCanariesLastRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DescribeCanariesLastRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRuntimeVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DescribeRuntimeVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::DisassociateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::GetCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCanaryRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::GetCanaryRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::GetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::ListAssociatedGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::ListGroupResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::StartCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCanaryDryRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::StartCanaryDryRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::StopCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCanary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Synthetics::UpdateCanary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateResource CreateCanary CreateGroup DeleteCanary DeleteGroup DescribeCanaries DescribeCanariesLastRun DescribeRuntimeVersions DisassociateResource GetCanary GetCanaryRuns GetGroup ListAssociatedGroups ListGroupResources ListGroups ListTagsForResource StartCanary StartCanaryDryRun StopCanary TagResource UntagResource UpdateCanary / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics - Perl Interface to AWS Synthetics

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Synthetics');
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

Amazon CloudWatch Synthetics

You can use Amazon CloudWatch Synthetics to continually monitor your
services. You can create and manage I<canaries>, which are modular,
lightweight scripts that monitor your endpoints and APIs from the
outside-in. You can set up your canaries to run 24 hours a day, once
per minute. The canaries help you check the availability and latency of
your web services and troubleshoot anomalies by investigating load time
data, screenshots of the UI, logs, and metrics. The canaries seamlessly
integrate with CloudWatch ServiceLens to help you trace the causes of
impacted nodes in your applications. For more information, see Using
ServiceLens to Monitor the Health of Your Applications
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html)
in the I<Amazon CloudWatch User Guide>.

Before you create and manage canaries, be aware of the security
considerations. For more information, see Security Considerations for
Synthetics Canaries
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateResource

=over

=item GroupIdentifier => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::AssociateResource>

Returns: a L<Paws::Synthetics::AssociateResourceResponse> instance

Associates a canary with a group. Using groups can help you with
managing and automating your canaries, and you can also view aggregated
run results and statistics for all canaries in a group.

You must run this operation in the Region where the canary exists.


=head2 CreateCanary

=over

=item ArtifactS3Location => Str

=item Code => L<Paws::Synthetics::CanaryCodeInput>

=item ExecutionRoleArn => Str

=item Name => Str

=item RuntimeVersion => Str

=item Schedule => L<Paws::Synthetics::CanaryScheduleInput>

=item [ArtifactConfig => L<Paws::Synthetics::ArtifactConfigInput>]

=item [FailureRetentionPeriodInDays => Int]

=item [ProvisionedResourceCleanup => Str]

=item [ResourcesToReplicateTags => ArrayRef[Str|Undef]]

=item [RunConfig => L<Paws::Synthetics::CanaryRunConfigInput>]

=item [SuccessRetentionPeriodInDays => Int]

=item [Tags => L<Paws::Synthetics::TagMap>]

=item [VpcConfig => L<Paws::Synthetics::VpcConfigInput>]


=back

Each argument is described in detail in: L<Paws::Synthetics::CreateCanary>

Returns: a L<Paws::Synthetics::CreateCanaryResponse> instance

Creates a canary. Canaries are scripts that monitor your endpoints and
APIs from the outside-in. Canaries help you check the availability and
latency of your web services and troubleshoot anomalies by
investigating load time data, screenshots of the UI, logs, and metrics.
You can set up a canary to run continuously or just once.

Do not use C<CreateCanary> to modify an existing canary. Use
UpdateCanary
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html)
instead.

To create canaries, you must have the C<CloudWatchSyntheticsFullAccess>
policy. If you are creating a new IAM role for the canary, you also
need the C<iam:CreateRole>, C<iam:CreatePolicy> and
C<iam:AttachRolePolicy> permissions. For more information, see
Necessary Roles and Permissions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles).

Do not include secrets or proprietary information in your canary names.
The canary name makes up part of the Amazon Resource Name (ARN) for the
canary, and the ARN is included in outbound calls over the internet.
For more information, see Security Considerations for Synthetics
Canaries
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).


=head2 CreateGroup

=over

=item Name => Str

=item [Tags => L<Paws::Synthetics::TagMap>]


=back

Each argument is described in detail in: L<Paws::Synthetics::CreateGroup>

Returns: a L<Paws::Synthetics::CreateGroupResponse> instance

Creates a group which you can use to associate canaries with each
other, including cross-Region canaries. Using groups can help you with
managing and automating your canaries, and you can also view aggregated
run results and statistics for all canaries in a group.

Groups are global resources. When you create a group, it is replicated
across Amazon Web Services Regions, and you can view it and add
canaries to it from any Region. Although the group ARN format reflects
the Region name where it was created, a group is not constrained to any
Region. This means that you can put canaries from multiple Regions into
the same group, and then use that group to view and manage all of those
canaries in a single view.

Groups are supported in all Regions except the Regions that are
disabled by default. For more information about these Regions, see
Enabling a Region
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable).

Each group can contain as many as 10 canaries. You can have as many as
20 groups in your account. Any single canary can be a member of up to
10 groups.


=head2 DeleteCanary

=over

=item Name => Str

=item [DeleteLambda => Bool]


=back

Each argument is described in detail in: L<Paws::Synthetics::DeleteCanary>

Returns: a L<Paws::Synthetics::DeleteCanaryResponse> instance

Permanently deletes the specified canary.

If the canary's C<ProvisionedResourceCleanup> field is set to
C<AUTOMATIC> or you specify C<DeleteLambda> in this operation as
C<true>, CloudWatch Synthetics also deletes the Lambda functions and
layers that are used by the canary.

Other resources used and created by the canary are not automatically
deleted. After you delete a canary, you should also delete the
following:

=over

=item *

The CloudWatch alarms created for this canary. These alarms have a name
of
C<Synthetics-Alarm-I<first-198-characters-of-canary-name>-I<canaryId>-I<alarm
number>>

=item *

Amazon S3 objects and buckets, such as the canary's artifact location.

=item *

IAM roles created for the canary. If they were created in the console,
these roles have the name C<
role/service-role/CloudWatchSyntheticsRole-I<First-21-Characters-of-CanaryName>>

=item *

CloudWatch Logs log groups created for the canary. These logs groups
have the name C</aws/lambda/cwsyn-I<First-21-Characters-of-CanaryName>>

=back

Before you delete a canary, you might want to use C<GetCanary> to
display the information about this canary. Make note of the information
returned by this operation so that you can delete these resources after
you delete the canary.


=head2 DeleteGroup

=over

=item GroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::DeleteGroup>

Returns: a L<Paws::Synthetics::DeleteGroupResponse> instance

Deletes a group. The group doesn't need to be empty to be deleted. If
there are canaries in the group, they are not deleted when you delete
the group.

Groups are a global resource that appear in all Regions, but the
request to delete a group must be made from its home Region. You can
find the home Region of a group within its ARN.


=head2 DescribeCanaries

=over

=item [MaxResults => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::DescribeCanaries>

Returns: a L<Paws::Synthetics::DescribeCanariesResponse> instance

This operation returns a list of the canaries in your account, along
with full details about each canary.

This operation supports resource-level authorization using an IAM
policy and the C<Names> parameter. If you specify the C<Names>
parameter, the operation is successful only if you have authorization
to view all the canaries that you specify in your request. If you do
not have permission to view any of the canaries, the request fails with
a 403 response.

You are required to use the C<Names> parameter if you are logged on to
a user or role that has an IAM policy that restricts which canaries
that you are allowed to view. For more information, see Limiting a user
to viewing specific canaries
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html).


=head2 DescribeCanariesLastRun

=over

=item [MaxResults => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::DescribeCanariesLastRun>

Returns: a L<Paws::Synthetics::DescribeCanariesLastRunResponse> instance

Use this operation to see information from the most recent run of each
canary that you have created.

This operation supports resource-level authorization using an IAM
policy and the C<Names> parameter. If you specify the C<Names>
parameter, the operation is successful only if you have authorization
to view all the canaries that you specify in your request. If you do
not have permission to view any of the canaries, the request fails with
a 403 response.

You are required to use the C<Names> parameter if you are logged on to
a user or role that has an IAM policy that restricts which canaries
that you are allowed to view. For more information, see Limiting a user
to viewing specific canaries
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html).


=head2 DescribeRuntimeVersions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::DescribeRuntimeVersions>

Returns: a L<Paws::Synthetics::DescribeRuntimeVersionsResponse> instance

Returns a list of Synthetics canary runtime versions. For more
information, see Canary Runtime Versions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).


=head2 DisassociateResource

=over

=item GroupIdentifier => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::DisassociateResource>

Returns: a L<Paws::Synthetics::DisassociateResourceResponse> instance

Removes a canary from a group. You must run this operation in the
Region where the canary exists.


=head2 GetCanary

=over

=item Name => Str

=item [DryRunId => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::GetCanary>

Returns: a L<Paws::Synthetics::GetCanaryResponse> instance

Retrieves complete information about one canary. You must specify the
name of the canary that you want. To get a list of canaries and their
names, use DescribeCanaries
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html).


=head2 GetCanaryRuns

=over

=item Name => Str

=item [DryRunId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RunType => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::GetCanaryRuns>

Returns: a L<Paws::Synthetics::GetCanaryRunsResponse> instance

Retrieves a list of runs for a specified canary.


=head2 GetGroup

=over

=item GroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::GetGroup>

Returns: a L<Paws::Synthetics::GetGroupResponse> instance

Returns information about one group. Groups are a global resource, so
you can use this operation from any Region.


=head2 ListAssociatedGroups

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::ListAssociatedGroups>

Returns: a L<Paws::Synthetics::ListAssociatedGroupsResponse> instance

Returns a list of the groups that the specified canary is associated
with. The canary that you specify must be in the current Region.


=head2 ListGroupResources

=over

=item GroupIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::ListGroupResources>

Returns: a L<Paws::Synthetics::ListGroupResourcesResponse> instance

This operation returns a list of the ARNs of the canaries that are
associated with the specified group.


=head2 ListGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Synthetics::ListGroups>

Returns: a L<Paws::Synthetics::ListGroupsResponse> instance

Returns a list of all groups in the account, displaying their names,
unique IDs, and ARNs. The groups from all Regions are returned.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::ListTagsForResource>

Returns: a L<Paws::Synthetics::ListTagsForResourceResponse> instance

Displays the tags associated with a canary or group.


=head2 StartCanary

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::StartCanary>

Returns: a L<Paws::Synthetics::StartCanaryResponse> instance

Use this operation to run a canary that has already been created. The
frequency of the canary runs is determined by the value of the canary's
C<Schedule>. To see a canary's schedule, use GetCanary
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html).


=head2 StartCanaryDryRun

=over

=item Name => Str

=item [ArtifactConfig => L<Paws::Synthetics::ArtifactConfigInput>]

=item [ArtifactS3Location => Str]

=item [Code => L<Paws::Synthetics::CanaryCodeInput>]

=item [ExecutionRoleArn => Str]

=item [FailureRetentionPeriodInDays => Int]

=item [ProvisionedResourceCleanup => Str]

=item [RunConfig => L<Paws::Synthetics::CanaryRunConfigInput>]

=item [RuntimeVersion => Str]

=item [SuccessRetentionPeriodInDays => Int]

=item [VisualReference => L<Paws::Synthetics::VisualReferenceInput>]

=item [VpcConfig => L<Paws::Synthetics::VpcConfigInput>]


=back

Each argument is described in detail in: L<Paws::Synthetics::StartCanaryDryRun>

Returns: a L<Paws::Synthetics::StartCanaryDryRunResponse> instance

Use this operation to start a dry run for a canary that has already
been created


=head2 StopCanary

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Synthetics::StopCanary>

Returns: a L<Paws::Synthetics::StopCanaryResponse> instance

Stops the canary to prevent all future runs. If the canary is currently
running,the run that is in progress completes on its own, publishes
metrics, and uploads artifacts, but it is not recorded in Synthetics as
a completed run.

You can use C<StartCanary> to start it running again with the
canaryE<rsquo>s current schedule at any point in the future.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Synthetics::TagMap>


=back

Each argument is described in detail in: L<Paws::Synthetics::TagResource>

Returns: a L<Paws::Synthetics::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified canary or
group.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the C<TagResource> action with a resource that already has
tags. If you specify a new tag key for the resource, this tag is
appended to the list of tags associated with the resource. If you
specify a tag key that is already associated with the resource, the new
tag value that you specify replaces the previous value for that tag.

You can associate as many as 50 tags with a canary or group.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Synthetics::UntagResource>

Returns: a L<Paws::Synthetics::UntagResourceResponse> instance

Removes one or more tags from the specified resource.


=head2 UpdateCanary

=over

=item Name => Str

=item [ArtifactConfig => L<Paws::Synthetics::ArtifactConfigInput>]

=item [ArtifactS3Location => Str]

=item [Code => L<Paws::Synthetics::CanaryCodeInput>]

=item [DryRunId => Str]

=item [ExecutionRoleArn => Str]

=item [FailureRetentionPeriodInDays => Int]

=item [ProvisionedResourceCleanup => Str]

=item [RunConfig => L<Paws::Synthetics::CanaryRunConfigInput>]

=item [RuntimeVersion => Str]

=item [Schedule => L<Paws::Synthetics::CanaryScheduleInput>]

=item [SuccessRetentionPeriodInDays => Int]

=item [VisualReference => L<Paws::Synthetics::VisualReferenceInput>]

=item [VpcConfig => L<Paws::Synthetics::VpcConfigInput>]


=back

Each argument is described in detail in: L<Paws::Synthetics::UpdateCanary>

Returns: a L<Paws::Synthetics::UpdateCanaryResponse> instance

Updates the configuration of a canary that has already been created.

You can't use this operation to update the tags of an existing canary.
To change the tags of an existing canary, use TagResource
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_TagResource.html).

When you use the C<dryRunId> field when updating a canary, the only
other field you can provide is the C<Schedule>. Adding any other field
will thrown an exception.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

