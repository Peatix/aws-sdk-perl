package Paws::CloudHSMv2;
  use Moose;
  sub service { 'cloudhsmv2' }
  sub signing_name { 'cloudhsm' }
  sub version { '2017-04-28' }
  sub target_prefix { 'BaldrApiService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CopyBackupToRegion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::CopyBackupToRegion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHsm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::CreateHsm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DeleteBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHsm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DeleteHsm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DescribeBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DescribeClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitializeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::InitializeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyBackupAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::ModifyBackupAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::ModifyCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::RestoreBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllBackups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeBackups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeBackups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Backups }, @{ $next_result->Backups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Backups') foreach (@{ $result->Backups });
        $result = $self->DescribeBackups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Backups') foreach (@{ $result->Backups });
    }

    return undef
  }
  sub DescribeAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClusters(@_, NextToken => $next_result->NextToken);
        push @{ $result->Clusters }, @{ $next_result->Clusters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
        $result = $self->DescribeClusters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
    }

    return undef
  }
  sub ListAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->TagList }, @{ $next_result->TagList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TagList') foreach (@{ $result->TagList });
        $result = $self->ListTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TagList') foreach (@{ $result->TagList });
    }

    return undef
  }


  sub operations { qw/CopyBackupToRegion CreateCluster CreateHsm DeleteBackup DeleteCluster DeleteHsm DeleteResourcePolicy DescribeBackups DescribeClusters GetResourcePolicy InitializeCluster ListTags ModifyBackupAttributes ModifyCluster PutResourcePolicy RestoreBackup TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2 - Perl Interface to AWS AWS CloudHSM V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudHSMv2');
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

For more information about CloudHSM, see CloudHSM
(http://aws.amazon.com/cloudhsm/) and the CloudHSM User Guide
(https://docs.aws.amazon.com/cloudhsm/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28>


=head1 METHODS

=head2 CopyBackupToRegion

=over

=item BackupId => Str

=item DestinationRegion => Str

=item [TagList => ArrayRef[L<Paws::CloudHSMv2::Tag>]]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::CopyBackupToRegion>

Returns: a L<Paws::CloudHSMv2::CopyBackupToRegionResponse> instance

Copy an CloudHSM cluster backup to a different region.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM backup in a different Amazon Web Services account.


=head2 CreateCluster

=over

=item HsmType => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [BackupRetentionPolicy => L<Paws::CloudHSMv2::BackupRetentionPolicy>]

=item [Mode => Str]

=item [NetworkType => Str]

=item [SourceBackupId => Str]

=item [TagList => ArrayRef[L<Paws::CloudHSMv2::Tag>]]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::CreateCluster>

Returns: a L<Paws::CloudHSMv2::CreateClusterResponse> instance

Creates a new CloudHSM cluster.

B<Cross-account use:> Yes. To perform this operation with an CloudHSM
backup in a different AWS account, specify the full backup ARN in the
value of the SourceBackupId parameter.


=head2 CreateHsm

=over

=item AvailabilityZone => Str

=item ClusterId => Str

=item [IpAddress => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::CreateHsm>

Returns: a L<Paws::CloudHSMv2::CreateHsmResponse> instance

Creates a new hardware security module (HSM) in the specified CloudHSM
cluster.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM cluster in a different Amazon Web Service account.


=head2 DeleteBackup

=over

=item BackupId => Str


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::DeleteBackup>

Returns: a L<Paws::CloudHSMv2::DeleteBackupResponse> instance

Deletes a specified CloudHSM backup. A backup can be restored up to 7
days after the DeleteBackup request is made. For more information on
restoring a backup, see RestoreBackup.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM backup in a different Amazon Web Services account.


=head2 DeleteCluster

=over

=item ClusterId => Str


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::DeleteCluster>

Returns: a L<Paws::CloudHSMv2::DeleteClusterResponse> instance

Deletes the specified CloudHSM cluster. Before you can delete a
cluster, you must delete all HSMs in the cluster. To see if the cluster
contains any HSMs, use DescribeClusters. To delete an HSM, use
DeleteHsm.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM cluster in a different Amazon Web Services account.


=head2 DeleteHsm

=over

=item ClusterId => Str

=item [EniId => Str]

=item [EniIp => Str]

=item [HsmId => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::DeleteHsm>

Returns: a L<Paws::CloudHSMv2::DeleteHsmResponse> instance

Deletes the specified HSM. To specify an HSM, you can use its
identifier (ID), the IP address of the HSM's elastic network interface
(ENI), or the ID of the HSM's ENI. You need to specify only one of
these values. To find these values, use DescribeClusters.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM hsm in a different Amazon Web Services account.


=head2 DeleteResourcePolicy

=over

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::DeleteResourcePolicy>

Returns: a L<Paws::CloudHSMv2::DeleteResourcePolicyResponse> instance

Deletes an CloudHSM resource policy. Deleting a resource policy will
result in the resource being unshared and removed from any RAM resource
shares. Deleting the resource policy attached to a backup will not
impact any clusters created from that backup.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM resource in a different Amazon Web Services account.


=head2 DescribeBackups

=over

=item [Filters => L<Paws::CloudHSMv2::Filters>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Shared => Bool]

=item [SortAscending => Bool]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::DescribeBackups>

Returns: a L<Paws::CloudHSMv2::DescribeBackupsResponse> instance

Gets information about backups of CloudHSM clusters. Lists either the
backups you own or the backups shared with you when the Shared
parameter is true.

This is a paginated operation, which means that each response might
contain only a subset of all the backups. When the response contains
only a subset of backups, it includes a C<NextToken> value. Use this
value in a subsequent C<DescribeBackups> request to get more backups.
When you receive a response with no C<NextToken> (or an empty or null
value), that means there are no more backups to get.

B<Cross-account use:> Yes. Customers can describe backups in other
Amazon Web Services accounts that are shared with them.


=head2 DescribeClusters

=over

=item [Filters => L<Paws::CloudHSMv2::Filters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::DescribeClusters>

Returns: a L<Paws::CloudHSMv2::DescribeClustersResponse> instance

Gets information about CloudHSM clusters.

This is a paginated operation, which means that each response might
contain only a subset of all the clusters. When the response contains
only a subset of clusters, it includes a C<NextToken> value. Use this
value in a subsequent C<DescribeClusters> request to get more clusters.
When you receive a response with no C<NextToken> (or an empty or null
value), that means there are no more clusters to get.

B<Cross-account use:> No. You cannot perform this operation on CloudHSM
clusters in a different Amazon Web Services account.


=head2 GetResourcePolicy

=over

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::GetResourcePolicy>

Returns: a L<Paws::CloudHSMv2::GetResourcePolicyResponse> instance

Retrieves the resource policy document attached to a given resource.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM resource in a different Amazon Web Services account.


=head2 InitializeCluster

=over

=item ClusterId => Str

=item SignedCert => Str

=item TrustAnchor => Str


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::InitializeCluster>

Returns: a L<Paws::CloudHSMv2::InitializeClusterResponse> instance

Claims an CloudHSM cluster by submitting the cluster certificate issued
by your issuing certificate authority (CA) and the CA's root
certificate. Before you can claim a cluster, you must sign the
cluster's certificate signing request (CSR) with your issuing CA. To
get the cluster's CSR, use DescribeClusters.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM cluster in a different Amazon Web Services account.


=head2 ListTags

=over

=item ResourceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::ListTags>

Returns: a L<Paws::CloudHSMv2::ListTagsResponse> instance

Gets a list of tags for the specified CloudHSM cluster.

This is a paginated operation, which means that each response might
contain only a subset of all the tags. When the response contains only
a subset of tags, it includes a C<NextToken> value. Use this value in a
subsequent C<ListTags> request to get more tags. When you receive a
response with no C<NextToken> (or an empty or null value), that means
there are no more tags to get.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM resource in a different Amazon Web Services account.


=head2 ModifyBackupAttributes

=over

=item BackupId => Str

=item NeverExpires => Bool


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::ModifyBackupAttributes>

Returns: a L<Paws::CloudHSMv2::ModifyBackupAttributesResponse> instance

Modifies attributes for CloudHSM backup.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM backup in a different Amazon Web Services account.


=head2 ModifyCluster

=over

=item ClusterId => Str

=item [BackupRetentionPolicy => L<Paws::CloudHSMv2::BackupRetentionPolicy>]

=item [HsmType => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::ModifyCluster>

Returns: a L<Paws::CloudHSMv2::ModifyClusterResponse> instance

Modifies CloudHSM cluster.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM cluster in a different Amazon Web Services account.


=head2 PutResourcePolicy

=over

=item [Policy => Str]

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::PutResourcePolicy>

Returns: a L<Paws::CloudHSMv2::PutResourcePolicyResponse> instance

Creates or updates an CloudHSM resource policy. A resource policy helps
you to define the IAM entity (for example, an Amazon Web Services
account) that can manage your CloudHSM resources. The following
resources support CloudHSM resource policies:

=over

=item *

Backup - The resource policy allows you to describe the backup and
restore a cluster from the backup in another Amazon Web Services
account.

=back

In order to share a backup, it must be in a 'READY' state and you must
own it.

While you can share a backup using the CloudHSM PutResourcePolicy
operation, we recommend using Resource Access Manager (RAM) instead.
Using RAM provides multiple benefits as it creates the policy for you,
allows multiple resources to be shared at one time, and increases the
discoverability of shared resources. If you use PutResourcePolicy and
want consumers to be able to describe the backups you share with them,
you must promote the backup to a standard RAM Resource Share using the
RAM PromoteResourceShareCreatedFromPolicy API operation. For more
information, see Working with shared backups
(https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html) in
the CloudHSM User Guide

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM resource in a different Amazon Web Services account.


=head2 RestoreBackup

=over

=item BackupId => Str


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::RestoreBackup>

Returns: a L<Paws::CloudHSMv2::RestoreBackupResponse> instance

Restores a specified CloudHSM backup that is in the C<PENDING_DELETION>
state. For more information on deleting a backup, see DeleteBackup.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM backup in a different Amazon Web Services account.


=head2 TagResource

=over

=item ResourceId => Str

=item TagList => ArrayRef[L<Paws::CloudHSMv2::Tag>]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::TagResource>

Returns: a L<Paws::CloudHSMv2::TagResourceResponse> instance

Adds or overwrites one or more tags for the specified CloudHSM cluster.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM resource in a different Amazon Web Services account.


=head2 UntagResource

=over

=item ResourceId => Str

=item TagKeyList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudHSMv2::UntagResource>

Returns: a L<Paws::CloudHSMv2::UntagResourceResponse> instance

Removes the specified tag or tags from the specified CloudHSM cluster.

B<Cross-account use:> No. You cannot perform this operation on an
CloudHSM resource in a different Amazon Web Services account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllBackups(sub { },[Filters => L<Paws::CloudHSMv2::Filters>, MaxResults => Int, NextToken => Str, Shared => Bool, SortAscending => Bool])

=head2 DescribeAllBackups([Filters => L<Paws::CloudHSMv2::Filters>, MaxResults => Int, NextToken => Str, Shared => Bool, SortAscending => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Backups, passing the object as the first parameter, and the string 'Backups' as the second parameter 

If not, it will return a a L<Paws::CloudHSMv2::DescribeBackupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusters(sub { },[Filters => L<Paws::CloudHSMv2::Filters>, MaxResults => Int, NextToken => Str])

=head2 DescribeAllClusters([Filters => L<Paws::CloudHSMv2::Filters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Clusters, passing the object as the first parameter, and the string 'Clusters' as the second parameter 

If not, it will return a a L<Paws::CloudHSMv2::DescribeClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTags(sub { },ResourceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTags(ResourceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TagList, passing the object as the first parameter, and the string 'TagList' as the second parameter 

If not, it will return a a L<Paws::CloudHSMv2::ListTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

