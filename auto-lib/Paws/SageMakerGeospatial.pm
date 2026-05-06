package Paws::SageMakerGeospatial;
  use Moose;
  sub service { 'sagemaker-geospatial' }
  sub signing_name { 'sagemaker-geospatial' }
  sub version { '2020-05-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteEarthObservationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::DeleteEarthObservationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVectorEnrichmentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::DeleteVectorEnrichmentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportEarthObservationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::ExportEarthObservationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportVectorEnrichmentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::ExportVectorEnrichmentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEarthObservationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::GetEarthObservationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRasterDataCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::GetRasterDataCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::GetTile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVectorEnrichmentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::GetVectorEnrichmentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEarthObservationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::ListEarthObservationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRasterDataCollections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::ListRasterDataCollections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVectorEnrichmentJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::ListVectorEnrichmentJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchRasterDataCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::SearchRasterDataCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEarthObservationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::StartEarthObservationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartVectorEnrichmentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::StartVectorEnrichmentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEarthObservationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::StopEarthObservationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopVectorEnrichmentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::StopVectorEnrichmentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerGeospatial::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEarthObservationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEarthObservationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEarthObservationJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->EarthObservationJobSummaries }, @{ $next_result->EarthObservationJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EarthObservationJobSummaries') foreach (@{ $result->EarthObservationJobSummaries });
        $result = $self->ListEarthObservationJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EarthObservationJobSummaries') foreach (@{ $result->EarthObservationJobSummaries });
    }

    return undef
  }
  sub ListAllRasterDataCollections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRasterDataCollections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRasterDataCollections(@_, NextToken => $next_result->NextToken);
        push @{ $result->RasterDataCollectionSummaries }, @{ $next_result->RasterDataCollectionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RasterDataCollectionSummaries') foreach (@{ $result->RasterDataCollectionSummaries });
        $result = $self->ListRasterDataCollections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RasterDataCollectionSummaries') foreach (@{ $result->RasterDataCollectionSummaries });
    }

    return undef
  }
  sub ListAllVectorEnrichmentJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVectorEnrichmentJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListVectorEnrichmentJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->VectorEnrichmentJobSummaries }, @{ $next_result->VectorEnrichmentJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VectorEnrichmentJobSummaries') foreach (@{ $result->VectorEnrichmentJobSummaries });
        $result = $self->ListVectorEnrichmentJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VectorEnrichmentJobSummaries') foreach (@{ $result->VectorEnrichmentJobSummaries });
    }

    return undef
  }


  sub operations { qw/DeleteEarthObservationJob DeleteVectorEnrichmentJob ExportEarthObservationJob ExportVectorEnrichmentJob GetEarthObservationJob GetRasterDataCollection GetTile GetVectorEnrichmentJob ListEarthObservationJobs ListRasterDataCollections ListTagsForResource ListVectorEnrichmentJobs SearchRasterDataCollection StartEarthObservationJob StartVectorEnrichmentJob StopEarthObservationJob StopVectorEnrichmentJob TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial - Perl Interface to AWS Amazon SageMaker geospatial capabilities

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMakerGeospatial');
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

Provides APIs for creating and managing SageMaker geospatial resources.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 DeleteEarthObservationJob

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::DeleteEarthObservationJob>

Returns: a L<Paws::SageMakerGeospatial::DeleteEarthObservationJobOutput> instance

Use this operation to delete an Earth Observation job.


=head2 DeleteVectorEnrichmentJob

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::DeleteVectorEnrichmentJob>

Returns: a L<Paws::SageMakerGeospatial::DeleteVectorEnrichmentJobOutput> instance

Use this operation to delete a Vector Enrichment job.


=head2 ExportEarthObservationJob

=over

=item Arn => Str

=item ExecutionRoleArn => Str

=item OutputConfig => L<Paws::SageMakerGeospatial::OutputConfigInput>

=item [ClientToken => Str]

=item [ExportSourceImages => Bool]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::ExportEarthObservationJob>

Returns: a L<Paws::SageMakerGeospatial::ExportEarthObservationJobOutput> instance

Use this operation to export results of an Earth Observation job and
optionally source images used as input to the EOJ to an Amazon S3
location.


=head2 ExportVectorEnrichmentJob

=over

=item Arn => Str

=item ExecutionRoleArn => Str

=item OutputConfig => L<Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutputConfig>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::ExportVectorEnrichmentJob>

Returns: a L<Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutput> instance

Use this operation to copy results of a Vector Enrichment job to an
Amazon S3 location.


=head2 GetEarthObservationJob

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::GetEarthObservationJob>

Returns: a L<Paws::SageMakerGeospatial::GetEarthObservationJobOutput> instance

Get the details for a previously initiated Earth Observation job.


=head2 GetRasterDataCollection

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::GetRasterDataCollection>

Returns: a L<Paws::SageMakerGeospatial::GetRasterDataCollectionOutput> instance

Use this operation to get details of a specific raster data collection.


=head2 GetTile

=over

=item Arn => Str

=item ImageAssets => ArrayRef[Str|Undef]

=item Target => Str

=item X => Int

=item Y => Int

=item Z => Int

=item [ExecutionRoleArn => Str]

=item [ImageMask => Bool]

=item [OutputDataType => Str]

=item [OutputFormat => Str]

=item [PropertyFilters => Str]

=item [TimeRangeFilter => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::GetTile>

Returns: a L<Paws::SageMakerGeospatial::GetTileOutput> instance

Gets a web mercator tile for the given Earth Observation job.


=head2 GetVectorEnrichmentJob

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::GetVectorEnrichmentJob>

Returns: a L<Paws::SageMakerGeospatial::GetVectorEnrichmentJobOutput> instance

Retrieves details of a Vector Enrichment Job for a given job Amazon
Resource Name (ARN).


=head2 ListEarthObservationJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::ListEarthObservationJobs>

Returns: a L<Paws::SageMakerGeospatial::ListEarthObservationJobOutput> instance

Use this operation to get a list of the Earth Observation jobs
associated with the calling Amazon Web Services account.


=head2 ListRasterDataCollections

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::ListRasterDataCollections>

Returns: a L<Paws::SageMakerGeospatial::ListRasterDataCollectionsOutput> instance

Use this operation to get raster data collections.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::ListTagsForResource>

Returns: a L<Paws::SageMakerGeospatial::ListTagsForResourceResponse> instance

Lists the tags attached to the resource.


=head2 ListVectorEnrichmentJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::ListVectorEnrichmentJobs>

Returns: a L<Paws::SageMakerGeospatial::ListVectorEnrichmentJobOutput> instance

Retrieves a list of vector enrichment jobs.


=head2 SearchRasterDataCollection

=over

=item Arn => Str

=item RasterDataCollectionQuery => L<Paws::SageMakerGeospatial::RasterDataCollectionQueryWithBandFilterInput>

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::SearchRasterDataCollection>

Returns: a L<Paws::SageMakerGeospatial::SearchRasterDataCollectionOutput> instance

Allows you run image query on a specific raster data collection to get
a list of the satellite imagery matching the selected filters.


=head2 StartEarthObservationJob

=over

=item ExecutionRoleArn => Str

=item InputConfig => L<Paws::SageMakerGeospatial::InputConfigInput>

=item JobConfig => L<Paws::SageMakerGeospatial::JobConfigInput>

=item Name => Str

=item [ClientToken => Str]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::SageMakerGeospatial::Tags>]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::StartEarthObservationJob>

Returns: a L<Paws::SageMakerGeospatial::StartEarthObservationJobOutput> instance

Use this operation to create an Earth observation job.


=head2 StartVectorEnrichmentJob

=over

=item ExecutionRoleArn => Str

=item InputConfig => L<Paws::SageMakerGeospatial::VectorEnrichmentJobInputConfig>

=item JobConfig => L<Paws::SageMakerGeospatial::VectorEnrichmentJobConfig>

=item Name => Str

=item [ClientToken => Str]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::SageMakerGeospatial::Tags>]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::StartVectorEnrichmentJob>

