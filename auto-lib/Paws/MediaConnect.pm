package Paws::MediaConnect;
  use Moose;
  sub service { 'mediaconnect' }
  sub signing_name { 'mediaconnect' }
  sub version { '2018-11-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddBridgeOutputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddBridgeOutputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddBridgeSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddBridgeSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddFlowMediaStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddFlowMediaStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddFlowOutputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddFlowOutputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddFlowSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddFlowSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddFlowVpcInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::AddFlowVpcInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBridge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::CreateBridge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::CreateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::CreateGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBridge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DeleteBridge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DeleteFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DeleteGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterGatewayInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DeregisterGatewayInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBridge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeBridge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlowSourceMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeFlowSourceMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlowSourceThumbnail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeFlowSourceThumbnail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGatewayInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeGatewayInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::DescribeReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GrantFlowEntitlements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::GrantFlowEntitlements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBridges {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListBridges', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntitlements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListEntitlements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGatewayInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListGatewayInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::PurchaseOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveBridgeOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveBridgeOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveBridgeSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveBridgeSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFlowMediaStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveFlowMediaStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFlowOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveFlowOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFlowSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveFlowSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFlowVpcInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RemoveFlowVpcInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeFlowEntitlement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::RevokeFlowEntitlement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::StartFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::StopFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBridge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateBridge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBridgeOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateBridgeOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBridgeSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateBridgeSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBridgeState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateBridgeState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowEntitlement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlowEntitlement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowMediaStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlowMediaStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlowOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateFlowSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGatewayInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaConnect::UpdateGatewayInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBridges {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBridges(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBridges(@_, NextToken => $next_result->NextToken);
        push @{ $result->Bridges }, @{ $next_result->Bridges };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Bridges') foreach (@{ $result->Bridges });
        $result = $self->ListBridges(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Bridges') foreach (@{ $result->Bridges });
    }

    return undef
  }
  sub ListAllEntitlements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEntitlements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEntitlements(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entitlements }, @{ $next_result->Entitlements };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entitlements') foreach (@{ $result->Entitlements });
        $result = $self->ListEntitlements(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entitlements') foreach (@{ $result->Entitlements });
    }

    return undef
  }
  sub ListAllFlows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFlows(@_, NextToken => $next_result->NextToken);
        push @{ $result->Flows }, @{ $next_result->Flows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Flows') foreach (@{ $result->Flows });
        $result = $self->ListFlows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Flows') foreach (@{ $result->Flows });
    }

    return undef
  }
  sub ListAllGatewayInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGatewayInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGatewayInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->ListGatewayInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub ListAllGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->Gateways }, @{ $next_result->Gateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Gateways') foreach (@{ $result->Gateways });
        $result = $self->ListGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Gateways') foreach (@{ $result->Gateways });
    }

    return undef
  }
  sub ListAllOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->Offerings }, @{ $next_result->Offerings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Offerings') foreach (@{ $result->Offerings });
        $result = $self->ListOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Offerings') foreach (@{ $result->Offerings });
    }

    return undef
  }
  sub ListAllReservations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReservations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListReservations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Reservations }, @{ $next_result->Reservations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
        $result = $self->ListReservations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
    }

    return undef
  }


  sub operations { qw/AddBridgeOutputs AddBridgeSources AddFlowMediaStreams AddFlowOutputs AddFlowSources AddFlowVpcInterfaces CreateBridge CreateFlow CreateGateway DeleteBridge DeleteFlow DeleteGateway DeregisterGatewayInstance DescribeBridge DescribeFlow DescribeFlowSourceMetadata DescribeFlowSourceThumbnail DescribeGateway DescribeGatewayInstance DescribeOffering DescribeReservation GrantFlowEntitlements ListBridges ListEntitlements ListFlows ListGatewayInstances ListGateways ListOfferings ListReservations ListTagsForResource PurchaseOffering RemoveBridgeOutput RemoveBridgeSource RemoveFlowMediaStream RemoveFlowOutput RemoveFlowSource RemoveFlowVpcInterface RevokeFlowEntitlement StartFlow StopFlow TagResource UntagResource UpdateBridge UpdateBridgeOutput UpdateBridgeSource UpdateBridgeState UpdateFlow UpdateFlowEntitlement UpdateFlowMediaStream UpdateFlowOutput UpdateFlowSource UpdateGatewayInstance / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect - Perl Interface to AWS AWS MediaConnect

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaConnect');
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

Welcome to the Elemental MediaConnect API reference.

MediaConnect is a service that lets you ingest live video content into
the cloud and distribute it to destinations all over the world, both
inside and outside the Amazon Web Services cloud. This API reference
provides descriptions, syntax, and usage examples for each of the
actions and data types that are supported by MediaConnect.

Use the following links to get started with the MediaConnect API:

=over

=item *

Actions
(https://docs.aws.amazon.com/mediaconnect/latest/api/API_Operations.html):
An alphabetical list of all MediaConnect API operations.

=item *

Data types
(https://docs.aws.amazon.com/mediaconnect/latest/api/API_Types.html):
An alphabetical list of all MediaConnect data types.

=item *

Common parameters
(https://docs.aws.amazon.com/mediaconnect/latest/api/CommonParameters.html):
Parameters that all operations can use.

=item *

Common errors
(https://docs.aws.amazon.com/mediaconnect/latest/api/CommonErrors.html):
Client and server errors that all operations can return.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14>


=head1 METHODS

=head2 AddBridgeOutputs

=over

=item BridgeArn => Str

=item Outputs => ArrayRef[L<Paws::MediaConnect::AddBridgeOutputRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddBridgeOutputs>

Returns: a L<Paws::MediaConnect::AddBridgeOutputsResponse> instance

Adds outputs to an existing bridge.


=head2 AddBridgeSources

=over

=item BridgeArn => Str

=item Sources => ArrayRef[L<Paws::MediaConnect::AddBridgeSourceRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddBridgeSources>

Returns: a L<Paws::MediaConnect::AddBridgeSourcesResponse> instance

Adds sources to an existing bridge.


=head2 AddFlowMediaStreams

=over

=item FlowArn => Str

=item MediaStreams => ArrayRef[L<Paws::MediaConnect::AddMediaStreamRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddFlowMediaStreams>

Returns: a L<Paws::MediaConnect::AddFlowMediaStreamsResponse> instance

Adds media streams to an existing flow. After you add a media stream to
a flow, you can associate it with a source and/or an output that uses
the ST 2110 JPEG XS or CDI protocol.


=head2 AddFlowOutputs

=over

=item FlowArn => Str

=item Outputs => ArrayRef[L<Paws::MediaConnect::AddOutputRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddFlowOutputs>

Returns: a L<Paws::MediaConnect::AddFlowOutputsResponse> instance

Adds outputs to an existing flow. You can create up to 50 outputs per
flow.


=head2 AddFlowSources

=over

=item FlowArn => Str

=item Sources => ArrayRef[L<Paws::MediaConnect::SetSourceRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddFlowSources>

Returns: a L<Paws::MediaConnect::AddFlowSourcesResponse> instance

Adds sources to a flow.


=head2 AddFlowVpcInterfaces

=over

=item FlowArn => Str

=item VpcInterfaces => ArrayRef[L<Paws::MediaConnect::VpcInterfaceRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::AddFlowVpcInterfaces>

Returns: a L<Paws::MediaConnect::AddFlowVpcInterfacesResponse> instance

Adds VPC interfaces to a flow.


=head2 CreateBridge

=over

=item Name => Str

=item PlacementArn => Str

=item Sources => ArrayRef[L<Paws::MediaConnect::AddBridgeSourceRequest>]

=item [EgressGatewayBridge => L<Paws::MediaConnect::AddEgressGatewayBridgeRequest>]

=item [IngressGatewayBridge => L<Paws::MediaConnect::AddIngressGatewayBridgeRequest>]

=item [Outputs => ArrayRef[L<Paws::MediaConnect::AddBridgeOutputRequest>]]

=item [SourceFailoverConfig => L<Paws::MediaConnect::FailoverConfig>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::CreateBridge>

Returns: a L<Paws::MediaConnect::CreateBridgeResponse> instance

Creates a new bridge. The request must include one source.


=head2 CreateFlow

=over

=item Name => Str

=item [AvailabilityZone => Str]

=item [Entitlements => ArrayRef[L<Paws::MediaConnect::GrantEntitlementRequest>]]

=item [FlowSize => Str]

=item [Maintenance => L<Paws::MediaConnect::AddMaintenance>]

=item [MediaStreams => ArrayRef[L<Paws::MediaConnect::AddMediaStreamRequest>]]

=item [NdiConfig => L<Paws::MediaConnect::NdiConfig>]

=item [Outputs => ArrayRef[L<Paws::MediaConnect::AddOutputRequest>]]

=item [Source => L<Paws::MediaConnect::SetSourceRequest>]

=item [SourceFailoverConfig => L<Paws::MediaConnect::FailoverConfig>]

=item [SourceMonitoringConfig => L<Paws::MediaConnect::MonitoringConfig>]

=item [Sources => ArrayRef[L<Paws::MediaConnect::SetSourceRequest>]]

=item [VpcInterfaces => ArrayRef[L<Paws::MediaConnect::VpcInterfaceRequest>]]


=back

Each argument is described in detail in: L<Paws::MediaConnect::CreateFlow>

Returns: a L<Paws::MediaConnect::CreateFlowResponse> instance

Creates a new flow. The request must include one source. The request
optionally can include outputs (up to 50) and entitlements (up to 50).


=head2 CreateGateway

=over

=item EgressCidrBlocks => ArrayRef[Str|Undef]

=item Name => Str

=item Networks => ArrayRef[L<Paws::MediaConnect::GatewayNetwork>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::CreateGateway>

Returns: a L<Paws::MediaConnect::CreateGatewayResponse> instance

Creates a new gateway. The request must include at least one network
(up to four).


=head2 DeleteBridge

=over

=item BridgeArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DeleteBridge>

Returns: a L<Paws::MediaConnect::DeleteBridgeResponse> instance

Deletes a bridge. Before you can delete a bridge, you must stop the
bridge.


=head2 DeleteFlow

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DeleteFlow>

Returns: a L<Paws::MediaConnect::DeleteFlowResponse> instance

Deletes a flow. Before you can delete a flow, you must stop the flow.


=head2 DeleteGateway

=over

=item GatewayArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DeleteGateway>

Returns: a L<Paws::MediaConnect::DeleteGatewayResponse> instance

Deletes a gateway. Before you can delete a gateway, you must deregister
its instances and delete its bridges.


=head2 DeregisterGatewayInstance

=over

=item GatewayInstanceArn => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::MediaConnect::DeregisterGatewayInstance>

Returns: a L<Paws::MediaConnect::DeregisterGatewayInstanceResponse> instance

Deregisters an instance. Before you deregister an instance, all bridges
running on the instance must be stopped. If you want to deregister an
instance without stopping the bridges, you must use the --force option.


=head2 DescribeBridge

=over

=item BridgeArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeBridge>

Returns: a L<Paws::MediaConnect::DescribeBridgeResponse> instance

Displays the details of a bridge.


=head2 DescribeFlow

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeFlow>

Returns: a L<Paws::MediaConnect::DescribeFlowResponse> instance

Displays the details of a flow. The response includes the flow Amazon
Resource Name (ARN), name, and Availability Zone, as well as details
about the source, outputs, and entitlements.


=head2 DescribeFlowSourceMetadata

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeFlowSourceMetadata>

Returns: a L<Paws::MediaConnect::DescribeFlowSourceMetadataResponse> instance

The C<DescribeFlowSourceMetadata> API is used to view information about
the flow's source transport stream and programs. This API displays
status messages about the flow's source as well as details about the
program's video, audio, and other data.


=head2 DescribeFlowSourceThumbnail

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeFlowSourceThumbnail>

Returns: a L<Paws::MediaConnect::DescribeFlowSourceThumbnailResponse> instance

Describes the thumbnail for the flow source.


=head2 DescribeGateway

=over

=item GatewayArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeGateway>

Returns: a L<Paws::MediaConnect::DescribeGatewayResponse> instance

Displays the details of a gateway. The response includes the gateway
Amazon Resource Name (ARN), name, and CIDR blocks, as well as details
about the networks.


=head2 DescribeGatewayInstance

=over

=item GatewayInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeGatewayInstance>

Returns: a L<Paws::MediaConnect::DescribeGatewayInstanceResponse> instance

Displays the details of an instance.


=head2 DescribeOffering

=over

=item OfferingArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeOffering>

Returns: a L<Paws::MediaConnect::DescribeOfferingResponse> instance

Displays the details of an offering. The response includes the offering
description, duration, outbound bandwidth, price, and Amazon Resource
Name (ARN).


=head2 DescribeReservation

=over

=item ReservationArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::DescribeReservation>

Returns: a L<Paws::MediaConnect::DescribeReservationResponse> instance

Displays the details of a reservation. The response includes the
reservation name, state, start date and time, and the details of the
offering that make up the rest of the reservation (such as price,
duration, and outbound bandwidth).


=head2 GrantFlowEntitlements

=over

=item Entitlements => ArrayRef[L<Paws::MediaConnect::GrantEntitlementRequest>]

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::GrantFlowEntitlements>

Returns: a L<Paws::MediaConnect::GrantFlowEntitlementsResponse> instance

Grants entitlements to an existing flow.


=head2 ListBridges

=over

=item [FilterArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListBridges>

Returns: a L<Paws::MediaConnect::ListBridgesResponse> instance

Displays a list of bridges that are associated with this account and an
optionally specified Amazon Resource Name (ARN). This request returns a
paginated result.


=head2 ListEntitlements

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListEntitlements>

Returns: a L<Paws::MediaConnect::ListEntitlementsResponse> instance

Displays a list of all entitlements that have been granted to this
account. This request returns 20 results per page.


=head2 ListFlows

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListFlows>

Returns: a L<Paws::MediaConnect::ListFlowsResponse> instance

Displays a list of flows that are associated with this account. This
request returns a paginated result.


=head2 ListGatewayInstances

=over

=item [FilterArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListGatewayInstances>

Returns: a L<Paws::MediaConnect::ListGatewayInstancesResponse> instance

Displays a list of instances associated with the Amazon Web Services
account. This request returns a paginated result. You can use the
filterArn property to display only the instances associated with the
selected Gateway Amazon Resource Name (ARN).


=head2 ListGateways

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListGateways>

Returns: a L<Paws::MediaConnect::ListGatewaysResponse> instance

Displays a list of gateways that are associated with this account. This
request returns a paginated result.


=head2 ListOfferings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListOfferings>

Returns: a L<Paws::MediaConnect::ListOfferingsResponse> instance

Displays a list of all offerings that are available to this account in
the current Amazon Web Services Region. If you have an active
reservation (which means you've purchased an offering that has already
started and hasn't expired yet), your account isn't eligible for other
offerings.


=head2 ListReservations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListReservations>

Returns: a L<Paws::MediaConnect::ListReservationsResponse> instance

Displays a list of all reservations that have been purchased by this
account in the current Amazon Web Services Region. This list includes
all reservations in all states (such as active and expired).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::ListTagsForResource>

Returns: a L<Paws::MediaConnect::ListTagsForResourceResponse> instance

List all tags on a MediaConnect resource.


=head2 PurchaseOffering

=over

=item OfferingArn => Str

=item ReservationName => Str

=item Start => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::PurchaseOffering>

Returns: a L<Paws::MediaConnect::PurchaseOfferingResponse> instance

Submits a request to purchase an offering. If you already have an
active reservation, you can't purchase another offering.


=head2 RemoveBridgeOutput

=over

=item BridgeArn => Str

=item OutputName => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveBridgeOutput>

Returns: a L<Paws::MediaConnect::RemoveBridgeOutputResponse> instance

Removes an output from a bridge.


=head2 RemoveBridgeSource

=over

=item BridgeArn => Str

=item SourceName => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveBridgeSource>

Returns: a L<Paws::MediaConnect::RemoveBridgeSourceResponse> instance

Removes a source from a bridge.


=head2 RemoveFlowMediaStream

=over

=item FlowArn => Str

=item MediaStreamName => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveFlowMediaStream>

Returns: a L<Paws::MediaConnect::RemoveFlowMediaStreamResponse> instance

Removes a media stream from a flow. This action is only available if
the media stream is not associated with a source or output.


=head2 RemoveFlowOutput

=over

=item FlowArn => Str

=item OutputArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveFlowOutput>

Returns: a L<Paws::MediaConnect::RemoveFlowOutputResponse> instance

Removes an output from an existing flow. This request can be made only
on an output that does not have an entitlement associated with it. If
the output has an entitlement, you must revoke the entitlement instead.
When an entitlement is revoked from a flow, the service automatically
removes the associated output.


=head2 RemoveFlowSource

=over

=item FlowArn => Str

=item SourceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveFlowSource>

Returns: a L<Paws::MediaConnect::RemoveFlowSourceResponse> instance

Removes a source from an existing flow. This request can be made only
if there is more than one source on the flow.


=head2 RemoveFlowVpcInterface

=over

=item FlowArn => Str

=item VpcInterfaceName => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RemoveFlowVpcInterface>

Returns: a L<Paws::MediaConnect::RemoveFlowVpcInterfaceResponse> instance

Removes a VPC Interface from an existing flow. This request can be made
only on a VPC interface that does not have a Source or Output
associated with it. If the VPC interface is referenced by a Source or
Output, you must first delete or update the Source or Output to no
longer reference the VPC interface.


=head2 RevokeFlowEntitlement

=over

=item EntitlementArn => Str

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::RevokeFlowEntitlement>

Returns: a L<Paws::MediaConnect::RevokeFlowEntitlementResponse> instance

Revokes an entitlement from a flow. Once an entitlement is revoked, the
content becomes unavailable to the subscriber and the associated output
is removed.


=head2 StartFlow

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::StartFlow>

Returns: a L<Paws::MediaConnect::StartFlowResponse> instance

Starts a flow.


=head2 StopFlow

=over

=item FlowArn => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::StopFlow>

Returns: a L<Paws::MediaConnect::StopFlowResponse> instance

Stops a flow.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::MediaConnect::__mapOfString>


=back

Each argument is described in detail in: L<Paws::MediaConnect::TagResource>

Returns: nothing

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource are not specified in the
request parameters, they are not changed. When a resource is deleted,
the tags associated with that resource are deleted as well.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UntagResource>

Returns: nothing

Deletes specified tags from a resource.


=head2 UpdateBridge

=over

=item BridgeArn => Str

=item [EgressGatewayBridge => L<Paws::MediaConnect::UpdateEgressGatewayBridgeRequest>]

=item [IngressGatewayBridge => L<Paws::MediaConnect::UpdateIngressGatewayBridgeRequest>]

=item [SourceFailoverConfig => L<Paws::MediaConnect::UpdateFailoverConfig>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateBridge>

Returns: a L<Paws::MediaConnect::UpdateBridgeResponse> instance

Updates the bridge.


=head2 UpdateBridgeOutput

=over

=item BridgeArn => Str

=item OutputName => Str

=item [NetworkOutput => L<Paws::MediaConnect::UpdateBridgeNetworkOutputRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateBridgeOutput>

Returns: a L<Paws::MediaConnect::UpdateBridgeOutputResponse> instance

Updates an existing bridge output.


=head2 UpdateBridgeSource

=over

=item BridgeArn => Str

=item SourceName => Str

=item [FlowSource => L<Paws::MediaConnect::UpdateBridgeFlowSourceRequest>]

=item [NetworkSource => L<Paws::MediaConnect::UpdateBridgeNetworkSourceRequest>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateBridgeSource>

Returns: a L<Paws::MediaConnect::UpdateBridgeSourceResponse> instance

Updates an existing bridge source.


=head2 UpdateBridgeState

=over

=item BridgeArn => Str

=item DesiredState => Str


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateBridgeState>

Returns: a L<Paws::MediaConnect::UpdateBridgeStateResponse> instance

Updates the bridge state.


=head2 UpdateFlow

=over

=item FlowArn => Str

=item [Maintenance => L<Paws::MediaConnect::UpdateMaintenance>]

=item [NdiConfig => L<Paws::MediaConnect::NdiConfig>]

=item [SourceFailoverConfig => L<Paws::MediaConnect::UpdateFailoverConfig>]

=item [SourceMonitoringConfig => L<Paws::MediaConnect::MonitoringConfig>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlow>

Returns: a L<Paws::MediaConnect::UpdateFlowResponse> instance

Updates an existing flow.


=head2 UpdateFlowEntitlement

=over

=item EntitlementArn => Str

=item FlowArn => Str

=item [Description => Str]

=item [Encryption => L<Paws::MediaConnect::UpdateEncryption>]

=item [EntitlementStatus => Str]

=item [Subscribers => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlowEntitlement>

Returns: a L<Paws::MediaConnect::UpdateFlowEntitlementResponse> instance

Updates an entitlement. You can change an entitlement's description,
subscribers, and encryption. If you change the subscribers, the service
will remove the outputs that are are used by the subscribers that are
removed.


=head2 UpdateFlowMediaStream

=over

=item FlowArn => Str

=item MediaStreamName => Str

=item [Attributes => L<Paws::MediaConnect::MediaStreamAttributesRequest>]

=item [ClockRate => Int]

=item [Description => Str]

=item [MediaStreamType => Str]

=item [VideoFormat => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlowMediaStream>

Returns: a L<Paws::MediaConnect::UpdateFlowMediaStreamResponse> instance

Updates an existing media stream.


=head2 UpdateFlowOutput

=over

=item FlowArn => Str

=item OutputArn => Str

=item [CidrAllowList => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [Destination => Str]

=item [Encryption => L<Paws::MediaConnect::UpdateEncryption>]

=item [MaxLatency => Int]

=item [MediaStreamOutputConfigurations => ArrayRef[L<Paws::MediaConnect::MediaStreamOutputConfigurationRequest>]]

=item [MinLatency => Int]

=item [NdiProgramName => Str]

=item [NdiSpeedHqQuality => Int]

=item [OutputStatus => Str]

=item [Port => Int]

=item [Protocol => Str]

=item [RemoteId => Str]

=item [SenderControlPort => Int]

=item [SenderIpAddress => Str]

=item [SmoothingLatency => Int]

=item [StreamId => Str]

=item [VpcInterfaceAttachment => L<Paws::MediaConnect::VpcInterfaceAttachment>]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlowOutput>

Returns: a L<Paws::MediaConnect::UpdateFlowOutputResponse> instance

Updates an existing flow output.


=head2 UpdateFlowSource

=over

=item FlowArn => Str

=item SourceArn => Str

=item [Decryption => L<Paws::MediaConnect::UpdateEncryption>]

=item [Description => Str]

=item [EntitlementArn => Str]

=item [GatewayBridgeSource => L<Paws::MediaConnect::UpdateGatewayBridgeSourceRequest>]

=item [IngestPort => Int]

=item [MaxBitrate => Int]

=item [MaxLatency => Int]

=item [MaxSyncBuffer => Int]

=item [MediaStreamSourceConfigurations => ArrayRef[L<Paws::MediaConnect::MediaStreamSourceConfigurationRequest>]]

=item [MinLatency => Int]

=item [Protocol => Str]

=item [SenderControlPort => Int]

=item [SenderIpAddress => Str]

=item [SourceListenerAddress => Str]

=item [SourceListenerPort => Int]

=item [StreamId => Str]

=item [VpcInterfaceName => Str]

=item [WhitelistCidr => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateFlowSource>

Returns: a L<Paws::MediaConnect::UpdateFlowSourceResponse> instance

Updates the source of a flow.


=head2 UpdateGatewayInstance

=over

=item GatewayInstanceArn => Str

=item [BridgePlacement => Str]


=back

Each argument is described in detail in: L<Paws::MediaConnect::UpdateGatewayInstance>

Returns: a L<Paws::MediaConnect::UpdateGatewayInstanceResponse> instance

Updates an existing gateway instance.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBridges(sub { },[FilterArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllBridges([FilterArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Bridges, passing the object as the first parameter, and the string 'Bridges' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListBridgesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEntitlements(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEntitlements([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entitlements, passing the object as the first parameter, and the string 'Entitlements' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListEntitlementsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlows(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllFlows([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Flows, passing the object as the first parameter, and the string 'Flows' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListFlowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGatewayInstances(sub { },[FilterArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllGatewayInstances([FilterArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListGatewayInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGateways(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllGateways([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Gateways, passing the object as the first parameter, and the string 'Gateways' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListGatewaysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOfferings(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllOfferings([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Offerings, passing the object as the first parameter, and the string 'Offerings' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListOfferingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReservations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllReservations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Reservations, passing the object as the first parameter, and the string 'Reservations' as the second parameter 

If not, it will return a a L<Paws::MediaConnect::ListReservationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

