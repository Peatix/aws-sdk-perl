package Paws::TimestreamInfluxDB;
  use Moose;
  sub service { 'timestream-influxdb' }
  sub signing_name { 'timestream-influxdb' }
  sub version { '2023-01-27' }
  sub target_prefix { 'AmazonTimestreamInfluxDB' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateDbCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::CreateDbCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDbInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::CreateDbInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDbParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::CreateDbParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDbCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::DeleteDbCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDbInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::DeleteDbInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDbCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::GetDbCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDbInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::GetDbInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDbParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::GetDbParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDbClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::ListDbClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDbInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::ListDbInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDbInstancesForCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::ListDbInstancesForCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDbParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::ListDbParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDbCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::UpdateDbCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDbInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamInfluxDB::UpdateDbInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDbClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDbClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDbClusters(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDbClusters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDbInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDbInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDbInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDbInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDbInstancesForCluster {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDbInstancesForCluster(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDbInstancesForCluster(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDbInstancesForCluster(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDbParameterGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDbParameterGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDbParameterGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDbParameterGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/CreateDbCluster CreateDbInstance CreateDbParameterGroup DeleteDbCluster DeleteDbInstance GetDbCluster GetDbInstance GetDbParameterGroup ListDbClusters ListDbInstances ListDbInstancesForCluster ListDbParameterGroups ListTagsForResource TagResource UntagResource UpdateDbCluster UpdateDbInstance / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB - Perl Interface to AWS Timestream InfluxDB

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('TimestreamInfluxDB');
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

Amazon Timestream for InfluxDB is a managed time-series database engine
that makes it easy for application developers and DevOps teams to run
InfluxDB databases on Amazon Web Services for near real-time
time-series applications using open-source APIs. With Amazon Timestream
for InfluxDB, it is easy to set up, operate, and scale time-series
workloads that can answer queries with single-digit millisecond query
response time.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateDbCluster

=over

=item AllocatedStorage => Int

=item DbInstanceType => Str

=item DeploymentType => Str

=item Name => Str

=item Password => Str

=item VpcSecurityGroupIds => ArrayRef[Str|Undef]

=item VpcSubnetIds => ArrayRef[Str|Undef]

=item [Bucket => Str]

=item [DbParameterGroupIdentifier => Str]

=item [DbStorageType => Str]

=item [FailoverMode => Str]

=item [LogDeliveryConfiguration => L<Paws::TimestreamInfluxDB::LogDeliveryConfiguration>]

=item [NetworkType => Str]

=item [Organization => Str]

=item [Port => Int]

=item [PubliclyAccessible => Bool]

=item [Tags => L<Paws::TimestreamInfluxDB::RequestTagMap>]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::CreateDbCluster>

Returns: a L<Paws::TimestreamInfluxDB::CreateDbClusterOutput> instance

Creates a new Timestream for InfluxDB cluster.


=head2 CreateDbInstance

=over

=item AllocatedStorage => Int

=item DbInstanceType => Str

=item Name => Str

=item Password => Str

=item VpcSecurityGroupIds => ArrayRef[Str|Undef]

=item VpcSubnetIds => ArrayRef[Str|Undef]

=item [Bucket => Str]

=item [DbParameterGroupIdentifier => Str]

=item [DbStorageType => Str]

=item [DeploymentType => Str]

=item [LogDeliveryConfiguration => L<Paws::TimestreamInfluxDB::LogDeliveryConfiguration>]

=item [NetworkType => Str]

=item [Organization => Str]

=item [Port => Int]

=item [PubliclyAccessible => Bool]

=item [Tags => L<Paws::TimestreamInfluxDB::RequestTagMap>]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::CreateDbInstance>

Returns: a L<Paws::TimestreamInfluxDB::CreateDbInstanceOutput> instance

Creates a new Timestream for InfluxDB DB instance.


=head2 CreateDbParameterGroup

=over

=item Name => Str

=item [Description => Str]

=item [Parameters => L<Paws::TimestreamInfluxDB::Parameters>]

=item [Tags => L<Paws::TimestreamInfluxDB::RequestTagMap>]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::CreateDbParameterGroup>

Returns: a L<Paws::TimestreamInfluxDB::CreateDbParameterGroupOutput> instance

Creates a new Timestream for InfluxDB DB parameter group to associate
with DB instances.


=head2 DeleteDbCluster

=over

=item DbClusterId => Str


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::DeleteDbCluster>

Returns: a L<Paws::TimestreamInfluxDB::DeleteDbClusterOutput> instance

Deletes a Timestream for InfluxDB cluster.


=head2 DeleteDbInstance

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::DeleteDbInstance>

Returns: a L<Paws::TimestreamInfluxDB::DeleteDbInstanceOutput> instance

Deletes a Timestream for InfluxDB DB instance.


=head2 GetDbCluster

=over

=item DbClusterId => Str


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::GetDbCluster>

Returns: a L<Paws::TimestreamInfluxDB::GetDbClusterOutput> instance

Retrieves information about a Timestream for InfluxDB cluster.


=head2 GetDbInstance

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::GetDbInstance>

Returns: a L<Paws::TimestreamInfluxDB::GetDbInstanceOutput> instance

Returns a Timestream for InfluxDB DB instance.


=head2 GetDbParameterGroup

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::GetDbParameterGroup>

Returns: a L<Paws::TimestreamInfluxDB::GetDbParameterGroupOutput> instance

Returns a Timestream for InfluxDB DB parameter group.


=head2 ListDbClusters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::ListDbClusters>

Returns: a L<Paws::TimestreamInfluxDB::ListDbClustersOutput> instance

Returns a list of Timestream for InfluxDB DB clusters.


=head2 ListDbInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::ListDbInstances>

Returns: a L<Paws::TimestreamInfluxDB::ListDbInstancesOutput> instance

Returns a list of Timestream for InfluxDB DB instances.


=head2 ListDbInstancesForCluster

=over

=item DbClusterId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::ListDbInstancesForCluster>

Returns: a L<Paws::TimestreamInfluxDB::ListDbInstancesForClusterOutput> instance

Returns a list of Timestream for InfluxDB clusters.


=head2 ListDbParameterGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::ListDbParameterGroups>

Returns: a L<Paws::TimestreamInfluxDB::ListDbParameterGroupsOutput> instance

Returns a list of Timestream for InfluxDB DB parameter groups.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::ListTagsForResource>

Returns: a L<Paws::TimestreamInfluxDB::ListTagsForResourceResponse> instance

A list of tags applied to the resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::TimestreamInfluxDB::RequestTagMap>


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::TagResource>

Returns: nothing

Tags are composed of a Key/Value pairs. You can use tags to categorize
and track your Timestream for InfluxDB resources.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::UntagResource>

Returns: nothing

Removes the tag from the specified resource.


=head2 UpdateDbCluster

=over

=item DbClusterId => Str

=item [DbInstanceType => Str]

=item [DbParameterGroupIdentifier => Str]

=item [FailoverMode => Str]

=item [LogDeliveryConfiguration => L<Paws::TimestreamInfluxDB::LogDeliveryConfiguration>]

=item [Port => Int]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::UpdateDbCluster>

Returns: a L<Paws::TimestreamInfluxDB::UpdateDbClusterOutput> instance

Updates a Timestream for InfluxDB cluster.


=head2 UpdateDbInstance

=over

=item Identifier => Str

=item [AllocatedStorage => Int]

=item [DbInstanceType => Str]

=item [DbParameterGroupIdentifier => Str]

=item [DbStorageType => Str]

=item [DeploymentType => Str]

=item [LogDeliveryConfiguration => L<Paws::TimestreamInfluxDB::LogDeliveryConfiguration>]

=item [Port => Int]


=back

Each argument is described in detail in: L<Paws::TimestreamInfluxDB::UpdateDbInstance>

Returns: a L<Paws::TimestreamInfluxDB::UpdateDbInstanceOutput> instance

Updates a Timestream for InfluxDB DB instance.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDbClusters(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDbClusters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::TimestreamInfluxDB::ListDbClustersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDbInstances(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDbInstances([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::TimestreamInfluxDB::ListDbInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDbInstancesForCluster(sub { },DbClusterId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDbInstancesForCluster(DbClusterId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::TimestreamInfluxDB::ListDbInstancesForClusterOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDbParameterGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDbParameterGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::TimestreamInfluxDB::ListDbParameterGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

