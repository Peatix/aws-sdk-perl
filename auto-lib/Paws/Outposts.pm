package Paws::Outposts;
  use Moose;
  sub service { 'outposts' }
  sub signing_name { 'outposts' }
  sub version { '2019-12-03' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelCapacityTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::CancelCapacityTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::CancelOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::CreateOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOutpost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::CreateOutpost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::CreateSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOutpost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::DeleteOutpost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::DeleteSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCapacityTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetCapacityTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCatalogItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetCatalogItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOutpost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetOutpost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOutpostInstanceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetOutpostInstanceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOutpostSupportedInstanceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetOutpostSupportedInstanceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSiteAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetSiteAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssetInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListAssetInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBlockingInstancesForCapacityTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListBlockingInstancesForCapacityTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCapacityTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListCapacityTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCatalogItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListCatalogItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListOrders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOutposts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListOutposts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListSites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCapacityTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::StartCapacityTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::StartConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOutpost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::UpdateOutpost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::UpdateSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSiteAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::UpdateSiteAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSiteRackPhysicalProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::UpdateSiteRackPhysicalProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllOutpostInstanceTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetOutpostInstanceTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetOutpostInstanceTypes(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceTypes }, @{ $next_result->InstanceTypes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
        $result = $self->GetOutpostInstanceTypes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
    }

    return undef
  }
  sub GetAllOutpostSupportedInstanceTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetOutpostSupportedInstanceTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetOutpostSupportedInstanceTypes(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceTypes }, @{ $next_result->InstanceTypes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
        $result = $self->GetOutpostSupportedInstanceTypes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
    }

    return undef
  }
  sub ListAllAssetInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssetInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssetInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->AssetInstances }, @{ $next_result->AssetInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AssetInstances') foreach (@{ $result->AssetInstances });
        $result = $self->ListAssetInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AssetInstances') foreach (@{ $result->AssetInstances });
    }

    return undef
  }
  sub ListAllAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Assets }, @{ $next_result->Assets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Assets') foreach (@{ $result->Assets });
        $result = $self->ListAssets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Assets') foreach (@{ $result->Assets });
    }

    return undef
  }
  sub ListAllBlockingInstancesForCapacityTask {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBlockingInstancesForCapacityTask(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBlockingInstancesForCapacityTask(@_, NextToken => $next_result->NextToken);
        push @{ $result->BlockingInstances }, @{ $next_result->BlockingInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BlockingInstances') foreach (@{ $result->BlockingInstances });
        $result = $self->ListBlockingInstancesForCapacityTask(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BlockingInstances') foreach (@{ $result->BlockingInstances });
    }

    return undef
  }
  sub ListAllCapacityTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCapacityTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCapacityTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityTasks }, @{ $next_result->CapacityTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityTasks') foreach (@{ $result->CapacityTasks });
        $result = $self->ListCapacityTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityTasks') foreach (@{ $result->CapacityTasks });
    }

    return undef
  }
  sub ListAllCatalogItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCatalogItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCatalogItems(@_, NextToken => $next_result->NextToken);
        push @{ $result->CatalogItems }, @{ $next_result->CatalogItems };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CatalogItems') foreach (@{ $result->CatalogItems });
        $result = $self->ListCatalogItems(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CatalogItems') foreach (@{ $result->CatalogItems });
    }

    return undef
  }
  sub ListAllOrders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOrders(@_, NextToken => $next_result->NextToken);
        push @{ $result->Orders }, @{ $next_result->Orders };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Orders') foreach (@{ $result->Orders });
        $result = $self->ListOrders(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Orders') foreach (@{ $result->Orders });
    }

    return undef
  }
  sub ListAllOutposts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOutposts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOutposts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Outposts }, @{ $next_result->Outposts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Outposts') foreach (@{ $result->Outposts });
        $result = $self->ListOutposts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Outposts') foreach (@{ $result->Outposts });
    }

    return undef
  }
  sub ListAllSites {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSites(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSites(@_, NextToken => $next_result->NextToken);
        push @{ $result->Sites }, @{ $next_result->Sites };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Sites') foreach (@{ $result->Sites });
        $result = $self->ListSites(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Sites') foreach (@{ $result->Sites });
    }

    return undef
  }


  sub operations { qw/CancelCapacityTask CancelOrder CreateOrder CreateOutpost CreateSite DeleteOutpost DeleteSite GetCapacityTask GetCatalogItem GetConnection GetOrder GetOutpost GetOutpostInstanceTypes GetOutpostSupportedInstanceTypes GetSite GetSiteAddress ListAssetInstances ListAssets ListBlockingInstancesForCapacityTask ListCapacityTasks ListCatalogItems ListOrders ListOutposts ListSites ListTagsForResource StartCapacityTask StartConnection TagResource UntagResource UpdateOutpost UpdateSite UpdateSiteAddress UpdateSiteRackPhysicalProperties / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts - Perl Interface to AWS AWS Outposts

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Outposts');
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

Amazon Web Services Outposts is a fully managed service that extends
Amazon Web Services infrastructure, APIs, and tools to customer
premises. By providing local access to Amazon Web Services managed
infrastructure, Amazon Web Services Outposts enables customers to build
and run applications on premises using the same programming interfaces
as in Amazon Web Services Regions, while using local compute and
storage resources for lower latency and local data processing needs.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CancelCapacityTask

=over

=item CapacityTaskId => Str

=item OutpostIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Outposts::CancelCapacityTask>

Returns: a L<Paws::Outposts::CancelCapacityTaskOutput> instance

Cancels the capacity task.


=head2 CancelOrder

=over

=item OrderId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::CancelOrder>

Returns: a L<Paws::Outposts::CancelOrderOutput> instance

Cancels the specified order for an Outpost.


=head2 CreateOrder

=over

=item LineItems => ArrayRef[L<Paws::Outposts::LineItemRequest>]

=item OutpostIdentifier => Str

=item PaymentOption => Str

=item [PaymentTerm => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::CreateOrder>

Returns: a L<Paws::Outposts::CreateOrderOutput> instance

Creates an order for an Outpost.


=head2 CreateOutpost

=over

=item Name => Str

=item SiteId => Str

=item [AvailabilityZone => Str]

=item [AvailabilityZoneId => Str]

=item [Description => Str]

=item [SupportedHardwareType => Str]

=item [Tags => L<Paws::Outposts::TagMap>]


=back

Each argument is described in detail in: L<Paws::Outposts::CreateOutpost>

Returns: a L<Paws::Outposts::CreateOutpostOutput> instance

Creates an Outpost.

You can specify either an Availability one or an AZ ID.


=head2 CreateSite

=over

=item Name => Str

=item [Description => Str]

=item [Notes => Str]

=item [OperatingAddress => L<Paws::Outposts::Address>]

=item [RackPhysicalProperties => L<Paws::Outposts::RackPhysicalProperties>]

=item [ShippingAddress => L<Paws::Outposts::Address>]

=item [Tags => L<Paws::Outposts::TagMap>]


=back

Each argument is described in detail in: L<Paws::Outposts::CreateSite>

Returns: a L<Paws::Outposts::CreateSiteOutput> instance

Creates a site for an Outpost.


=head2 DeleteOutpost

=over

=item OutpostId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::DeleteOutpost>

Returns: a L<Paws::Outposts::DeleteOutpostOutput> instance

Deletes the specified Outpost.


=head2 DeleteSite

=over

=item SiteId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::DeleteSite>

Returns: a L<Paws::Outposts::DeleteSiteOutput> instance

Deletes the specified site.


=head2 GetCapacityTask

=over

=item CapacityTaskId => Str

=item OutpostIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Outposts::GetCapacityTask>

Returns: a L<Paws::Outposts::GetCapacityTaskOutput> instance

Gets details of the specified capacity task.


=head2 GetCatalogItem

=over

=item CatalogItemId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::GetCatalogItem>

Returns: a L<Paws::Outposts::GetCatalogItemOutput> instance

Gets information about the specified catalog item.


=head2 GetConnection

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::GetConnection>

Returns: a L<Paws::Outposts::GetConnectionResponse> instance

Amazon Web Services uses this action to install Outpost servers.

Gets information about the specified connection.

Use CloudTrail to monitor this action or Amazon Web Services managed
policy for Amazon Web Services Outposts to secure it. For more
information, see Amazon Web Services managed policies for Amazon Web
Services Outposts
(https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html)
and Logging Amazon Web Services Outposts API calls with Amazon Web
Services CloudTrail
(https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html)
in the I<Amazon Web Services Outposts User Guide>.


=head2 GetOrder

=over

=item OrderId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::GetOrder>

Returns: a L<Paws::Outposts::GetOrderOutput> instance

Gets information about the specified order.


=head2 GetOutpost

=over

=item OutpostId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::GetOutpost>

Returns: a L<Paws::Outposts::GetOutpostOutput> instance

Gets information about the specified Outpost.


=head2 GetOutpostInstanceTypes

=over

=item OutpostId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::GetOutpostInstanceTypes>

Returns: a L<Paws::Outposts::GetOutpostInstanceTypesOutput> instance

Gets the instance types for the specified Outpost.


=head2 GetOutpostSupportedInstanceTypes

=over

=item OutpostIdentifier => Str

=item [AssetId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OrderId => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::GetOutpostSupportedInstanceTypes>

Returns: a L<Paws::Outposts::GetOutpostSupportedInstanceTypesOutput> instance

Gets the instance types that an Outpost can support in
C<InstanceTypeCapacity>. This will generally include instance types
that are not currently configured and therefore cannot be launched with
the current Outpost capacity configuration.


=head2 GetSite

=over

=item SiteId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::GetSite>

Returns: a L<Paws::Outposts::GetSiteOutput> instance

Gets information about the specified Outpost site.


=head2 GetSiteAddress

=over

=item AddressType => Str

=item SiteId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::GetSiteAddress>

Returns: a L<Paws::Outposts::GetSiteAddressOutput> instance

Gets the site address of the specified site.


=head2 ListAssetInstances

=over

=item OutpostIdentifier => Str

=item [AccountIdFilter => ArrayRef[Str|Undef]]

=item [AssetIdFilter => ArrayRef[Str|Undef]]

=item [AwsServiceFilter => ArrayRef[Str|Undef]]

=item [InstanceTypeFilter => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::ListAssetInstances>

Returns: a L<Paws::Outposts::ListAssetInstancesOutput> instance

A list of Amazon EC2 instances, belonging to all accounts, running on
the specified Outpost. Does not include Amazon EBS or Amazon S3
instances.


=head2 ListAssets

=over

=item OutpostIdentifier => Str

=item [HostIdFilter => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StatusFilter => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Outposts::ListAssets>

Returns: a L<Paws::Outposts::ListAssetsOutput> instance

Lists the hardware assets for the specified Outpost.

Use filters to return specific results. If you specify multiple
filters, the results include only the resources that match all of the
specified filters. For a filter where you can specify multiple values,
the results include items that match any of the values that you specify
for the filter.


=head2 ListBlockingInstancesForCapacityTask

=over

=item CapacityTaskId => Str

=item OutpostIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::ListBlockingInstancesForCapacityTask>

Returns: a L<Paws::Outposts::ListBlockingInstancesForCapacityTaskOutput> instance

A list of Amazon EC2 instances running on the Outpost and belonging to
the account that initiated the capacity task. Use this list to specify
the instances you cannot stop to free up capacity to run the capacity
task.


=head2 ListCapacityTasks

=over

=item [CapacityTaskStatusFilter => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OutpostIdentifierFilter => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::ListCapacityTasks>

Returns: a L<Paws::Outposts::ListCapacityTasksOutput> instance

Lists the capacity tasks for your Amazon Web Services account.

Use filters to return specific results. If you specify multiple
filters, the results include only the resources that match all of the
specified filters. For a filter where you can specify multiple values,
the results include items that match any of the values that you specify
for the filter.


=head2 ListCatalogItems

=over

=item [EC2FamilyFilter => ArrayRef[Str|Undef]]

=item [ItemClassFilter => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SupportedStorageFilter => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Outposts::ListCatalogItems>

Returns: a L<Paws::Outposts::ListCatalogItemsOutput> instance

Lists the items in the catalog.

Use filters to return specific results. If you specify multiple
filters, the results include only the resources that match all of the
specified filters. For a filter where you can specify multiple values,
the results include items that match any of the values that you specify
for the filter.


=head2 ListOrders

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OutpostIdentifierFilter => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::ListOrders>

Returns: a L<Paws::Outposts::ListOrdersOutput> instance

Lists the Outpost orders for your Amazon Web Services account.


=head2 ListOutposts

=over

=item [AvailabilityZoneFilter => ArrayRef[Str|Undef]]

=item [AvailabilityZoneIdFilter => ArrayRef[Str|Undef]]

=item [LifeCycleStatusFilter => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::ListOutposts>

Returns: a L<Paws::Outposts::ListOutpostsOutput> instance

Lists the Outposts for your Amazon Web Services account.

Use filters to return specific results. If you specify multiple
filters, the results include only the resources that match all of the
specified filters. For a filter where you can specify multiple values,
the results include items that match any of the values that you specify
for the filter.


=head2 ListSites

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OperatingAddressCityFilter => ArrayRef[Str|Undef]]

=item [OperatingAddressCountryCodeFilter => ArrayRef[Str|Undef]]

=item [OperatingAddressStateOrRegionFilter => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Outposts::ListSites>

Returns: a L<Paws::Outposts::ListSitesOutput> instance

Lists the Outpost sites for your Amazon Web Services account. Use
filters to return specific results.

Use filters to return specific results. If you specify multiple
filters, the results include only the resources that match all of the
specified filters. For a filter where you can specify multiple values,
the results include items that match any of the values that you specify
for the filter.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Outposts::ListTagsForResource>

Returns: a L<Paws::Outposts::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 StartCapacityTask

=over

=item InstancePools => ArrayRef[L<Paws::Outposts::InstanceTypeCapacity>]

=item OutpostIdentifier => Str

=item [AssetId => Str]

=item [DryRun => Bool]

=item [InstancesToExclude => L<Paws::Outposts::InstancesToExclude>]

=item [OrderId => Str]

=item [TaskActionOnBlockingInstances => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::StartCapacityTask>

Returns: a L<Paws::Outposts::StartCapacityTaskOutput> instance

Starts the specified capacity task. You can have one active capacity
task for each order and each Outpost.


=head2 StartConnection

=over

=item AssetId => Str

=item ClientPublicKey => Str

=item NetworkInterfaceDeviceIndex => Int

=item [DeviceSerialNumber => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::StartConnection>

Returns: a L<Paws::Outposts::StartConnectionResponse> instance

Amazon Web Services uses this action to install Outpost servers.

Starts the connection required for Outpost server installation.

Use CloudTrail to monitor this action or Amazon Web Services managed
policy for Amazon Web Services Outposts to secure it. For more
information, see Amazon Web Services managed policies for Amazon Web
Services Outposts
(https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html)
and Logging Amazon Web Services Outposts API calls with Amazon Web
Services CloudTrail
(https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html)
in the I<Amazon Web Services Outposts User Guide>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Outposts::TagMap>


=back

Each argument is described in detail in: L<Paws::Outposts::TagResource>

Returns: a L<Paws::Outposts::TagResourceResponse> instance

Adds tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Outposts::UntagResource>

Returns: a L<Paws::Outposts::UntagResourceResponse> instance

Removes tags from the specified resource.


=head2 UpdateOutpost

=over

=item OutpostId => Str

=item [Description => Str]

=item [Name => Str]

=item [SupportedHardwareType => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::UpdateOutpost>

Returns: a L<Paws::Outposts::UpdateOutpostOutput> instance

Updates an Outpost.


=head2 UpdateSite

=over

=item SiteId => Str

=item [Description => Str]

=item [Name => Str]

=item [Notes => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::UpdateSite>

Returns: a L<Paws::Outposts::UpdateSiteOutput> instance

Updates the specified site.


=head2 UpdateSiteAddress

=over

=item Address => L<Paws::Outposts::Address>

=item AddressType => Str

=item SiteId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::UpdateSiteAddress>

Returns: a L<Paws::Outposts::UpdateSiteAddressOutput> instance

Updates the address of the specified site.

You can't update a site address if there is an order in progress. You
must wait for the order to complete or cancel the order.

You can update the operating address before you place an order at the
site, or after all Outposts that belong to the site have been
deactivated.


=head2 UpdateSiteRackPhysicalProperties

=over

=item SiteId => Str

=item [FiberOpticCableType => Str]

=item [MaximumSupportedWeightLbs => Str]

=item [OpticalStandard => Str]

=item [PowerConnector => Str]

=item [PowerDrawKva => Str]

=item [PowerFeedDrop => Str]

=item [PowerPhase => Str]

=item [UplinkCount => Str]

=item [UplinkGbps => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::UpdateSiteRackPhysicalProperties>

Returns: a L<Paws::Outposts::UpdateSiteRackPhysicalPropertiesOutput> instance

Update the physical and logistical details for a rack at a site. For
more information about hardware requirements for racks, see Network
readiness checklist
(https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist)
in the Amazon Web Services Outposts User Guide.

To update a rack at a site with an order of C<IN_PROGRESS>, you must
wait for the order to complete or cancel the order.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllOutpostInstanceTypes(sub { },OutpostId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllOutpostInstanceTypes(OutpostId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceTypes, passing the object as the first parameter, and the string 'InstanceTypes' as the second parameter 

If not, it will return a a L<Paws::Outposts::GetOutpostInstanceTypesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllOutpostSupportedInstanceTypes(sub { },OutpostIdentifier => Str, [AssetId => Str, MaxResults => Int, NextToken => Str, OrderId => Str])

=head2 GetAllOutpostSupportedInstanceTypes(OutpostIdentifier => Str, [AssetId => Str, MaxResults => Int, NextToken => Str, OrderId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceTypes, passing the object as the first parameter, and the string 'InstanceTypes' as the second parameter 

If not, it will return a a L<Paws::Outposts::GetOutpostSupportedInstanceTypesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssetInstances(sub { },OutpostIdentifier => Str, [AccountIdFilter => ArrayRef[Str|Undef], AssetIdFilter => ArrayRef[Str|Undef], AwsServiceFilter => ArrayRef[Str|Undef], InstanceTypeFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllAssetInstances(OutpostIdentifier => Str, [AccountIdFilter => ArrayRef[Str|Undef], AssetIdFilter => ArrayRef[Str|Undef], AwsServiceFilter => ArrayRef[Str|Undef], InstanceTypeFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AssetInstances, passing the object as the first parameter, and the string 'AssetInstances' as the second parameter 

If not, it will return a a L<Paws::Outposts::ListAssetInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssets(sub { },OutpostIdentifier => Str, [HostIdFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, StatusFilter => ArrayRef[Str|Undef]])

=head2 ListAllAssets(OutpostIdentifier => Str, [HostIdFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, StatusFilter => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Assets, passing the object as the first parameter, and the string 'Assets' as the second parameter 

If not, it will return a a L<Paws::Outposts::ListAssetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBlockingInstancesForCapacityTask(sub { },CapacityTaskId => Str, OutpostIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllBlockingInstancesForCapacityTask(CapacityTaskId => Str, OutpostIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BlockingInstances, passing the object as the first parameter, and the string 'BlockingInstances' as the second parameter 

If not, it will return a a L<Paws::Outposts::ListBlockingInstancesForCapacityTaskOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCapacityTasks(sub { },[CapacityTaskStatusFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, OutpostIdentifierFilter => Str])

=head2 ListAllCapacityTasks([CapacityTaskStatusFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, OutpostIdentifierFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityTasks, passing the object as the first parameter, and the string 'CapacityTasks' as the second parameter 

If not, it will return a a L<Paws::Outposts::ListCapacityTasksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCatalogItems(sub { },[EC2FamilyFilter => ArrayRef[Str|Undef], ItemClassFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SupportedStorageFilter => ArrayRef[Str|Undef]])

=head2 ListAllCatalogItems([EC2FamilyFilter => ArrayRef[Str|Undef], ItemClassFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SupportedStorageFilter => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CatalogItems, passing the object as the first parameter, and the string 'CatalogItems' as the second parameter 

If not, it will return a a L<Paws::Outposts::ListCatalogItemsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrders(sub { },[MaxResults => Int, NextToken => Str, OutpostIdentifierFilter => Str])

=head2 ListAllOrders([MaxResults => Int, NextToken => Str, OutpostIdentifierFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Orders, passing the object as the first parameter, and the string 'Orders' as the second parameter 

If not, it will return a a L<Paws::Outposts::ListOrdersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOutposts(sub { },[AvailabilityZoneFilter => ArrayRef[Str|Undef], AvailabilityZoneIdFilter => ArrayRef[Str|Undef], LifeCycleStatusFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllOutposts([AvailabilityZoneFilter => ArrayRef[Str|Undef], AvailabilityZoneIdFilter => ArrayRef[Str|Undef], LifeCycleStatusFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Outposts, passing the object as the first parameter, and the string 'Outposts' as the second parameter 

If not, it will return a a L<Paws::Outposts::ListOutpostsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSites(sub { },[MaxResults => Int, NextToken => Str, OperatingAddressCityFilter => ArrayRef[Str|Undef], OperatingAddressCountryCodeFilter => ArrayRef[Str|Undef], OperatingAddressStateOrRegionFilter => ArrayRef[Str|Undef]])

=head2 ListAllSites([MaxResults => Int, NextToken => Str, OperatingAddressCityFilter => ArrayRef[Str|Undef], OperatingAddressCountryCodeFilter => ArrayRef[Str|Undef], OperatingAddressStateOrRegionFilter => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Sites, passing the object as the first parameter, and the string 'Sites' as the second parameter 

If not, it will return a a L<Paws::Outposts::ListSitesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

