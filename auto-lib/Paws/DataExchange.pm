package Paws::DataExchange;
  use Moose;
  sub service { 'dataexchange' }
  sub signing_name { 'dataexchange' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptDataGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::AcceptDataGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::CancelJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::CreateDataGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::CreateDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::CreateEventAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::CreateRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::DeleteAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::DeleteDataGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::DeleteDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::DeleteEventAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::DeleteRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::GetAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::GetDataGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::GetDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::GetEventAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::GetJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReceivedDataGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::GetReceivedDataGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::GetRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::ListDataGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSetRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::ListDataSetRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::ListDataSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::ListEventActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReceivedDataGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::ListReceivedDataGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRevisionAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::ListRevisionAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::RevokeRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendApiAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::SendApiAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendDataSetNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::SendDataSetNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::StartJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::UpdateAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::UpdateDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::UpdateEventAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataExchange::UpdateRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDataGrants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataGrants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataGrants(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataGrantSummaries }, @{ $next_result->DataGrantSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataGrantSummaries') foreach (@{ $result->DataGrantSummaries });
        $result = $self->ListDataGrants(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataGrantSummaries') foreach (@{ $result->DataGrantSummaries });
    }

    return undef
  }
  sub ListAllDataSetRevisions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSetRevisions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataSetRevisions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Revisions }, @{ $next_result->Revisions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Revisions') foreach (@{ $result->Revisions });
        $result = $self->ListDataSetRevisions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Revisions') foreach (@{ $result->Revisions });
    }

    return undef
  }
  sub ListAllDataSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataSets }, @{ $next_result->DataSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataSets') foreach (@{ $result->DataSets });
        $result = $self->ListDataSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataSets') foreach (@{ $result->DataSets });
    }

    return undef
  }
  sub ListAllEventActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEventActions(@_, NextToken => $next_result->NextToken);
        push @{ $result->EventActions }, @{ $next_result->EventActions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EventActions') foreach (@{ $result->EventActions });
        $result = $self->ListEventActions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EventActions') foreach (@{ $result->EventActions });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Jobs }, @{ $next_result->Jobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
        $result = $self->ListJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
    }

    return undef
  }
  sub ListAllReceivedDataGrants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReceivedDataGrants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListReceivedDataGrants(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataGrantSummaries }, @{ $next_result->DataGrantSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataGrantSummaries') foreach (@{ $result->DataGrantSummaries });
        $result = $self->ListReceivedDataGrants(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataGrantSummaries') foreach (@{ $result->DataGrantSummaries });
    }

    return undef
  }
  sub ListAllRevisionAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRevisionAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRevisionAssets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Assets }, @{ $next_result->Assets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Assets') foreach (@{ $result->Assets });
        $result = $self->ListRevisionAssets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Assets') foreach (@{ $result->Assets });
    }

    return undef
  }


  sub operations { qw/AcceptDataGrant CancelJob CreateDataGrant CreateDataSet CreateEventAction CreateJob CreateRevision DeleteAsset DeleteDataGrant DeleteDataSet DeleteEventAction DeleteRevision GetAsset GetDataGrant GetDataSet GetEventAction GetJob GetReceivedDataGrant GetRevision ListDataGrants ListDataSetRevisions ListDataSets ListEventActions ListJobs ListReceivedDataGrants ListRevisionAssets ListTagsForResource RevokeRevision SendApiAsset SendDataSetNotification StartJob TagResource UntagResource UpdateAsset UpdateDataSet UpdateEventAction UpdateRevision / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange - Perl Interface to AWS AWS Data Exchange

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DataExchange');
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

AWS Data Exchange is a service that makes it easy for AWS customers to
exchange data in the cloud. You can use the AWS Data Exchange APIs to
create, update, manage, and access file-based data set in the AWS
Cloud.

As a subscriber, you can view and access the data sets that you have an
entitlement to through a subscription. You can use the APIs to download
or copy your entitled data sets to Amazon Simple Storage Service
(Amazon S3) for use across a variety of AWS analytics and machine
learning services.

As a provider, you can create and manage your data sets that you would
like to publish to a product. Being able to package and provide your
data sets into products requires a few steps to determine eligibility.
For more information, visit the I<AWS Data Exchange User Guide>.

A data set is a collection of data that can be changed or updated over
time. Data sets can be updated using revisions, which represent a new
version or incremental change to a data set. A revision contains one or
more assets. An asset in AWS Data Exchange is a piece of data that can
be stored as an Amazon S3 object, Redshift datashare, API Gateway API,
AWS Lake Formation data permission, or Amazon S3 data access. The asset
can be a structured data file, an image file, or some other data file.
Jobs are asynchronous import or export operations used to create or
copy assets.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25>


=head1 METHODS

=head2 AcceptDataGrant

=over

=item DataGrantArn => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::AcceptDataGrant>

Returns: a L<Paws::DataExchange::AcceptDataGrantResponse> instance

This operation accepts a data grant.


=head2 CancelJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::CancelJob>

Returns: nothing

This operation cancels a job. Jobs can be cancelled only when they are
in the WAITING state.


=head2 CreateDataGrant

=over

=item GrantDistributionScope => Str

=item Name => Str

=item ReceiverPrincipal => Str

=item SourceDataSetId => Str

=item [Description => Str]

=item [EndsAt => Str]

=item [Tags => L<Paws::DataExchange::MapOf__string>]


=back

Each argument is described in detail in: L<Paws::DataExchange::CreateDataGrant>

Returns: a L<Paws::DataExchange::CreateDataGrantResponse> instance

This operation creates a data grant.


=head2 CreateDataSet

=over

=item AssetType => Str

=item Description => Str

=item Name => Str

=item [Tags => L<Paws::DataExchange::MapOf__string>]


=back

Each argument is described in detail in: L<Paws::DataExchange::CreateDataSet>

Returns: a L<Paws::DataExchange::CreateDataSetResponse> instance

This operation creates a data set.


=head2 CreateEventAction

=over

=item Action => L<Paws::DataExchange::Action>

=item Event => L<Paws::DataExchange::Event>


=back

Each argument is described in detail in: L<Paws::DataExchange::CreateEventAction>

Returns: a L<Paws::DataExchange::CreateEventActionResponse> instance

This operation creates an event action.


=head2 CreateJob

=over

=item Details => L<Paws::DataExchange::RequestDetails>

=item Type => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::CreateJob>

Returns: a L<Paws::DataExchange::CreateJobResponse> instance

This operation creates a job.


=head2 CreateRevision

=over

=item DataSetId => Str

=item [Comment => Str]

=item [Tags => L<Paws::DataExchange::MapOf__string>]


=back

Each argument is described in detail in: L<Paws::DataExchange::CreateRevision>

Returns: a L<Paws::DataExchange::CreateRevisionResponse> instance

This operation creates a revision for a data set.


=head2 DeleteAsset

=over

=item AssetId => Str

=item DataSetId => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::DeleteAsset>

Returns: nothing

This operation deletes an asset.


=head2 DeleteDataGrant

=over

=item DataGrantId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::DeleteDataGrant>

Returns: nothing

This operation deletes a data grant.


=head2 DeleteDataSet

=over

=item DataSetId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::DeleteDataSet>

Returns: nothing

This operation deletes a data set.


=head2 DeleteEventAction

=over

=item EventActionId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::DeleteEventAction>

Returns: nothing

This operation deletes the event action.


=head2 DeleteRevision

=over

=item DataSetId => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::DeleteRevision>

Returns: nothing

This operation deletes a revision.


=head2 GetAsset

=over

=item AssetId => Str

=item DataSetId => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::GetAsset>

Returns: a L<Paws::DataExchange::GetAssetResponse> instance

This operation returns information about an asset.


=head2 GetDataGrant

=over

=item DataGrantId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::GetDataGrant>

Returns: a L<Paws::DataExchange::GetDataGrantResponse> instance

This operation returns information about a data grant.


=head2 GetDataSet

=over

=item DataSetId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::GetDataSet>

Returns: a L<Paws::DataExchange::GetDataSetResponse> instance

This operation returns information about a data set.


=head2 GetEventAction

=over

=item EventActionId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::GetEventAction>

Returns: a L<Paws::DataExchange::GetEventActionResponse> instance

This operation retrieves information about an event action.


=head2 GetJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::GetJob>

Returns: a L<Paws::DataExchange::GetJobResponse> instance

This operation returns information about a job.


=head2 GetReceivedDataGrant

=over

=item DataGrantArn => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::GetReceivedDataGrant>

Returns: a L<Paws::DataExchange::GetReceivedDataGrantResponse> instance

This operation returns information about a received data grant.


=head2 GetRevision

=over

=item DataSetId => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::GetRevision>

Returns: a L<Paws::DataExchange::GetRevisionResponse> instance

This operation returns information about a revision.


=head2 ListDataGrants

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataExchange::ListDataGrants>

Returns: a L<Paws::DataExchange::ListDataGrantsResponse> instance

This operation returns information about all data grants.


=head2 ListDataSetRevisions

=over

=item DataSetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataExchange::ListDataSetRevisions>

Returns: a L<Paws::DataExchange::ListDataSetRevisionsResponse> instance

This operation lists a data set's revisions sorted by CreatedAt in
descending order.


=head2 ListDataSets

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Origin => Str]