Returns: a L<Paws::SageMakerGeospatial::StartVectorEnrichmentJobOutput> instance

Creates a Vector Enrichment job for the supplied job type. Currently,
there are two supported job types: reverse geocoding and map matching.


=head2 StopEarthObservationJob

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::StopEarthObservationJob>

Returns: a L<Paws::SageMakerGeospatial::StopEarthObservationJobOutput> instance

Use this operation to stop an existing earth observation job.


=head2 StopVectorEnrichmentJob

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::StopVectorEnrichmentJob>

Returns: a L<Paws::SageMakerGeospatial::StopVectorEnrichmentJobOutput> instance

Stops the Vector Enrichment job for a given job ARN.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SageMakerGeospatial::Tags>


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::TagResource>

Returns: a L<Paws::SageMakerGeospatial::TagResourceResponse> instance

The resource you want to tag.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SageMakerGeospatial::UntagResource>

Returns: a L<Paws::SageMakerGeospatial::UntagResourceResponse> instance

The resource you want to untag.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEarthObservationJobs(sub { },[MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllEarthObservationJobs([MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EarthObservationJobSummaries, passing the object as the first parameter, and the string 'EarthObservationJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMakerGeospatial::ListEarthObservationJobOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRasterDataCollections(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRasterDataCollections([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RasterDataCollectionSummaries, passing the object as the first parameter, and the string 'RasterDataCollectionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMakerGeospatial::ListRasterDataCollectionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVectorEnrichmentJobs(sub { },[MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllVectorEnrichmentJobs([MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VectorEnrichmentJobSummaries, passing the object as the first parameter, and the string 'VectorEnrichmentJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMakerGeospatial::ListVectorEnrichmentJobOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

