
package Paws::MedicalImaging::SearchImageSets;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SearchCriteria => (is => 'ro', isa => 'Paws::MedicalImaging::SearchCriteria', traits => ['NameInRequest'], request_name => 'searchCriteria');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SearchCriteria');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchImageSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastore/{datastoreId}/searchImageSets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::SearchImageSetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::SearchImageSets - Arguments for method SearchImageSets on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchImageSets on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method SearchImageSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchImageSets.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $SearchImageSetsResponse = $medical -imaging->SearchImageSets(
      DatastoreId    => 'MyDatastoreId',
      MaxResults     => 1,                 # OPTIONAL
      NextToken      => 'MyNextToken',     # OPTIONAL
      SearchCriteria => {
        Filters => [
          {
            Operator => 'EQUAL',    # values: EQUAL, BETWEEN
            Values   => [
              {
                CreatedAt            => '1970-01-01T01:00:00',    # OPTIONAL
                DICOMAccessionNumber =>
                  'MyDICOMAccessionNumber',    # max: 256; OPTIONAL
                DICOMPatientId => 'MyDICOMPatientId',    # max: 256; OPTIONAL
                DICOMSeriesInstanceUID =>
                  'MyDICOMSeriesInstanceUID',            # max: 256; OPTIONAL
                DICOMStudyDateAndTime => {
                  DICOMStudyDate => 'MyDICOMStudyDate',    # max: 18
                  DICOMStudyTime => 'MyDICOMStudyTime',    # max: 28; OPTIONAL
                },    # OPTIONAL
                DICOMStudyId          => 'MyDICOMStudyId',   # max: 16; OPTIONAL
                DICOMStudyInstanceUID =>
                  'MyDICOMStudyInstanceUID',    # max: 256; OPTIONAL
                UpdatedAt => '1970-01-01T01:00:00',    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 2

          },
          ...
        ],    # min: 1, max: 2; OPTIONAL
        Sort => {
          SortField =>
            'updatedAt',   # values: updatedAt, createdAt, DICOMStudyDateAndTime
          SortOrder => 'ASC',    # values: ASC, DESC

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ImageSetsMetadataSummaries =
      $SearchImageSetsResponse->ImageSetsMetadataSummaries;
    my $NextToken = $SearchImageSetsResponse->NextToken;
    my $Sort      = $SearchImageSetsResponse->Sort;

    # Returns a L<Paws::MedicalImaging::SearchImageSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/SearchImageSets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The identifier of the data store where the image sets reside.



=head2 MaxResults => Int

The maximum number of results that can be returned in a search.



=head2 NextToken => Str

The token used for pagination of results returned in the response. Use
the token returned from the previous request to continue results where
the previous request ended.



=head2 SearchCriteria => L<Paws::MedicalImaging::SearchCriteria>

The search criteria that filters by applying a maximum of 1 item to
C<SearchByAttribute>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchImageSets in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

