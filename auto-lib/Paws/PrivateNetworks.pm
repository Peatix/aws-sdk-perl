package Paws::PrivateNetworks;
  use Moose;
  sub service { 'private-networks' }
  sub signing_name { 'private-networks' }
  sub version { '2021-12-03' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcknowledgeOrderReceipt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::AcknowledgeOrderReceipt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ActivateDeviceIdentifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::ActivateDeviceIdentifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ActivateNetworkSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::ActivateNetworkSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfigureAccessPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::ConfigureAccessPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::CreateNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::CreateNetworkSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeactivateDeviceIdentifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::DeactivateDeviceIdentifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::DeleteNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::DeleteNetworkSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceIdentifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::GetDeviceIdentifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::GetNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::GetNetworkResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetworkSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::GetNetworkSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::GetOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceIdentifiers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::ListDeviceIdentifiers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNetworkResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::ListNetworkResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNetworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::ListNetworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNetworkSites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::ListNetworkSites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::ListOrders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Ping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::Ping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartNetworkResourceUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::StartNetworkResourceUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNetworkSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::UpdateNetworkSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNetworkSitePlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PrivateNetworks::UpdateNetworkSitePlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDeviceIdentifiers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeviceIdentifiers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeviceIdentifiers(@_, startToken => $next_result->nextToken);
        push @{ $result->deviceIdentifiers }, @{ $next_result->deviceIdentifiers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deviceIdentifiers') foreach (@{ $result->deviceIdentifiers });
        $result = $self->ListDeviceIdentifiers(@_, startToken => $result->nextToken);
      }
      $callback->($_ => 'deviceIdentifiers') foreach (@{ $result->deviceIdentifiers });
    }

    return undef
  }
  sub ListAllNetworkResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNetworkResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNetworkResources(@_, startToken => $next_result->nextToken);
        push @{ $result->networkResources }, @{ $next_result->networkResources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'networkResources') foreach (@{ $result->networkResources });
        $result = $self->ListNetworkResources(@_, startToken => $result->nextToken);
      }
      $callback->($_ => 'networkResources') foreach (@{ $result->networkResources });
    }

    return undef
  }
  sub ListAllNetworks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNetworks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNetworks(@_, startToken => $next_result->nextToken);
        push @{ $result->networks }, @{ $next_result->networks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'networks') foreach (@{ $result->networks });
        $result = $self->ListNetworks(@_, startToken => $result->nextToken);
      }
      $callback->($_ => 'networks') foreach (@{ $result->networks });
    }

    return undef
  }
  sub ListAllNetworkSites {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNetworkSites(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNetworkSites(@_, startToken => $next_result->nextToken);
        push @{ $result->networkSites }, @{ $next_result->networkSites };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'networkSites') foreach (@{ $result->networkSites });
        $result = $self->ListNetworkSites(@_, startToken => $result->nextToken);
      }
      $callback->($_ => 'networkSites') foreach (@{ $result->networkSites });
    }

    return undef
  }
  sub ListAllOrders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOrders(@_, startToken => $next_result->nextToken);
        push @{ $result->orders }, @{ $next_result->orders };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'orders') foreach (@{ $result->orders });
        $result = $self->ListOrders(@_, startToken => $result->nextToken);
      }
      $callback->($_ => 'orders') foreach (@{ $result->orders });
    }

    return undef
  }


  sub operations { qw/AcknowledgeOrderReceipt ActivateDeviceIdentifier ActivateNetworkSite ConfigureAccessPoint CreateNetwork CreateNetworkSite DeactivateDeviceIdentifier DeleteNetwork DeleteNetworkSite GetDeviceIdentifier GetNetwork GetNetworkResource GetNetworkSite GetOrder ListDeviceIdentifiers ListNetworkResources ListNetworks ListNetworkSites ListOrders ListTagsForResource Ping StartNetworkResourceUpdate TagResource UntagResource UpdateNetworkSite UpdateNetworkSitePlan / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks - Perl Interface to AWS AWS Private 5G

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PrivateNetworks');
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

Amazon Web Services Private 5G is a managed service that makes it easy
to deploy, operate, and scale your own private mobile network at your
on-premises location. Private 5G provides the pre-configured hardware
and software for mobile networks, helps automate setup, and scales
capacity on demand to support additional devices as needed.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks-2021-12-03>


=head1 METHODS

=head2 AcknowledgeOrderReceipt

=over

=item OrderArn => Str


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::AcknowledgeOrderReceipt>

Returns: a L<Paws::PrivateNetworks::AcknowledgeOrderReceiptResponse> instance

Acknowledges that the specified network order was received.


=head2 ActivateDeviceIdentifier

=over

=item DeviceIdentifierArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::ActivateDeviceIdentifier>

Returns: a L<Paws::PrivateNetworks::ActivateDeviceIdentifierResponse> instance

Activates the specified device identifier.


=head2 ActivateNetworkSite

=over

=item NetworkSiteArn => Str

=item ShippingAddress => L<Paws::PrivateNetworks::Address>

=item [ClientToken => Str]

=item [CommitmentConfiguration => L<Paws::PrivateNetworks::CommitmentConfiguration>]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::ActivateNetworkSite>

Returns: a L<Paws::PrivateNetworks::ActivateNetworkSiteResponse> instance

Activates the specified network site.


=head2 ConfigureAccessPoint

=over

=item AccessPointArn => Str

=item [CpiSecretKey => Str]

=item [CpiUserId => Str]

=item [CpiUsername => Str]

=item [CpiUserPassword => Str]

=item [Position => L<Paws::PrivateNetworks::Position>]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::ConfigureAccessPoint>

Returns: a L<Paws::PrivateNetworks::ConfigureAccessPointResponse> instance

Configures the specified network resource.

Use this action to specify the geographic position of the hardware. You
must provide Certified Professional Installer (CPI) credentials in the
request so that we can obtain spectrum grants. For more information,
see Radio units
(https://docs.aws.amazon.com/private-networks/latest/userguide/radio-units.html)
in the I<Amazon Web Services Private 5G User Guide>.


=head2 CreateNetwork

=over

=item NetworkName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::PrivateNetworks::TagMap>]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::CreateNetwork>

Returns: a L<Paws::PrivateNetworks::CreateNetworkResponse> instance

Creates a network.


=head2 CreateNetworkSite

=over

=item NetworkArn => Str

=item NetworkSiteName => Str

=item [AvailabilityZone => Str]

=item [AvailabilityZoneId => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [PendingPlan => L<Paws::PrivateNetworks::SitePlan>]

=item [Tags => L<Paws::PrivateNetworks::TagMap>]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::CreateNetworkSite>

Returns: a L<Paws::PrivateNetworks::CreateNetworkSiteResponse> instance

Creates a network site.


=head2 DeactivateDeviceIdentifier

=over

=item DeviceIdentifierArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::DeactivateDeviceIdentifier>

Returns: a L<Paws::PrivateNetworks::DeactivateDeviceIdentifierResponse> instance

Deactivates the specified device identifier.


=head2 DeleteNetwork

=over

=item NetworkArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::DeleteNetwork>

Returns: a L<Paws::PrivateNetworks::DeleteNetworkResponse> instance

Deletes the specified network. You must delete network sites before you
delete the network. For more information, see DeleteNetworkSite
(https://docs.aws.amazon.com/private-networks/latest/APIReference/API_DeleteNetworkSite.html)
in the I<API Reference for Amazon Web Services Private 5G>.


=head2 DeleteNetworkSite

=over

=item NetworkSiteArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::DeleteNetworkSite>

Returns: a L<Paws::PrivateNetworks::DeleteNetworkSiteResponse> instance

Deletes the specified network site. Return the hardware after you
delete the network site. You are responsible for minimum charges. For
more information, see Hardware returns
(https://docs.aws.amazon.com/private-networks/latest/userguide/hardware-maintenance.html)
in the I<Amazon Web Services Private 5G User Guide>.


=head2 GetDeviceIdentifier

=over

=item DeviceIdentifierArn => Str


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::GetDeviceIdentifier>

Returns: a L<Paws::PrivateNetworks::GetDeviceIdentifierResponse> instance

Gets the specified device identifier.


=head2 GetNetwork

=over

=item NetworkArn => Str


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::GetNetwork>

Returns: a L<Paws::PrivateNetworks::GetNetworkResponse> instance

Gets the specified network.


=head2 GetNetworkResource

=over

=item NetworkResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::GetNetworkResource>

Returns: a L<Paws::PrivateNetworks::GetNetworkResourceResponse> instance

Gets the specified network resource.


=head2 GetNetworkSite

=over

=item NetworkSiteArn => Str


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::GetNetworkSite>

Returns: a L<Paws::PrivateNetworks::GetNetworkSiteResponse> instance

Gets the specified network site.


=head2 GetOrder

=over

=item OrderArn => Str


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::GetOrder>

Returns: a L<Paws::PrivateNetworks::GetOrderResponse> instance

Gets the specified order.


=head2 ListDeviceIdentifiers

=over

=item NetworkArn => Str

=item [Filters => L<Paws::PrivateNetworks::DeviceIdentifierFilters>]

=item [MaxResults => Int]

=item [StartToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::ListDeviceIdentifiers>

Returns: a L<Paws::PrivateNetworks::ListDeviceIdentifiersResponse> instance

Lists device identifiers. Add filters to your request to return a more
specific list of results. Use filters to match the Amazon Resource Name
(ARN) of an order, the status of device identifiers, or the ARN of the
traffic group.

If you specify multiple filters, filters are joined with an OR, and the
request returns results that match all of the specified filters.


=head2 ListNetworkResources

=over

=item NetworkArn => Str

=item [Filters => L<Paws::PrivateNetworks::NetworkResourceFilters>]

=item [MaxResults => Int]

=item [StartToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::ListNetworkResources>

Returns: a L<Paws::PrivateNetworks::ListNetworkResourcesResponse> instance

Lists network resources. Add filters to your request to return a more
specific list of results. Use filters to match the Amazon Resource Name
(ARN) of an order or the status of network resources.

If you specify multiple filters, filters are joined with an OR, and the
request returns results that match all of the specified filters.


=head2 ListNetworks

=over

=item [Filters => L<Paws::PrivateNetworks::NetworkFilters>]

=item [MaxResults => Int]

=item [StartToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::ListNetworks>

Returns: a L<Paws::PrivateNetworks::ListNetworksResponse> instance

Lists networks. Add filters to your request to return a more specific
list of results. Use filters to match the status of the network.


=head2 ListNetworkSites

=over

=item NetworkArn => Str

=item [Filters => L<Paws::PrivateNetworks::NetworkSiteFilters>]

=item [MaxResults => Int]

=item [StartToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::ListNetworkSites>

Returns: a L<Paws::PrivateNetworks::ListNetworkSitesResponse> instance

Lists network sites. Add filters to your request to return a more
specific list of results. Use filters to match the status of the
network site.


=head2 ListOrders

=over

=item NetworkArn => Str

=item [Filters => L<Paws::PrivateNetworks::OrderFilters>]

=item [MaxResults => Int]

=item [StartToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::ListOrders>

Returns: a L<Paws::PrivateNetworks::ListOrdersResponse> instance

Lists orders. Add filters to your request to return a more specific
list of results. Use filters to match the Amazon Resource Name (ARN) of
the network site or the status of the order.

If you specify multiple filters, filters are joined with an OR, and the
request returns results that match all of the specified filters.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::ListTagsForResource>

Returns: a L<Paws::PrivateNetworks::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 Ping

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::Ping>

Returns: a L<Paws::PrivateNetworks::PingResponse> instance

Checks the health of the service.


=head2 StartNetworkResourceUpdate

=over

=item NetworkResourceArn => Str

=item UpdateType => Str

=item [CommitmentConfiguration => L<Paws::PrivateNetworks::CommitmentConfiguration>]

=item [ReturnReason => Str]

=item [ShippingAddress => L<Paws::PrivateNetworks::Address>]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::StartNetworkResourceUpdate>

Returns: a L<Paws::PrivateNetworks::StartNetworkResourceUpdateResponse> instance

Use this action to do the following tasks:

=over

=item *

Update the duration and renewal status of the commitment period for a
radio unit. The update goes into effect immediately.

=item *

Request a replacement for a network resource.

=item *

Request that you return a network resource.

=back

After you submit a request to replace or return a network resource, the
status of the network resource changes to C<CREATING_SHIPPING_LABEL>.
The shipping label is available when the status of the network resource
is C<PENDING_RETURN>. After the network resource is successfully
returned, its status changes to C<DELETED>. For more information, see
Return a radio unit
(https://docs.aws.amazon.com/private-networks/latest/userguide/radio-units.html#return-radio-unit).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::PrivateNetworks::TagMap>


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::TagResource>

Returns: a L<Paws::PrivateNetworks::TagResourceResponse> instance

Adds tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::UntagResource>

Returns: a L<Paws::PrivateNetworks::UntagResourceResponse> instance

Removes tags from the specified resource.


=head2 UpdateNetworkSite

=over

=item NetworkSiteArn => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::UpdateNetworkSite>

Returns: a L<Paws::PrivateNetworks::UpdateNetworkSiteResponse> instance

Updates the specified network site.


=head2 UpdateNetworkSitePlan

=over

=item NetworkSiteArn => Str

=item PendingPlan => L<Paws::PrivateNetworks::SitePlan>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PrivateNetworks::UpdateNetworkSitePlan>

Returns: a L<Paws::PrivateNetworks::UpdateNetworkSiteResponse> instance

Updates the specified network site plan.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDeviceIdentifiers(sub { },NetworkArn => Str, [Filters => L<Paws::PrivateNetworks::DeviceIdentifierFilters>, MaxResults => Int, StartToken => Str])

=head2 ListAllDeviceIdentifiers(NetworkArn => Str, [Filters => L<Paws::PrivateNetworks::DeviceIdentifierFilters>, MaxResults => Int, StartToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deviceIdentifiers, passing the object as the first parameter, and the string 'deviceIdentifiers' as the second parameter 

If not, it will return a a L<Paws::PrivateNetworks::ListDeviceIdentifiersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNetworkResources(sub { },NetworkArn => Str, [Filters => L<Paws::PrivateNetworks::NetworkResourceFilters>, MaxResults => Int, StartToken => Str])

=head2 ListAllNetworkResources(NetworkArn => Str, [Filters => L<Paws::PrivateNetworks::NetworkResourceFilters>, MaxResults => Int, StartToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - networkResources, passing the object as the first parameter, and the string 'networkResources' as the second parameter 

If not, it will return a a L<Paws::PrivateNetworks::ListNetworkResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNetworks(sub { },[Filters => L<Paws::PrivateNetworks::NetworkFilters>, MaxResults => Int, StartToken => Str])

=head2 ListAllNetworks([Filters => L<Paws::PrivateNetworks::NetworkFilters>, MaxResults => Int, StartToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - networks, passing the object as the first parameter, and the string 'networks' as the second parameter 

If not, it will return a a L<Paws::PrivateNetworks::ListNetworksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNetworkSites(sub { },NetworkArn => Str, [Filters => L<Paws::PrivateNetworks::NetworkSiteFilters>, MaxResults => Int, StartToken => Str])

=head2 ListAllNetworkSites(NetworkArn => Str, [Filters => L<Paws::PrivateNetworks::NetworkSiteFilters>, MaxResults => Int, StartToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - networkSites, passing the object as the first parameter, and the string 'networkSites' as the second parameter 

If not, it will return a a L<Paws::PrivateNetworks::ListNetworkSitesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrders(sub { },NetworkArn => Str, [Filters => L<Paws::PrivateNetworks::OrderFilters>, MaxResults => Int, StartToken => Str])

=head2 ListAllOrders(NetworkArn => Str, [Filters => L<Paws::PrivateNetworks::OrderFilters>, MaxResults => Int, StartToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - orders, passing the object as the first parameter, and the string 'orders' as the second parameter 

If not, it will return a a L<Paws::PrivateNetworks::ListOrdersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

