package Paws::BackupSearch;
  use Moose;
  sub service { 'backup-search' }
  sub signing_name { 'backup-search' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetSearchJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::GetSearchJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSearchResultExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::GetSearchResultExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSearchJobBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::ListSearchJobBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSearchJobResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::ListSearchJobResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSearchJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::ListSearchJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSearchResultExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::ListSearchResultExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSearchJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::StartSearchJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSearchResultExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::StartSearchResultExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSearchJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::StopSearchJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupSearch::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllSearchJobBackups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSearchJobBackups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSearchJobBackups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->ListSearchJobBackups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }
  sub ListAllSearchJobResults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSearchJobResults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSearchJobResults(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->ListSearchJobResults(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }
  sub ListAllSearchJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSearchJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSearchJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->SearchJobs }, @{ $next_result->SearchJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SearchJobs') foreach (@{ $result->SearchJobs });
        $result = $self->ListSearchJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SearchJobs') foreach (@{ $result->SearchJobs });
    }

    return undef
  }
  sub ListAllSearchResultExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSearchResultExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSearchResultExportJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ExportJobs }, @{ $next_result->ExportJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ExportJobs') foreach (@{ $result->ExportJobs });
        $result = $self->ListSearchResultExportJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ExportJobs') foreach (@{ $result->ExportJobs });
    }

    return undef
  }


  sub operations { qw/GetSearchJob GetSearchResultExportJob ListSearchJobBackups ListSearchJobResults ListSearchJobs ListSearchResultExportJobs ListTagsForResource StartSearchJob StartSearchResultExportJob StopSearchJob TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch - Perl Interface to AWS AWS Backup Search

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('BackupSearch');
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

Backup Search

Backup Search is the recovery point and item level search for Backup.

For additional information, see:

=over

=item *

Backup API Reference
(https://docs.aws.amazon.com/aws-backup/latest/devguide/api-reference.html)

=item *

Backup Developer Guide
(https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search-2018-05-10>


=head1 METHODS

=head2 GetSearchJob

=over

=item SearchJobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BackupSearch::GetSearchJob>

Returns: a L<Paws::BackupSearch::GetSearchJobOutput> instance

This operation retrieves metadata of a search job, including its
progress.


=head2 GetSearchResultExportJob

=over

=item ExportJobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BackupSearch::GetSearchResultExportJob>

Returns: a L<Paws::BackupSearch::GetSearchResultExportJobOutput> instance

This operation retrieves the metadata of an export job.

An export job is an operation that transmits the results of a search
job to a specified S3 bucket in a .csv file.

An export job allows you to retain results of a search beyond the
search job's scheduled retention of 7 days.


=head2 ListSearchJobBackups

=over

=item SearchJobIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BackupSearch::ListSearchJobBackups>

Returns: a L<Paws::BackupSearch::ListSearchJobBackupsOutput> instance

This operation returns a list of all backups (recovery points) in a
paginated format that were included in the search job.

If a search does not display an expected backup in the results, you can
call this operation to display each backup included in the search. Any
backups that were not included because they have a C<FAILED> status
from a permissions issue will be displayed, along with a status
message.

Only recovery points with a backup index that has a status of C<ACTIVE>
will be included in search results. If the index has any other status,
its status will be displayed along with a status message.


=head2 ListSearchJobResults

=over

=item SearchJobIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BackupSearch::ListSearchJobResults>

Returns: a L<Paws::BackupSearch::ListSearchJobResultsOutput> instance

This operation returns a list of a specified search job.


=head2 ListSearchJobs

=over

=item [ByStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BackupSearch::ListSearchJobs>

Returns: a L<Paws::BackupSearch::ListSearchJobsOutput> instance

This operation returns a list of search jobs belonging to an account.


=head2 ListSearchResultExportJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchJobIdentifier => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::BackupSearch::ListSearchResultExportJobs>

Returns: a L<Paws::BackupSearch::ListSearchResultExportJobsOutput> instance

This operation exports search results of a search job to a specified
destination S3 bucket.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::BackupSearch::ListTagsForResource>

Returns: a L<Paws::BackupSearch::ListTagsForResourceResponse> instance

This operation returns the tags for a resource type.


=head2 StartSearchJob

=over

=item SearchScope => L<Paws::BackupSearch::SearchScope>

=item [ClientToken => Str]

=item [EncryptionKeyArn => Str]

=item [ItemFilters => L<Paws::BackupSearch::ItemFilters>]

=item [Name => Str]

=item [Tags => L<Paws::BackupSearch::TagMap>]


=back

Each argument is described in detail in: L<Paws::BackupSearch::StartSearchJob>

Returns: a L<Paws::BackupSearch::StartSearchJobOutput> instance

This operation creates a search job which returns recovery points
filtered by SearchScope and items filtered by ItemFilters.

You can optionally include ClientToken, EncryptionKeyArn, Name, and/or
Tags.


=head2 StartSearchResultExportJob

=over

=item ExportSpecification => L<Paws::BackupSearch::ExportSpecification>

=item SearchJobIdentifier => Str

=item [ClientToken => Str]

=item [RoleArn => Str]

=item [Tags => L<Paws::BackupSearch::TagMap>]


=back

Each argument is described in detail in: L<Paws::BackupSearch::StartSearchResultExportJob>

Returns: a L<Paws::BackupSearch::StartSearchResultExportJobOutput> instance

This operations starts a job to export the results of search job to a
designated S3 bucket.


=head2 StopSearchJob

=over

=item SearchJobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::BackupSearch::StopSearchJob>

Returns: a L<Paws::BackupSearch::StopSearchJobOutput> instance

This operations ends a search job.

Only a search job with a status of C<RUNNING> can be stopped.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::BackupSearch::TagMap>


=back

Each argument is described in detail in: L<Paws::BackupSearch::TagResource>

Returns: a L<Paws::BackupSearch::TagResourceResponse> instance

This operation puts tags on the resource you indicate.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BackupSearch::UntagResource>

Returns: a L<Paws::BackupSearch::UntagResourceResponse> instance

This operation removes tags from the specified resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllSearchJobBackups(sub { },SearchJobIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSearchJobBackups(SearchJobIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::BackupSearch::ListSearchJobBackupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSearchJobResults(sub { },SearchJobIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSearchJobResults(SearchJobIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::BackupSearch::ListSearchJobResultsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSearchJobs(sub { },[ByStatus => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllSearchJobs([ByStatus => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SearchJobs, passing the object as the first parameter, and the string 'SearchJobs' as the second parameter 

If not, it will return a a L<Paws::BackupSearch::ListSearchJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSearchResultExportJobs(sub { },[MaxResults => Int, NextToken => Str, SearchJobIdentifier => Str, Status => Str])

=head2 ListAllSearchResultExportJobs([MaxResults => Int, NextToken => Str, SearchJobIdentifier => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ExportJobs, passing the object as the first parameter, and the string 'ExportJobs' as the second parameter 

If not, it will return a a L<Paws::BackupSearch::ListSearchResultExportJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

