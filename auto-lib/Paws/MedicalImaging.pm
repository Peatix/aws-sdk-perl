package Paws::MedicalImaging;
  use Moose;
  sub service { 'medical-imaging' }
  sub signing_name { 'medical-imaging' }
  sub version { '2023-07-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CopyImageSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::CopyImageSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::CreateDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::DeleteDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImageSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::DeleteImageSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::GetDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDICOMImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::GetDICOMImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImageFrame {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::GetImageFrame', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImageSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::GetImageSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImageSetMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::GetImageSetMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatastores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::ListDatastores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDICOMImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::ListDICOMImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImageSetVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::ListImageSetVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchImageSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::SearchImageSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDICOMImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::StartDICOMImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateImageSetMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MedicalImaging::UpdateImageSetMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDatastores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatastores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDatastores(@_, nextToken => $next_result->nextToken);
        push @{ $result->datastoreSummaries }, @{ $next_result->datastoreSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datastoreSummaries') foreach (@{ $result->datastoreSummaries });
        $result = $self->ListDatastores(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datastoreSummaries') foreach (@{ $result->datastoreSummaries });
    }

    return undef
  }
  sub ListAllDICOMImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDICOMImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDICOMImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobSummaries }, @{ $next_result->jobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
        $result = $self->ListDICOMImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobSummaries') foreach (@{ $result->jobSummaries });
    }

    return undef
  }
  sub ListAllImageSetVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImageSetVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListImageSetVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->imageSetPropertiesList }, @{ $next_result->imageSetPropertiesList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'imageSetPropertiesList') foreach (@{ $result->imageSetPropertiesList });
        $result = $self->ListImageSetVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'imageSetPropertiesList') foreach (@{ $result->imageSetPropertiesList });
    }

    return undef
  }
  sub SearchAllImageSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchImageSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchImageSets(@_, nextToken => $next_result->nextToken);
        push @{ $result->imageSetsMetadataSummaries }, @{ $next_result->imageSetsMetadataSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'imageSetsMetadataSummaries') foreach (@{ $result->imageSetsMetadataSummaries });
        $result = $self->SearchImageSets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'imageSetsMetadataSummaries') foreach (@{ $result->imageSetsMetadataSummaries });
    }

    return undef
  }


  sub operations { qw/CopyImageSet CreateDatastore DeleteDatastore DeleteImageSet GetDatastore GetDICOMImportJob GetImageFrame GetImageSet GetImageSetMetadata ListDatastores ListDICOMImportJobs ListImageSetVersions ListTagsForResource SearchImageSets StartDICOMImportJob TagResource UntagResource UpdateImageSetMetadata / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging - Perl Interface to AWS AWS Health Imaging

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MedicalImaging');
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

This is the I<AWS HealthImaging API Reference>. AWS HealthImaging is a
HIPAA eligible service that empowers healthcare providers, life science
organizations, and their software partners to store, analyze, and share
medical images in the cloud at petabyte scale. For an introduction to
the service, see the I<AWS HealthImaging Developer Guide>
(https://docs.aws.amazon.com/healthimaging/latest/devguide/what-is.html).

We recommend using one of the AWS Software Development Kits (SDKs) for
your programming language, as they take care of request authentication,
serialization, and connection management. For more information, see
Tools to build on AWS (http://aws.amazon.com/developer/tools).

The following sections list AWS HealthImaging API actions categorized
according to functionality. Links are provided to actions within this
Reference, along with links back to corresponding sections in the I<AWS
HealthImaging Developer Guide> where you can view tested code examples.

B<Data store actions>

=over

=item *

CreateDatastore
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_CreateDatastore.html)
E<ndash> See Creating a data store
(https://docs.aws.amazon.com/healthimaging/latest/devguide/create-data-store.html).

=item *

GetDatastore
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetDatastore.html)
E<ndash> See Getting data store properties
(https://docs.aws.amazon.com/healthimaging/latest/devguide/get-data-store.html).

=item *

ListDatastores
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListDatastores.html)
E<ndash> See Listing data stores
(https://docs.aws.amazon.com/healthimaging/latest/devguide/list-data-stores.html).

=item *

DeleteDatastore
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_DeleteDatastore.html)
E<ndash> See Deleting a data store
(https://docs.aws.amazon.com/healthimaging/latest/devguide/delete-data-store.html).

=back

B<Import job actions>

=over

=item *

StartDICOMImportJob
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_StartDICOMImportJob.html)
E<ndash> See Starting an import job
(https://docs.aws.amazon.com/healthimaging/latest/devguide/start-dicom-import-job.html).

=item *

GetDICOMImportJob
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetDICOMImportJob.html)
E<ndash> See Getting import job properties
(https://docs.aws.amazon.com/healthimaging/latest/devguide/get-dicom-import-job.html).

=item *

ListDICOMImportJobs
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListDICOMImportJobs.html)
E<ndash> See Listing import jobs
(https://docs.aws.amazon.com/healthimaging/latest/devguide/list-dicom-import-jobs.html).

=back

B<Image set access actions>

=over

=item *

SearchImageSets
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_SearchImageSets.html)
E<ndash> See Searching image sets
(https://docs.aws.amazon.com/healthimaging/latest/devguide/search-image-sets.html).

=item *

GetImageSet
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetImageSet.html)
E<ndash> See Getting image set properties
(https://docs.aws.amazon.com/healthimaging/latest/devguide/get-image-set-properties.html).

=item *

GetImageSetMetadata
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetImageSetMetadata.html)
E<ndash> See Getting image set metadata
(https://docs.aws.amazon.com/healthimaging/latest/devguide/get-image-set-metadata.html).

=item *

GetImageFrame
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetImageFrame.html)
E<ndash> See Getting image set pixel data
(https://docs.aws.amazon.com/healthimaging/latest/devguide/get-image-frame.html).

=back

B<Image set modification actions>

=over

=item *

ListImageSetVersions
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListImageSetVersions.html)
E<ndash> See Listing image set versions
(https://docs.aws.amazon.com/healthimaging/latest/devguide/list-image-set-versions.html).

=item *

UpdateImageSetMetadata
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_UpdateImageSetMetadata.html)
E<ndash> See Updating image set metadata
(https://docs.aws.amazon.com/healthimaging/latest/devguide/update-image-set-metadata.html).

=item *

CopyImageSet
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_CopyImageSet.html)
E<ndash> See Copying an image set
(https://docs.aws.amazon.com/healthimaging/latest/devguide/copy-image-set.html).

=item *

DeleteImageSet
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_DeleteImageSet.html)
E<ndash> See Deleting an image set
(https://docs.aws.amazon.com/healthimaging/latest/devguide/delete-image-set.html).

=back

B<Tagging actions>

=over

=item *

TagResource
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_TagResource.html)
E<ndash> See Tagging a resource
(https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-resource.html).

=item *

ListTagsForResource
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListTagsForResource.html)
E<ndash> See Listing tags for a resource
(https://docs.aws.amazon.com/healthimaging/latest/devguide/list-tag-resource.html).

=item *

UntagResource
(https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_UntagResource.html)
E<ndash> See Untagging a resource
(https://docs.aws.amazon.com/healthimaging/latest/devguide/untag-resource.html).

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19>


=head1 METHODS

=head2 CopyImageSet

=over

=item CopyImageSetInformation => L<Paws::MedicalImaging::CopyImageSetInformation>

=item DatastoreId => Str

=item SourceImageSetId => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::CopyImageSet>

Returns: a L<Paws::MedicalImaging::CopyImageSetResponse> instance

Copy an image set.


=head2 CreateDatastore

=over

=item ClientToken => Str

=item [DatastoreName => Str]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::MedicalImaging::TagMap>]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::CreateDatastore>

Returns: a L<Paws::MedicalImaging::CreateDatastoreResponse> instance

Create a data store.


=head2 DeleteDatastore

=over

=item DatastoreId => Str


=back

Each argument is described in detail in: L<Paws::MedicalImaging::DeleteDatastore>

Returns: a L<Paws::MedicalImaging::DeleteDatastoreResponse> instance

Delete a data store.

Before a data store can be deleted, you must first delete all image
sets within it.


=head2 DeleteImageSet

=over

=item DatastoreId => Str

=item ImageSetId => Str


=back

Each argument is described in detail in: L<Paws::MedicalImaging::DeleteImageSet>

Returns: a L<Paws::MedicalImaging::DeleteImageSetResponse> instance

Delete an image set.


=head2 GetDatastore

=over

=item DatastoreId => Str


=back

Each argument is described in detail in: L<Paws::MedicalImaging::GetDatastore>

Returns: a L<Paws::MedicalImaging::GetDatastoreResponse> instance

Get data store properties.


=head2 GetDICOMImportJob

=over

=item DatastoreId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::MedicalImaging::GetDICOMImportJob>

Returns: a L<Paws::MedicalImaging::GetDICOMImportJobResponse> instance

Get the import job properties to learn more about the job or job
progress.

The C<jobStatus> refers to the execution of the import job. Therefore,
an import job can return a C<jobStatus> as C<COMPLETED> even if
validation issues are discovered during the import process. If a
C<jobStatus> returns as C<COMPLETED>, we still recommend you review the
output manifests written to S3, as they provide details on the success
or failure of individual P10 object imports.


=head2 GetImageFrame

=over

=item DatastoreId => Str

=item ImageFrameInformation => L<Paws::MedicalImaging::ImageFrameInformation>

=item ImageSetId => Str


=back

Each argument is described in detail in: L<Paws::MedicalImaging::GetImageFrame>

Returns: a L<Paws::MedicalImaging::GetImageFrameResponse> instance

Get an image frame (pixel data) for an image set.


=head2 GetImageSet

=over

=item DatastoreId => Str

=item ImageSetId => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::GetImageSet>

Returns: a L<Paws::MedicalImaging::GetImageSetResponse> instance

Get image set properties.


=head2 GetImageSetMetadata

=over

=item DatastoreId => Str

=item ImageSetId => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::GetImageSetMetadata>

Returns: a L<Paws::MedicalImaging::GetImageSetMetadataResponse> instance

Get metadata attributes for an image set.


=head2 ListDatastores

=over

=item [DatastoreStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::ListDatastores>

Returns: a L<Paws::MedicalImaging::ListDatastoresResponse> instance

List data stores.


=head2 ListDICOMImportJobs

=over

=item DatastoreId => Str

=item [JobStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::ListDICOMImportJobs>

Returns: a L<Paws::MedicalImaging::ListDICOMImportJobsResponse> instance

List import jobs created for a specific data store.


=head2 ListImageSetVersions

=over

=item DatastoreId => Str

=item ImageSetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::ListImageSetVersions>

Returns: a L<Paws::MedicalImaging::ListImageSetVersionsResponse> instance

List image set versions.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MedicalImaging::ListTagsForResource>

Returns: a L<Paws::MedicalImaging::ListTagsForResourceResponse> instance

Lists all tags associated with a medical imaging resource.


=head2 SearchImageSets

=over

=item DatastoreId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchCriteria => L<Paws::MedicalImaging::SearchCriteria>]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::SearchImageSets>

Returns: a L<Paws::MedicalImaging::SearchImageSetsResponse> instance

Search image sets based on defined input attributes.

C<SearchImageSets> accepts a single search query parameter and returns
a paginated response of all image sets that have the matching criteria.
All date range queries must be input as C<(lowerBound, upperBound)>.

By default, C<SearchImageSets> uses the C<updatedAt> field for sorting
in descending order from newest to oldest.


=head2 StartDICOMImportJob

=over

=item ClientToken => Str

=item DataAccessRoleArn => Str

=item DatastoreId => Str

=item InputS3Uri => Str

=item OutputS3Uri => Str

=item [InputOwnerAccountId => Str]

=item [JobName => Str]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::StartDICOMImportJob>

Returns: a L<Paws::MedicalImaging::StartDICOMImportJobResponse> instance

Start importing bulk data into an C<ACTIVE> data store. The import job
imports DICOM P10 files found in the S3 prefix specified by the
C<inputS3Uri> parameter. The import job stores processing results in
the file specified by the C<outputS3Uri> parameter.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::MedicalImaging::TagMap>


=back

Each argument is described in detail in: L<Paws::MedicalImaging::TagResource>

Returns: a L<Paws::MedicalImaging::TagResourceResponse> instance

Adds a user-specifed key and value tag to a medical imaging resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::UntagResource>

Returns: a L<Paws::MedicalImaging::UntagResourceResponse> instance

Removes tags from a medical imaging resource.


=head2 UpdateImageSetMetadata

=over

=item DatastoreId => Str

=item ImageSetId => Str

=item LatestVersionId => Str

=item UpdateImageSetMetadataUpdates => L<Paws::MedicalImaging::MetadataUpdates>

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::MedicalImaging::UpdateImageSetMetadata>

Returns: a L<Paws::MedicalImaging::UpdateImageSetMetadataResponse> instance

Update image set metadata attributes.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDatastores(sub { },[DatastoreStatus => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDatastores([DatastoreStatus => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datastoreSummaries, passing the object as the first parameter, and the string 'datastoreSummaries' as the second parameter 

If not, it will return a a L<Paws::MedicalImaging::ListDatastoresResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDICOMImportJobs(sub { },DatastoreId => Str, [JobStatus => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDICOMImportJobs(DatastoreId => Str, [JobStatus => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobSummaries, passing the object as the first parameter, and the string 'jobSummaries' as the second parameter 

If not, it will return a a L<Paws::MedicalImaging::ListDICOMImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImageSetVersions(sub { },DatastoreId => Str, ImageSetId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllImageSetVersions(DatastoreId => Str, ImageSetId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - imageSetPropertiesList, passing the object as the first parameter, and the string 'imageSetPropertiesList' as the second parameter 

If not, it will return a a L<Paws::MedicalImaging::ListImageSetVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllImageSets(sub { },DatastoreId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::MedicalImaging::SearchCriteria>])

=head2 SearchAllImageSets(DatastoreId => Str, [MaxResults => Int, NextToken => Str, SearchCriteria => L<Paws::MedicalImaging::SearchCriteria>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - imageSetsMetadataSummaries, passing the object as the first parameter, and the string 'imageSetsMetadataSummaries' as the second parameter 

If not, it will return a a L<Paws::MedicalImaging::SearchImageSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

