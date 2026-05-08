package Paws::HealthLake;
  use Moose;
  sub service { 'healthlake' }
  sub signing_name { 'healthlake' }
  sub version { '2017-07-01' }
  sub target_prefix { 'HealthLake' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateFHIRDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::CreateFHIRDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFHIRDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::DeleteFHIRDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFHIRDatastore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::DescribeFHIRDatastore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFHIRExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::DescribeFHIRExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFHIRImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::DescribeFHIRImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFHIRDatastores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::ListFHIRDatastores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFHIRExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::ListFHIRExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFHIRImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::ListFHIRImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFHIRExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::StartFHIRExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFHIRImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::StartFHIRImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::HealthLake::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateFHIRDatastore DeleteFHIRDatastore DescribeFHIRDatastore DescribeFHIRExportJob DescribeFHIRImportJob ListFHIRDatastores ListFHIRExportJobs ListFHIRImportJobs ListTagsForResource StartFHIRExportJob StartFHIRImportJob TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake - Perl Interface to AWS Amazon HealthLake

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('HealthLake');
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

AWS HealthLake is a HIPAA eligibile service that allows customers to
store, transform, query, and analyze their FHIR-formatted data in a
consistent fashion in the cloud.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01>


=head1 METHODS

=head2 CreateFHIRDatastore

=over

=item DatastoreTypeVersion => Str

=item [ClientToken => Str]

=item [DatastoreName => Str]

=item [IdentityProviderConfiguration => L<Paws::HealthLake::IdentityProviderConfiguration>]

=item [PreloadDataConfig => L<Paws::HealthLake::PreloadDataConfig>]

=item [SseConfiguration => L<Paws::HealthLake::SseConfiguration>]

=item [Tags => ArrayRef[L<Paws::HealthLake::Tag>]]


=back

Each argument is described in detail in: L<Paws::HealthLake::CreateFHIRDatastore>

Returns: a L<Paws::HealthLake::CreateFHIRDatastoreResponse> instance

Creates a data store that can ingest and export FHIR formatted data.


=head2 DeleteFHIRDatastore

=over

=item DatastoreId => Str


=back

Each argument is described in detail in: L<Paws::HealthLake::DeleteFHIRDatastore>

Returns: a L<Paws::HealthLake::DeleteFHIRDatastoreResponse> instance

Deletes a data store.


=head2 DescribeFHIRDatastore

=over

=item DatastoreId => Str


=back

Each argument is described in detail in: L<Paws::HealthLake::DescribeFHIRDatastore>

Returns: a L<Paws::HealthLake::DescribeFHIRDatastoreResponse> instance

Gets the properties associated with the FHIR data store, including the
data store ID, data store ARN, data store name, data store status, when
the data store was created, data store type version, and the data
store's endpoint.


=head2 DescribeFHIRExportJob

=over

=item DatastoreId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::HealthLake::DescribeFHIRExportJob>

Returns: a L<Paws::HealthLake::DescribeFHIRExportJobResponse> instance

Displays the properties of a FHIR export job, including the ID, ARN,
name, and the status of the job.


=head2 DescribeFHIRImportJob

=over

=item DatastoreId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::HealthLake::DescribeFHIRImportJob>

Returns: a L<Paws::HealthLake::DescribeFHIRImportJobResponse> instance

Displays the properties of a FHIR import job, including the ID, ARN,
name, and the status of the job.


=head2 ListFHIRDatastores

=over

=item [Filter => L<Paws::HealthLake::DatastoreFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::HealthLake::ListFHIRDatastores>

Returns: a L<Paws::HealthLake::ListFHIRDatastoresResponse> instance

Lists all FHIR data stores that are in the userE<rsquo>s account,
regardless of data store status.


=head2 ListFHIRExportJobs

=over

=item DatastoreId => Str

=item [JobName => Str]

=item [JobStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SubmittedAfter => Str]

=item [SubmittedBefore => Str]


=back

Each argument is described in detail in: L<Paws::HealthLake::ListFHIRExportJobs>

Returns: a L<Paws::HealthLake::ListFHIRExportJobsResponse> instance

Lists all FHIR export jobs associated with an account and their
statuses.


=head2 ListFHIRImportJobs

=over

=item DatastoreId => Str

=item [JobName => Str]

=item [JobStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SubmittedAfter => Str]

=item [SubmittedBefore => Str]


=back

Each argument is described in detail in: L<Paws::HealthLake::ListFHIRImportJobs>

Returns: a L<Paws::HealthLake::ListFHIRImportJobsResponse> instance

Lists all FHIR import jobs associated with an account and their
statuses.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::HealthLake::ListTagsForResource>

Returns: a L<Paws::HealthLake::ListTagsForResourceResponse> instance

Returns a list of all existing tags associated with a data store.


=head2 StartFHIRExportJob

=over

=item DataAccessRoleArn => Str

=item DatastoreId => Str

=item OutputDataConfig => L<Paws::HealthLake::OutputDataConfig>

=item [ClientToken => Str]

=item [JobName => Str]


=back

Each argument is described in detail in: L<Paws::HealthLake::StartFHIRExportJob>

Returns: a L<Paws::HealthLake::StartFHIRExportJobResponse> instance

Begins a FHIR export job.


=head2 StartFHIRImportJob

=over

=item DataAccessRoleArn => Str

=item DatastoreId => Str

=item InputDataConfig => L<Paws::HealthLake::InputDataConfig>

=item JobOutputDataConfig => L<Paws::HealthLake::OutputDataConfig>

=item [ClientToken => Str]

=item [JobName => Str]


=back

Each argument is described in detail in: L<Paws::HealthLake::StartFHIRImportJob>

Returns: a L<Paws::HealthLake::StartFHIRImportJobResponse> instance

Begins a FHIR Import job.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::HealthLake::Tag>]


=back

Each argument is described in detail in: L<Paws::HealthLake::TagResource>

Returns: a L<Paws::HealthLake::TagResourceResponse> instance

Adds a user specified key and value tag to a data store.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::HealthLake::UntagResource>

Returns: a L<Paws::HealthLake::UntagResourceResponse> instance

Removes tags from a data store.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

