package Paws::LocationService;
  use Moose;
  sub service { 'geo' }
  sub signing_name { 'geo' }
  sub version { '2020-11-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateTrackerConsumer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::AssociateTrackerConsumer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteDevicePositionHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::BatchDeleteDevicePositionHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteGeofence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::BatchDeleteGeofence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchEvaluateGeofences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::BatchEvaluateGeofences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetDevicePosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::BatchGetDevicePosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutGeofence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::BatchPutGeofence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateDevicePosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::BatchUpdateDevicePosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CalculateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::CalculateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CalculateRouteMatrix {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::CalculateRouteMatrix', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGeofenceCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::CreateGeofenceCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::CreateKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::CreateMap', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlaceIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::CreatePlaceIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRouteCalculator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::CreateRouteCalculator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::CreateTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGeofenceCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DeleteGeofenceCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DeleteKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DeleteMap', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlaceIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DeletePlaceIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRouteCalculator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DeleteRouteCalculator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DeleteTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGeofenceCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DescribeGeofenceCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DescribeKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DescribeMap', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePlaceIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DescribePlaceIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRouteCalculator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DescribeRouteCalculator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DescribeTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTrackerConsumer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::DisassociateTrackerConsumer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ForecastGeofenceEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ForecastGeofenceEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevicePosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::GetDevicePosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevicePositionHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::GetDevicePositionHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGeofence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::GetGeofence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMapGlyphs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::GetMapGlyphs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMapSprites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::GetMapSprites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMapStyleDescriptor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::GetMapStyleDescriptor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMapTile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::GetMapTile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::GetPlace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevicePositions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListDevicePositions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGeofenceCollections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListGeofenceCollections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGeofences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListGeofences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMaps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListMaps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPlaceIndexes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListPlaceIndexes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRouteCalculators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListRouteCalculators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrackerConsumers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListTrackerConsumers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrackers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::ListTrackers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutGeofence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::PutGeofence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchPlaceIndexForPosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::SearchPlaceIndexForPosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchPlaceIndexForSuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::SearchPlaceIndexForSuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchPlaceIndexForText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::SearchPlaceIndexForText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGeofenceCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::UpdateGeofenceCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::UpdateKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::UpdateMap', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePlaceIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::UpdatePlaceIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRouteCalculator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::UpdateRouteCalculator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTracker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::UpdateTracker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyDevicePosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LocationService::VerifyDevicePosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ForecastAllGeofenceEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ForecastGeofenceEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ForecastGeofenceEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->ForecastedEvents }, @{ $next_result->ForecastedEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ForecastedEvents') foreach (@{ $result->ForecastedEvents });
        $result = $self->ForecastGeofenceEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ForecastedEvents') foreach (@{ $result->ForecastedEvents });
    }

    return undef
  }
  sub GetAllDevicePositionHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDevicePositionHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDevicePositionHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->DevicePositions }, @{ $next_result->DevicePositions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DevicePositions') foreach (@{ $result->DevicePositions });
        $result = $self->GetDevicePositionHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DevicePositions') foreach (@{ $result->DevicePositions });
    }

    return undef
  }
  sub ListAllDevicePositions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevicePositions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDevicePositions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->ListDevicePositions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }
  sub ListAllGeofenceCollections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGeofenceCollections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGeofenceCollections(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->ListGeofenceCollections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }
  sub ListAllGeofences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGeofences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGeofences(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->ListGeofences(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }
  sub ListAllKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListKeys(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->ListKeys(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }
  sub ListAllMaps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMaps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMaps(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->ListMaps(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }
  sub ListAllPlaceIndexes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPlaceIndexes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPlaceIndexes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->ListPlaceIndexes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }
  sub ListAllRouteCalculators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRouteCalculators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRouteCalculators(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->ListRouteCalculators(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }
  sub ListAllTrackerConsumers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrackerConsumers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrackerConsumers(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConsumerArns }, @{ $next_result->ConsumerArns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConsumerArns') foreach (@{ $result->ConsumerArns });
        $result = $self->ListTrackerConsumers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConsumerArns') foreach (@{ $result->ConsumerArns });
    }

    return undef
  }
  sub ListAllTrackers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrackers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrackers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->ListTrackers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }


  sub operations { qw/AssociateTrackerConsumer BatchDeleteDevicePositionHistory BatchDeleteGeofence BatchEvaluateGeofences BatchGetDevicePosition BatchPutGeofence BatchUpdateDevicePosition CalculateRoute CalculateRouteMatrix CreateGeofenceCollection CreateKey CreateMap CreatePlaceIndex CreateRouteCalculator CreateTracker DeleteGeofenceCollection DeleteKey DeleteMap DeletePlaceIndex DeleteRouteCalculator DeleteTracker DescribeGeofenceCollection DescribeKey DescribeMap DescribePlaceIndex DescribeRouteCalculator DescribeTracker DisassociateTrackerConsumer ForecastGeofenceEvents GetDevicePosition GetDevicePositionHistory GetGeofence GetMapGlyphs GetMapSprites GetMapStyleDescriptor GetMapTile GetPlace ListDevicePositions ListGeofenceCollections ListGeofences ListKeys ListMaps ListPlaceIndexes ListRouteCalculators ListTagsForResource ListTrackerConsumers ListTrackers PutGeofence SearchPlaceIndexForPosition SearchPlaceIndexForSuggestions SearchPlaceIndexForText TagResource UntagResource UpdateGeofenceCollection UpdateKey UpdateMap UpdatePlaceIndex UpdateRouteCalculator UpdateTracker VerifyDevicePosition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService - Perl Interface to AWS Amazon Location Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LocationService');
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

"Suite of geospatial services including Maps, Places, Routes, Tracking,
and Geofencing"

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo-2020-11-19>


=head1 METHODS

=head2 AssociateTrackerConsumer

=over

=item ConsumerArn => Str

=item TrackerName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::AssociateTrackerConsumer>

Returns: a L<Paws::LocationService::AssociateTrackerConsumerResponse> instance

Creates an association between a geofence collection and a tracker
resource. This allows the tracker resource to communicate location data
to the linked geofence collection.

You can associate up to five geofence collections to each tracker
resource.

Currently not supported E<mdash> Cross-account configurations, such as
creating associations between a tracker resource in one account and a
geofence collection in another account.


=head2 BatchDeleteDevicePositionHistory

=over

=item DeviceIds => ArrayRef[Str|Undef]

=item TrackerName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::BatchDeleteDevicePositionHistory>

Returns: a L<Paws::LocationService::BatchDeleteDevicePositionHistoryResponse> instance

Deletes the position history of one or more devices from a tracker
resource.


=head2 BatchDeleteGeofence

=over

=item CollectionName => Str

=item GeofenceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LocationService::BatchDeleteGeofence>

Returns: a L<Paws::LocationService::BatchDeleteGeofenceResponse> instance

Deletes a batch of geofences from a geofence collection.

This operation deletes the resource permanently.


=head2 BatchEvaluateGeofences

=over

=item CollectionName => Str

=item DevicePositionUpdates => ArrayRef[L<Paws::LocationService::DevicePositionUpdate>]


=back

Each argument is described in detail in: L<Paws::LocationService::BatchEvaluateGeofences>

Returns: a L<Paws::LocationService::BatchEvaluateGeofencesResponse> instance

Evaluates device positions against the geofence geometries from a given
geofence collection.

This operation always returns an empty response because geofences are
asynchronously evaluated. The evaluation determines if the device has
entered or exited a geofenced area, and then publishes one of the
following events to Amazon EventBridge:

=over

=item *

C<ENTER> if Amazon Location determines that the tracked device has
entered a geofenced area.

=item *

C<EXIT> if Amazon Location determines that the tracked device has
exited a geofenced area.

=back

The last geofence that a device was observed within is tracked for 30
days after the most recent device position update.

Geofence evaluation uses the given device position. It does not account
for the optional C<Accuracy> of a C<DevicePositionUpdate>.

The C<DeviceID> is used as a string to represent the device. You do not
need to have a C<Tracker> associated with the C<DeviceID>.


=head2 BatchGetDevicePosition

=over

=item DeviceIds => ArrayRef[Str|Undef]

=item TrackerName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::BatchGetDevicePosition>

Returns: a L<Paws::LocationService::BatchGetDevicePositionResponse> instance

Lists the latest device positions for requested devices.


=head2 BatchPutGeofence

=over

=item CollectionName => Str

=item Entries => ArrayRef[L<Paws::LocationService::BatchPutGeofenceRequestEntry>]


=back

Each argument is described in detail in: L<Paws::LocationService::BatchPutGeofence>

Returns: a L<Paws::LocationService::BatchPutGeofenceResponse> instance

A batch request for storing geofence geometries into a given geofence
collection, or updates the geometry of an existing geofence if a
geofence ID is included in the request.


=head2 BatchUpdateDevicePosition

=over

=item TrackerName => Str

=item Updates => ArrayRef[L<Paws::LocationService::DevicePositionUpdate>]


=back

Each argument is described in detail in: L<Paws::LocationService::BatchUpdateDevicePosition>

Returns: a L<Paws::LocationService::BatchUpdateDevicePositionResponse> instance

Uploads position update data for one or more devices to a tracker
resource (up to 10 devices per batch). Amazon Location uses the data
when it reports the last known device position and position history.
Amazon Location retains location data for 30 days.

Position updates are handled based on the C<PositionFiltering> property
of the tracker. When C<PositionFiltering> is set to C<TimeBased>,
updates are evaluated against linked geofence collections, and location
data is stored at a maximum of one position per 30 second interval. If
your update frequency is more often than every 30 seconds, only one
update per 30 seconds is stored for each unique device ID.

When C<PositionFiltering> is set to C<DistanceBased> filtering,
location data is stored and evaluated against linked geofence
collections only if the device has moved more than 30 m (98.4 ft).

When C<PositionFiltering> is set to C<AccuracyBased> filtering,
location data is stored and evaluated against linked geofence
collections only if the device has moved more than the measured
accuracy. For example, if two consecutive updates from a device have a
horizontal accuracy of 5 m and 10 m, the second update is neither
stored or evaluated if the device has moved less than 15 m. If
C<PositionFiltering> is set to C<AccuracyBased> filtering, Amazon
Location uses the default value C<{ "Horizontal": 0}> when accuracy is
not provided on a C<DevicePositionUpdate>.


=head2 CalculateRoute

=over

=item CalculatorName => Str

=item DeparturePosition => ArrayRef[Num]

=item DestinationPosition => ArrayRef[Num]

=item [ArrivalTime => Str]

=item [CarModeOptions => L<Paws::LocationService::CalculateRouteCarModeOptions>]

=item [DepartNow => Bool]

=item [DepartureTime => Str]

=item [DistanceUnit => Str]

=item [IncludeLegGeometry => Bool]

=item [Key => Str]

=item [OptimizeFor => Str]

=item [TravelMode => Str]

=item [TruckModeOptions => L<Paws::LocationService::CalculateRouteTruckModeOptions>]

=item [WaypointPositions => ArrayRef[ArrayRef[Num]]]


=back

Each argument is described in detail in: L<Paws::LocationService::CalculateRoute>

Returns: a L<Paws::LocationService::CalculateRouteResponse> instance

Calculates a route
(https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html)
given the following required parameters: C<DeparturePosition> and
C<DestinationPosition>. Requires that you first create a route
calculator resource
(https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html).

By default, a request that doesn't specify a departure time uses the
best time of day to travel with the best traffic conditions when
calculating the route.

Additional options include:

=over

=item *

Specifying a departure time
(https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html)
using either C<DepartureTime> or C<DepartNow>. This calculates a route
based on predictive traffic data at the given time.

You can't specify both C<DepartureTime> and C<DepartNow> in a single
request. Specifying both parameters returns a validation error.

=item *

Specifying a travel mode
(https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html)
using TravelMode sets the transportation mode used to calculate the
routes. This also lets you specify additional route preferences in
C<CarModeOptions> if traveling by C<Car>, or C<TruckModeOptions> if
traveling by C<Truck>.

If you specify C<walking> for the travel mode and your data provider is
Esri, the start and destination must be within 40km.

=back



=head2 CalculateRouteMatrix

=over

=item CalculatorName => Str

=item DeparturePositions => ArrayRef[ArrayRef[Num]]

=item DestinationPositions => ArrayRef[ArrayRef[Num]]

=item [CarModeOptions => L<Paws::LocationService::CalculateRouteCarModeOptions>]

=item [DepartNow => Bool]

=item [DepartureTime => Str]

=item [DistanceUnit => Str]

=item [Key => Str]

=item [TravelMode => Str]

=item [TruckModeOptions => L<Paws::LocationService::CalculateRouteTruckModeOptions>]


=back

Each argument is described in detail in: L<Paws::LocationService::CalculateRouteMatrix>

Returns: a L<Paws::LocationService::CalculateRouteMatrixResponse> instance

Calculates a route matrix
(https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html)
given the following required parameters: C<DeparturePositions> and
C<DestinationPositions>. C<CalculateRouteMatrix> calculates routes and
returns the travel time and travel distance from each departure
position to each destination position in the request. For example,
given departure positions A and B, and destination positions X and Y,
C<CalculateRouteMatrix> will return time and distance for routes from A
to X, A to Y, B to X, and B to Y (in that order). The number of results
returned (and routes calculated) will be the number of
C<DeparturePositions> times the number of C<DestinationPositions>.

Your account is charged for each route calculated, not the number of
requests.

Requires that you first create a route calculator resource
(https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html).

By default, a request that doesn't specify a departure time uses the
best time of day to travel with the best traffic conditions when
calculating routes.

Additional options include:

=over

=item *

Specifying a departure time
(https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html)
using either C<DepartureTime> or C<DepartNow>. This calculates routes
based on predictive traffic data at the given time.

You can't specify both C<DepartureTime> and C<DepartNow> in a single
request. Specifying both parameters returns a validation error.

=item *

Specifying a travel mode
(https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html)
using TravelMode sets the transportation mode used to calculate the
routes. This also lets you specify additional route preferences in
C<CarModeOptions> if traveling by C<Car>, or C<TruckModeOptions> if
traveling by C<Truck>.

=back



=head2 CreateGeofenceCollection

=over

=item CollectionName => Str

=item [Description => Str]

=item [KmsKeyId => Str]

=item [PricingPlan => Str]

=item [PricingPlanDataSource => Str]

=item [Tags => L<Paws::LocationService::TagMap>]


=back

Each argument is described in detail in: L<Paws::LocationService::CreateGeofenceCollection>

Returns: a L<Paws::LocationService::CreateGeofenceCollectionResponse> instance

Creates a geofence collection, which manages and stores geofences.


=head2 CreateKey

=over

=item KeyName => Str

=item Restrictions => L<Paws::LocationService::ApiKeyRestrictions>

=item [Description => Str]

=item [ExpireTime => Str]

=item [NoExpiry => Bool]

=item [Tags => L<Paws::LocationService::TagMap>]


=back

Each argument is described in detail in: L<Paws::LocationService::CreateKey>

Returns: a L<Paws::LocationService::CreateKeyResponse> instance

Creates an API key resource in your Amazon Web Services account, which
lets you grant actions for Amazon Location resources to the API key
bearer.

For more information, see Using API keys
(https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html).


=head2 CreateMap

=over

=item Configuration => L<Paws::LocationService::MapConfiguration>

=item MapName => Str

=item [Description => Str]

=item [PricingPlan => Str]

=item [Tags => L<Paws::LocationService::TagMap>]


=back

Each argument is described in detail in: L<Paws::LocationService::CreateMap>

Returns: a L<Paws::LocationService::CreateMapResponse> instance

Creates a map resource in your Amazon Web Services account, which
provides map tiles of different styles sourced from global location
data providers.

If your application is tracking or routing assets you use in your
business, such as delivery vehicles or employees, you must not use Esri
as your geolocation provider. See section 82 of the Amazon Web Services
service terms (http://aws.amazon.com/service-terms) for more details.


=head2 CreatePlaceIndex

=over

=item DataSource => Str

=item IndexName => Str

=item [DataSourceConfiguration => L<Paws::LocationService::DataSourceConfiguration>]

=item [Description => Str]

=item [PricingPlan => Str]

=item [Tags => L<Paws::LocationService::TagMap>]


=back

Each argument is described in detail in: L<Paws::LocationService::CreatePlaceIndex>

Returns: a L<Paws::LocationService::CreatePlaceIndexResponse> instance

Creates a place index resource in your Amazon Web Services account. Use
a place index resource to geocode addresses and other text queries by
using the C<SearchPlaceIndexForText> operation, and reverse geocode
coordinates by using the C<SearchPlaceIndexForPosition> operation, and
enable autosuggestions by using the C<SearchPlaceIndexForSuggestions>
operation.

If your application is tracking or routing assets you use in your
business, such as delivery vehicles or employees, you must not use Esri
as your geolocation provider. See section 82 of the Amazon Web Services
service terms (http://aws.amazon.com/service-terms) for more details.


=head2 CreateRouteCalculator

=over

=item CalculatorName => Str

=item DataSource => Str

=item [Description => Str]

=item [PricingPlan => Str]

=item [Tags => L<Paws::LocationService::TagMap>]


=back

Each argument is described in detail in: L<Paws::LocationService::CreateRouteCalculator>

Returns: a L<Paws::LocationService::CreateRouteCalculatorResponse> instance

Creates a route calculator resource in your Amazon Web Services
account.

You can send requests to a route calculator resource to estimate travel
time, distance, and get directions. A route calculator sources traffic
and road network data from your chosen data provider.

If your application is tracking or routing assets you use in your
business, such as delivery vehicles or employees, you must not use Esri
as your geolocation provider. See section 82 of the Amazon Web Services
service terms (http://aws.amazon.com/service-terms) for more details.


=head2 CreateTracker

=over

=item TrackerName => Str

=item [Description => Str]

=item [EventBridgeEnabled => Bool]

=item [KmsKeyEnableGeospatialQueries => Bool]

=item [KmsKeyId => Str]

=item [PositionFiltering => Str]

=item [PricingPlan => Str]

=item [PricingPlanDataSource => Str]

=item [Tags => L<Paws::LocationService::TagMap>]


=back

Each argument is described in detail in: L<Paws::LocationService::CreateTracker>

Returns: a L<Paws::LocationService::CreateTrackerResponse> instance

Creates a tracker resource in your Amazon Web Services account, which
lets you retrieve current and historical location of devices.


=head2 DeleteGeofenceCollection

=over

=item CollectionName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DeleteGeofenceCollection>

Returns: a L<Paws::LocationService::DeleteGeofenceCollectionResponse> instance

Deletes a geofence collection from your Amazon Web Services account.

This operation deletes the resource permanently. If the geofence
collection is the target of a tracker resource, the devices will no
longer be monitored.


=head2 DeleteKey

=over

=item KeyName => Str

=item [ForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::LocationService::DeleteKey>

Returns: a L<Paws::LocationService::DeleteKeyResponse> instance

Deletes the specified API key. The API key must have been deactivated
more than 90 days previously.


=head2 DeleteMap

=over

=item MapName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DeleteMap>

Returns: a L<Paws::LocationService::DeleteMapResponse> instance

Deletes a map resource from your Amazon Web Services account.

This operation deletes the resource permanently. If the map is being
used in an application, the map may not render.


=head2 DeletePlaceIndex

=over

=item IndexName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DeletePlaceIndex>

Returns: a L<Paws::LocationService::DeletePlaceIndexResponse> instance

Deletes a place index resource from your Amazon Web Services account.

This operation deletes the resource permanently.


=head2 DeleteRouteCalculator

=over

=item CalculatorName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DeleteRouteCalculator>

Returns: a L<Paws::LocationService::DeleteRouteCalculatorResponse> instance

Deletes a route calculator resource from your Amazon Web Services
account.

This operation deletes the resource permanently.


=head2 DeleteTracker

=over

=item TrackerName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DeleteTracker>

Returns: a L<Paws::LocationService::DeleteTrackerResponse> instance

Deletes a tracker resource from your Amazon Web Services account.

This operation deletes the resource permanently. If the tracker
resource is in use, you may encounter an error. Make sure that the
target resource isn't a dependency for your applications.


=head2 DescribeGeofenceCollection

=over

=item CollectionName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DescribeGeofenceCollection>

Returns: a L<Paws::LocationService::DescribeGeofenceCollectionResponse> instance

Retrieves the geofence collection details.


=head2 DescribeKey

=over

=item KeyName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DescribeKey>

Returns: a L<Paws::LocationService::DescribeKeyResponse> instance

Retrieves the API key resource details.


=head2 DescribeMap

=over

=item MapName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DescribeMap>

Returns: a L<Paws::LocationService::DescribeMapResponse> instance

Retrieves the map resource details.


=head2 DescribePlaceIndex

=over

=item IndexName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DescribePlaceIndex>

Returns: a L<Paws::LocationService::DescribePlaceIndexResponse> instance

Retrieves the place index resource details.


=head2 DescribeRouteCalculator

=over

=item CalculatorName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DescribeRouteCalculator>

Returns: a L<Paws::LocationService::DescribeRouteCalculatorResponse> instance

Retrieves the route calculator resource details.


=head2 DescribeTracker

=over

=item TrackerName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DescribeTracker>

Returns: a L<Paws::LocationService::DescribeTrackerResponse> instance

Retrieves the tracker resource details.


=head2 DisassociateTrackerConsumer

=over

=item ConsumerArn => Str

=item TrackerName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::DisassociateTrackerConsumer>

Returns: a L<Paws::LocationService::DisassociateTrackerConsumerResponse> instance

Removes the association between a tracker resource and a geofence
collection.

Once you unlink a tracker resource from a geofence collection, the
tracker positions will no longer be automatically evaluated against
geofences.


=head2 ForecastGeofenceEvents

=over

=item CollectionName => Str

=item DeviceState => L<Paws::LocationService::ForecastGeofenceEventsDeviceState>

=item [DistanceUnit => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SpeedUnit => Str]

=item [TimeHorizonMinutes => Num]


=back

Each argument is described in detail in: L<Paws::LocationService::ForecastGeofenceEvents>

Returns: a L<Paws::LocationService::ForecastGeofenceEventsResponse> instance

Evaluates device positions against geofence geometries from a given
geofence collection. The event forecasts three states for which a
device can be in relative to a geofence:

C<ENTER>: If a device is outside of a geofence, but would breach the
fence if the device is moving at its current speed within time horizon
window.

C<EXIT>: If a device is inside of a geofence, but would breach the
fence if the device is moving at its current speed within time horizon
window.

C<IDLE>: If a device is inside of a geofence, and the device is not
moving.


=head2 GetDevicePosition

=over

=item DeviceId => Str

=item TrackerName => Str


=back

Each argument is described in detail in: L<Paws::LocationService::GetDevicePosition>

Returns: a L<Paws::LocationService::GetDevicePositionResponse> instance

Retrieves a device's most recent position according to its sample time.

Device positions are deleted after 30 days.


=head2 GetDevicePositionHistory

=over

=item DeviceId => Str

=item TrackerName => Str

=item [EndTimeExclusive => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTimeInclusive => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::GetDevicePositionHistory>

Returns: a L<Paws::LocationService::GetDevicePositionHistoryResponse> instance

Retrieves the device position history from a tracker resource within a
specified range of time.

Device positions are deleted after 30 days.


=head2 GetGeofence

=over

=item CollectionName => Str

=item GeofenceId => Str


=back

Each argument is described in detail in: L<Paws::LocationService::GetGeofence>

Returns: a L<Paws::LocationService::GetGeofenceResponse> instance

Retrieves the geofence details from a geofence collection.

The returned geometry will always match the geometry format used when
the geofence was created.


=head2 GetMapGlyphs

=over

=item FontStack => Str

=item FontUnicodeRange => Str

=item MapName => Str

=item [Key => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::GetMapGlyphs>

Returns: a L<Paws::LocationService::GetMapGlyphsResponse> instance

Retrieves glyphs used to display labels on a map.


=head2 GetMapSprites

=over

=item FileName => Str

=item MapName => Str

=item [Key => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::GetMapSprites>

Returns: a L<Paws::LocationService::GetMapSpritesResponse> instance

Retrieves the sprite sheet corresponding to a map resource. The sprite
sheet is a PNG image paired with a JSON document describing the offsets
of individual icons that will be displayed on a rendered map.


=head2 GetMapStyleDescriptor

=over

=item MapName => Str

=item [Key => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::GetMapStyleDescriptor>

Returns: a L<Paws::LocationService::GetMapStyleDescriptorResponse> instance

Retrieves the map style descriptor from a map resource.

The style descriptor contains specications on how features render on a
map. For example, what data to display, what order to display the data
in, and the style for the data. Style descriptors follow the Mapbox
Style Specification.


=head2 GetMapTile

=over

=item MapName => Str

=item X => Str

=item Y => Str

=item Z => Str

=item [Key => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::GetMapTile>

Returns: a L<Paws::LocationService::GetMapTileResponse> instance

Retrieves a vector data tile from the map resource. Map tiles are used
by clients to render a map. they're addressed using a grid arrangement
with an X coordinate, Y coordinate, and Z (zoom) level.

The origin (0, 0) is the top left of the map. Increasing the zoom level
by 1 doubles both the X and Y dimensions, so a tile containing data for
the entire world at (0/0/0) will be split into 4 tiles at zoom 1
(1/0/0, 1/0/1, 1/1/0, 1/1/1).


=head2 GetPlace

=over

=item IndexName => Str

=item PlaceId => Str

=item [Key => Str]

=item [Language => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::GetPlace>

Returns: a L<Paws::LocationService::GetPlaceResponse> instance

Finds a place by its unique ID. A C<PlaceId> is returned by other
search operations.

A PlaceId is valid only if all of the following are the same in the
original search request and the call to C<GetPlace>.

=over

=item *

Customer Amazon Web Services account

=item *

Amazon Web Services Region

=item *

Data provider specified in the place index resource

=back



=head2 ListDevicePositions

=over

=item TrackerName => Str

=item [FilterGeometry => L<Paws::LocationService::TrackingFilterGeometry>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::ListDevicePositions>

Returns: a L<Paws::LocationService::ListDevicePositionsResponse> instance

A batch request to retrieve all device positions.


=head2 ListGeofenceCollections

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::ListGeofenceCollections>

Returns: a L<Paws::LocationService::ListGeofenceCollectionsResponse> instance

Lists geofence collections in your Amazon Web Services account.


=head2 ListGeofences

=over

=item CollectionName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::ListGeofences>

Returns: a L<Paws::LocationService::ListGeofencesResponse> instance

Lists geofences stored in a given geofence collection.


=head2 ListKeys

=over

=item [Filter => L<Paws::LocationService::ApiKeyFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::ListKeys>

Returns: a L<Paws::LocationService::ListKeysResponse> instance

Lists API key resources in your Amazon Web Services account.


=head2 ListMaps

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::ListMaps>

Returns: a L<Paws::LocationService::ListMapsResponse> instance

Lists map resources in your Amazon Web Services account.


=head2 ListPlaceIndexes

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::ListPlaceIndexes>

Returns: a L<Paws::LocationService::ListPlaceIndexesResponse> instance

Lists place index resources in your Amazon Web Services account.


=head2 ListRouteCalculators

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::ListRouteCalculators>

Returns: a L<Paws::LocationService::ListRouteCalculatorsResponse> instance

Lists route calculator resources in your Amazon Web Services account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LocationService::ListTagsForResource>

Returns: a L<Paws::LocationService::ListTagsForResourceResponse> instance

Returns a list of tags that are applied to the specified Amazon
Location resource.


=head2 ListTrackerConsumers

=over

=item TrackerName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::ListTrackerConsumers>

Returns: a L<Paws::LocationService::ListTrackerConsumersResponse> instance

Lists geofence collections currently associated to the given tracker
resource.


=head2 ListTrackers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::ListTrackers>

Returns: a L<Paws::LocationService::ListTrackersResponse> instance

Lists tracker resources in your Amazon Web Services account.


=head2 PutGeofence

=over

=item CollectionName => Str

=item GeofenceId => Str

=item Geometry => L<Paws::LocationService::GeofenceGeometry>

=item [GeofenceProperties => L<Paws::LocationService::PropertyMap>]


=back

Each argument is described in detail in: L<Paws::LocationService::PutGeofence>

Returns: a L<Paws::LocationService::PutGeofenceResponse> instance

Stores a geofence geometry in a given geofence collection, or updates
the geometry of an existing geofence if a geofence ID is included in
the request.


=head2 SearchPlaceIndexForPosition

=over

=item IndexName => Str

=item Position => ArrayRef[Num]

=item [Key => Str]

=item [Language => Str]

=item [MaxResults => Int]


=back

Each argument is described in detail in: L<Paws::LocationService::SearchPlaceIndexForPosition>

Returns: a L<Paws::LocationService::SearchPlaceIndexForPositionResponse> instance

Reverse geocodes a given coordinate and returns a legible address.
Allows you to search for Places or points of interest near a given
position.


=head2 SearchPlaceIndexForSuggestions

=over

=item IndexName => Str

=item Text => Str

=item [BiasPosition => ArrayRef[Num]]

=item [FilterBBox => ArrayRef[Num]]

=item [FilterCategories => ArrayRef[Str|Undef]]

=item [FilterCountries => ArrayRef[Str|Undef]]

=item [Key => Str]

=item [Language => Str]

=item [MaxResults => Int]


=back

Each argument is described in detail in: L<Paws::LocationService::SearchPlaceIndexForSuggestions>

Returns: a L<Paws::LocationService::SearchPlaceIndexForSuggestionsResponse> instance

Generates suggestions for addresses and points of interest based on
partial or misspelled free-form text. This operation is also known as
autocomplete, autosuggest, or fuzzy matching.

Optional parameters let you narrow your search results by bounding box
or country, or bias your search toward a specific position on the
globe.

You can search for suggested place names near a specified position by
using C<BiasPosition>, or filter results within a bounding box by using
C<FilterBBox>. These parameters are mutually exclusive; using both
C<BiasPosition> and C<FilterBBox> in the same command returns an error.


=head2 SearchPlaceIndexForText

=over

=item IndexName => Str

=item Text => Str

=item [BiasPosition => ArrayRef[Num]]

=item [FilterBBox => ArrayRef[Num]]

=item [FilterCategories => ArrayRef[Str|Undef]]

=item [FilterCountries => ArrayRef[Str|Undef]]

=item [Key => Str]

=item [Language => Str]

=item [MaxResults => Int]


=back

Each argument is described in detail in: L<Paws::LocationService::SearchPlaceIndexForText>

Returns: a L<Paws::LocationService::SearchPlaceIndexForTextResponse> instance

Geocodes free-form text, such as an address, name, city, or region to
allow you to search for Places or points of interest.

Optional parameters let you narrow your search results by bounding box
or country, or bias your search toward a specific position on the
globe.

You can search for places near a given position using C<BiasPosition>,
or filter results within a bounding box using C<FilterBBox>. Providing
both parameters simultaneously returns an error.

Search results are returned in order of highest to lowest relevance.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::LocationService::TagMap>


=back

Each argument is described in detail in: L<Paws::LocationService::TagResource>

Returns: a L<Paws::LocationService::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified Amazon
Location Service resource.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only resources with certain tag values.

You can use the C<TagResource> operation with an Amazon Location
Service resource that already has tags. If you specify a new tag key
for the resource, this tag is appended to the tags already associated
with the resource. If you specify a tag key that's already associated
with the resource, the new tag value that you specify replaces the
previous value for that tag.

You can associate up to 50 tags with a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LocationService::UntagResource>

Returns: a L<Paws::LocationService::UntagResourceResponse> instance

Removes one or more tags from the specified Amazon Location resource.


=head2 UpdateGeofenceCollection

=over

=item CollectionName => Str

=item [Description => Str]

=item [PricingPlan => Str]

=item [PricingPlanDataSource => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::UpdateGeofenceCollection>

Returns: a L<Paws::LocationService::UpdateGeofenceCollectionResponse> instance

Updates the specified properties of a given geofence collection.


=head2 UpdateKey

=over

=item KeyName => Str

=item [Description => Str]

=item [ExpireTime => Str]

=item [ForceUpdate => Bool]

=item [NoExpiry => Bool]

=item [Restrictions => L<Paws::LocationService::ApiKeyRestrictions>]


=back

Each argument is described in detail in: L<Paws::LocationService::UpdateKey>

Returns: a L<Paws::LocationService::UpdateKeyResponse> instance

Updates the specified properties of a given API key resource.


=head2 UpdateMap

=over

=item MapName => Str

=item [ConfigurationUpdate => L<Paws::LocationService::MapConfigurationUpdate>]

=item [Description => Str]

=item [PricingPlan => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::UpdateMap>

Returns: a L<Paws::LocationService::UpdateMapResponse> instance

Updates the specified properties of a given map resource.


=head2 UpdatePlaceIndex

=over

=item IndexName => Str

=item [DataSourceConfiguration => L<Paws::LocationService::DataSourceConfiguration>]

=item [Description => Str]

=item [PricingPlan => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::UpdatePlaceIndex>

Returns: a L<Paws::LocationService::UpdatePlaceIndexResponse> instance

Updates the specified properties of a given place index resource.


=head2 UpdateRouteCalculator

=over

=item CalculatorName => Str

=item [Description => Str]

=item [PricingPlan => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::UpdateRouteCalculator>

Returns: a L<Paws::LocationService::UpdateRouteCalculatorResponse> instance

Updates the specified properties for a given route calculator resource.


=head2 UpdateTracker

=over

=item TrackerName => Str

=item [Description => Str]

=item [EventBridgeEnabled => Bool]

=item [KmsKeyEnableGeospatialQueries => Bool]

=item [PositionFiltering => Str]

=item [PricingPlan => Str]

=item [PricingPlanDataSource => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::UpdateTracker>

Returns: a L<Paws::LocationService::UpdateTrackerResponse> instance

Updates the specified properties of a given tracker resource.


=head2 VerifyDevicePosition

=over

=item DeviceState => L<Paws::LocationService::DeviceState>

=item TrackerName => Str

=item [DistanceUnit => Str]


=back

Each argument is described in detail in: L<Paws::LocationService::VerifyDevicePosition>

Returns: a L<Paws::LocationService::VerifyDevicePositionResponse> instance

Verifies the integrity of the device's position by determining if it
was reported behind a proxy, and by comparing it to an inferred
position estimated based on the device's state.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ForecastAllGeofenceEvents(sub { },CollectionName => Str, DeviceState => L<Paws::LocationService::ForecastGeofenceEventsDeviceState>, [DistanceUnit => Str, MaxResults => Int, NextToken => Str, SpeedUnit => Str, TimeHorizonMinutes => Num])

=head2 ForecastAllGeofenceEvents(CollectionName => Str, DeviceState => L<Paws::LocationService::ForecastGeofenceEventsDeviceState>, [DistanceUnit => Str, MaxResults => Int, NextToken => Str, SpeedUnit => Str, TimeHorizonMinutes => Num])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ForecastedEvents, passing the object as the first parameter, and the string 'ForecastedEvents' as the second parameter 

If not, it will return a a L<Paws::LocationService::ForecastGeofenceEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDevicePositionHistory(sub { },DeviceId => Str, TrackerName => Str, [EndTimeExclusive => Str, MaxResults => Int, NextToken => Str, StartTimeInclusive => Str])

=head2 GetAllDevicePositionHistory(DeviceId => Str, TrackerName => Str, [EndTimeExclusive => Str, MaxResults => Int, NextToken => Str, StartTimeInclusive => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DevicePositions, passing the object as the first parameter, and the string 'DevicePositions' as the second parameter 

If not, it will return a a L<Paws::LocationService::GetDevicePositionHistoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevicePositions(sub { },TrackerName => Str, [FilterGeometry => L<Paws::LocationService::TrackingFilterGeometry>, MaxResults => Int, NextToken => Str])

=head2 ListAllDevicePositions(TrackerName => Str, [FilterGeometry => L<Paws::LocationService::TrackingFilterGeometry>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::LocationService::ListDevicePositionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGeofenceCollections(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllGeofenceCollections([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::LocationService::ListGeofenceCollectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGeofences(sub { },CollectionName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllGeofences(CollectionName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::LocationService::ListGeofencesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeys(sub { },[Filter => L<Paws::LocationService::ApiKeyFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllKeys([Filter => L<Paws::LocationService::ApiKeyFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::LocationService::ListKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMaps(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllMaps([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::LocationService::ListMapsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPlaceIndexes(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPlaceIndexes([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::LocationService::ListPlaceIndexesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRouteCalculators(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRouteCalculators([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::LocationService::ListRouteCalculatorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrackerConsumers(sub { },TrackerName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTrackerConsumers(TrackerName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConsumerArns, passing the object as the first parameter, and the string 'ConsumerArns' as the second parameter 

If not, it will return a a L<Paws::LocationService::ListTrackerConsumersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrackers(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTrackers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::LocationService::ListTrackersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

