package Paws::DSQL;
  use Moose;
  sub service { 'dsql' }
  sub signing_name { 'dsql' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DSQL::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DSQL::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DSQL::GetCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVpcEndpointServiceName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DSQL::GetVpcEndpointServiceName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DSQL::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DSQL::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DSQL::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DSQL::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DSQL::UpdateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListClusters(@_, nextToken => $next_result->nextToken);
        push @{ $result->clusters }, @{ $next_result->clusters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'clusters') foreach (@{ $result->clusters });
        $result = $self->ListClusters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'clusters') foreach (@{ $result->clusters });
    }

    return undef
  }


  sub operations { qw/CreateCluster DeleteCluster GetCluster GetVpcEndpointServiceName ListClusters ListTagsForResource TagResource UntagResource UpdateCluster / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL - Perl Interface to AWS Amazon Aurora DSQL

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DSQL');
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

This is an interface reference for Amazon Aurora DSQL. It contains
documentation for one of the programming or command line interfaces you
can use to manage Amazon Aurora DSQL.

Amazon Aurora DSQL is a serverless, distributed SQL database suitable
for workloads of any size. is available in both single-Region and
multi-Region configurations, so your clusters and databases are always
available even if an Availability Zone or an Amazon Web Services Region
are unavailable. lets you focus on using your data to acquire new
insights for your business and customers.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10>


=head1 METHODS

=head2 CreateCluster

=over

=item [ClientToken => Str]

=item [DeletionProtectionEnabled => Bool]

=item [MultiRegionProperties => L<Paws::DSQL::MultiRegionProperties>]

=item [Tags => L<Paws::DSQL::TagMap>]


=back

Each argument is described in detail in: L<Paws::DSQL::CreateCluster>

Returns: a L<Paws::DSQL::CreateClusterOutput> instance

The CreateCluster API allows you to create both single-region clusters
and multi-Region clusters. With the addition of the
I<multiRegionProperties> parameter, you can create a cluster with
witness Region support and establish peer relationships with clusters
in other Regions during creation.

Creating multi-Region clusters requires additional IAM permissions
beyond those needed for single-Region clusters, as detailed in the
B<Required permissions> section below.

B<Required permissions>

=over

=item dsql:CreateCluster

Required to create a cluster.

Resources: C<arn:aws:dsql:region:account-id:cluster/*>

=item dsql:TagResource

Permission to add tags to a resource.

Resources: C<arn:aws:dsql:region:account-id:cluster/*>

=item dsql:PutMultiRegionProperties

Permission to configure multi-region properties for a cluster.

Resources: C<arn:aws:dsql:region:account-id:cluster/*>

=item dsql:AddPeerCluster

When specifying C<multiRegionProperties.clusters>, permission to add
peer clusters.

Resources:

=over

=item *

Local cluster: C<arn:aws:dsql:region:account-id:cluster/*>

=item *

Each peer cluster: exact ARN of each specified peer cluster

=back

=item dsql:PutWitnessRegion

When specifying C<multiRegionProperties.witnessRegion>, permission to
set a witness Region. This permission is checked both in the cluster
Region and in the witness Region.

Resources: C<arn:aws:dsql:region:account-id:cluster/*>

Condition Keys: C<dsql:WitnessRegion> (matching the specified witness
region)

=back

=over

=item *

The witness Region specified in C<multiRegionProperties.witnessRegion>
cannot be the same as the cluster's Region.

=back



=head2 DeleteCluster

=over

=item Identifier => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::DSQL::DeleteCluster>

Returns: a L<Paws::DSQL::DeleteClusterOutput> instance

Deletes a cluster in Amazon Aurora DSQL.


=head2 GetCluster

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DSQL::GetCluster>

Returns: a L<Paws::DSQL::GetClusterOutput> instance

Retrieves information about a cluster.


=head2 GetVpcEndpointServiceName

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::DSQL::GetVpcEndpointServiceName>

Returns: a L<Paws::DSQL::GetVpcEndpointServiceNameOutput> instance

Retrieves the VPC endpoint service name.


=head2 ListClusters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DSQL::ListClusters>

Returns: a L<Paws::DSQL::ListClustersOutput> instance

Retrieves information about a list of clusters.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::DSQL::ListTagsForResource>

Returns: a L<Paws::DSQL::ListTagsForResourceOutput> instance

Lists all of the tags for a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::DSQL::TagMap>


=back

Each argument is described in detail in: L<Paws::DSQL::TagResource>

Returns: nothing

Tags a resource with a map of key and value pairs.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DSQL::UntagResource>

Returns: nothing

Removes a tag from a resource.


=head2 UpdateCluster

=over

=item Identifier => Str

=item [ClientToken => Str]

=item [DeletionProtectionEnabled => Bool]

=item [MultiRegionProperties => L<Paws::DSQL::MultiRegionProperties>]


=back

Each argument is described in detail in: L<Paws::DSQL::UpdateCluster>

Returns: a L<Paws::DSQL::UpdateClusterOutput> instance

The I<UpdateCluster> API allows you to modify both single-Region and
multi-Region cluster configurations. With the I<multiRegionProperties>
parameter, you can add or modify witness Region support and manage peer
relationships with clusters in other Regions.

Note that updating multi-region clusters requires additional IAM
permissions beyond those needed for standard cluster updates, as
detailed in the Permissions section.

B<Required permissions>

=over

=item dsql:UpdateCluster

Permission to update a DSQL cluster.

Resources:
C<arn:aws:dsql:I<region>:I<account-id>:cluster/I<cluster-id>>

=back

=over

=item dsql:PutMultiRegionProperties

Permission to configure multi-Region properties for a cluster.

Resources:
C<arn:aws:dsql:I<region>:I<account-id>:cluster/I<cluster-id>>

=back

=over

=item dsql:GetCluster

Permission to retrieve cluster information.

Resources:
C<arn:aws:dsql:I<region>:I<account-id>:cluster/I<cluster-id>>

=item dsql:AddPeerCluster

Permission to add peer clusters.

Resources:

=over

=item *

Local cluster:
C<arn:aws:dsql:I<region>:I<account-id>:cluster/I<cluster-id>>

=item *

Each peer cluster: exact ARN of each specified peer cluster

=back

=item dsql:RemovePeerCluster

Permission to remove peer clusters. The I<dsql:RemovePeerCluster>
permission uses a wildcard ARN pattern to simplify permission
management during updates.

Resources: C<arn:aws:dsql:*:I<account-id>:cluster/*>

=back

=over

=item dsql:PutWitnessRegion

Permission to set a witness Region.

Resources:
C<arn:aws:dsql:I<region>:I<account-id>:cluster/I<cluster-id>>

Condition Keys: dsql:WitnessRegion (matching the specified witness
Region)

B<This permission is checked both in the cluster Region and in the
witness Region.>

=back

=over

=item *

The witness region specified in C<multiRegionProperties.witnessRegion>
cannot be the same as the cluster's Region.

=item *

When updating clusters with peer relationships, permissions are checked
for both adding and removing peers.

=item *

The C<dsql:RemovePeerCluster> permission uses a wildcard ARN pattern to
simplify permission management during updates.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllClusters(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - clusters, passing the object as the first parameter, and the string 'clusters' as the second parameter 

If not, it will return a a L<Paws::DSQL::ListClustersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