=back

Each argument is described in detail in: L<Paws::DataExchange::ListDataSets>

Returns: a L<Paws::DataExchange::ListDataSetsResponse> instance

This operation lists your data sets. When listing by origin OWNED,
results are sorted by CreatedAt in descending order. When listing by
origin ENTITLED, there is no order.


=head2 ListEventActions

=over

=item [EventSourceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataExchange::ListEventActions>

Returns: a L<Paws::DataExchange::ListEventActionsResponse> instance

This operation lists your event actions.


=head2 ListJobs

=over

=item [DataSetId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::DataExchange::ListJobs>

Returns: a L<Paws::DataExchange::ListJobsResponse> instance

This operation lists your jobs sorted by CreatedAt in descending order.


=head2 ListReceivedDataGrants

=over

=item [AcceptanceState => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataExchange::ListReceivedDataGrants>

Returns: a L<Paws::DataExchange::ListReceivedDataGrantsResponse> instance

This operation returns information about all received data grants.


=head2 ListRevisionAssets

=over

=item DataSetId => Str

=item RevisionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DataExchange::ListRevisionAssets>

Returns: a L<Paws::DataExchange::ListRevisionAssetsResponse> instance

This operation lists a revision's assets sorted alphabetically in
descending order.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::ListTagsForResource>

Returns: a L<Paws::DataExchange::ListTagsForResourceResponse> instance

This operation lists the tags on the resource.


=head2 RevokeRevision

=over

=item DataSetId => Str

=item RevisionId => Str

=item RevocationComment => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::RevokeRevision>

Returns: a L<Paws::DataExchange::RevokeRevisionResponse> instance

This operation revokes subscribers' access to a revision.


=head2 SendApiAsset

=over

=item AssetId => Str

=item DataSetId => Str

=item RevisionId => Str

=item [Body => Str]

=item [Method => Str]

=item [Path => Str]

=item [QueryStringParameters => L<Paws::DataExchange::MapOf__string>]

=item [RequestHeaders => L<Paws::DataExchange::MapOf__string>]


=back

Each argument is described in detail in: L<Paws::DataExchange::SendApiAsset>

Returns: a L<Paws::DataExchange::SendApiAssetResponse> instance

This operation invokes an API Gateway API asset. The request is proxied
to the providerE<rsquo>s API Gateway API.


=head2 SendDataSetNotification

=over

=item DataSetId => Str

=item Type => Str

=item [ClientToken => Str]

=item [Comment => Str]

=item [Details => L<Paws::DataExchange::NotificationDetails>]

=item [Scope => L<Paws::DataExchange::ScopeDetails>]


=back

Each argument is described in detail in: L<Paws::DataExchange::SendDataSetNotification>

Returns: a L<Paws::DataExchange::SendDataSetNotificationResponse> instance

The type of event associated with the data set.


=head2 StartJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::StartJob>

Returns: a L<Paws::DataExchange::StartJobResponse> instance

This operation starts a job.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::DataExchange::MapOf__string>


=back

Each argument is described in detail in: L<Paws::DataExchange::TagResource>

Returns: nothing

This operation tags a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DataExchange::UntagResource>

Returns: nothing

This operation removes one or more tags from a resource.


=head2 UpdateAsset

=over

=item AssetId => Str

=item DataSetId => Str

=item Name => Str

=item RevisionId => Str


=back

Each argument is described in detail in: L<Paws::DataExchange::UpdateAsset>

Returns: a L<Paws::DataExchange::UpdateAssetResponse> instance

This operation updates an asset.


=head2 UpdateDataSet

=over

=item DataSetId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::DataExchange::UpdateDataSet>

Returns: a L<Paws::DataExchange::UpdateDataSetResponse> instance

This operation updates a data set.


=head2 UpdateEventAction

=over

=item EventActionId => Str

=item [Action => L<Paws::DataExchange::Action>]


=back

Each argument is described in detail in: L<Paws::DataExchange::UpdateEventAction>

Returns: a L<Paws::DataExchange::UpdateEventActionResponse> instance

This operation updates the event action.


=head2 UpdateRevision

=over

=item DataSetId => Str

=item RevisionId => Str

=item [Comment => Str]

=item [Finalized => Bool]


=back

Each argument is described in detail in: L<Paws::DataExchange::UpdateRevision>

Returns: a L<Paws::DataExchange::UpdateRevisionResponse> instance

This operation updates a revision.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDataGrants(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDataGrants([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataGrantSummaries, passing the object as the first parameter, and the string 'DataGrantSummaries' as the second parameter 

If not, it will return a a L<Paws::DataExchange::ListDataGrantsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSetRevisions(sub { },DataSetId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataSetRevisions(DataSetId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Revisions, passing the object as the first parameter, and the string 'Revisions' as the second parameter 

If not, it will return a a L<Paws::DataExchange::ListDataSetRevisionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSets(sub { },[MaxResults => Int, NextToken => Str, Origin => Str])

=head2 ListAllDataSets([MaxResults => Int, NextToken => Str, Origin => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataSets, passing the object as the first parameter, and the string 'DataSets' as the second parameter 

If not, it will return a a L<Paws::DataExchange::ListDataSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventActions(sub { },[EventSourceId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllEventActions([EventSourceId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventActions, passing the object as the first parameter, and the string 'EventActions' as the second parameter 

If not, it will return a a L<Paws::DataExchange::ListEventActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },[DataSetId => Str, MaxResults => Int, NextToken => Str, RevisionId => Str])

=head2 ListAllJobs([DataSetId => Str, MaxResults => Int, NextToken => Str, RevisionId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Jobs, passing the object as the first parameter, and the string 'Jobs' as the second parameter 

If not, it will return a a L<Paws::DataExchange::ListJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReceivedDataGrants(sub { },[AcceptanceState => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllReceivedDataGrants([AcceptanceState => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataGrantSummaries, passing the object as the first parameter, and the string 'DataGrantSummaries' as the second parameter 

If not, it will return a a L<Paws::DataExchange::ListReceivedDataGrantsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRevisionAssets(sub { },DataSetId => Str, RevisionId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRevisionAssets(DataSetId => Str, RevisionId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Assets, passing the object as the first parameter, and the string 'Assets' as the second parameter 

If not, it will return a a L<Paws::DataExchange::ListRevisionAssetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

