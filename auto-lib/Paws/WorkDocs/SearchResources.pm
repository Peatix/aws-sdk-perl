
package Paws::WorkDocs::SearchResources;
  use Moose;
  has AdditionalResponseFields => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has Filters => (is => 'ro', isa => 'Paws::WorkDocs::Filters');
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has OrderBy => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::SearchSortResult]');
  has OrganizationId => (is => 'ro', isa => 'Str');
  has QueryScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has QueryText => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::SearchResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::SearchResources - Arguments for method SearchResources on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchResources on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method SearchResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchResources.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $SearchResourcesResponse = $workdocs->SearchResources(
      AdditionalResponseFields => [
        'WEBURL', ...    # values: WEBURL
      ],    # OPTIONAL
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Filters             => {
        AncestorIds => [
          'MySearchAncestorId', ...                           # min: 1, max: 128
        ],    # max: 10; OPTIONAL
        ContentCategories => [
          'IMAGE',
          ... # values: IMAGE, DOCUMENT, PDF, SPREADSHEET, PRESENTATION, AUDIO, VIDEO, SOURCE_CODE, OTHER
        ],    # max: 9; OPTIONAL
        CreatedRange => {
          EndValue   => '1970-01-01T01:00:00',    # OPTIONAL
          StartValue => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
        Labels => [
          'MySearchLabel', ...    # min: 1, max: 128
        ],    # max: 10; OPTIONAL
        ModifiedRange => {
          EndValue   => '1970-01-01T01:00:00',    # OPTIONAL
          StartValue => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
        Principals => [
          {
            Id    => 'MyIdType',    # min: 1, max: 256
            Roles => [
              'VIEWER', ...    # values: VIEWER, CONTRIBUTOR, OWNER, COOWNER
            ],    # max: 4; OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
        ResourceTypes => [
          'FOLDER', ...    # values: FOLDER, DOCUMENT, COMMENT, DOCUMENT_VERSION
        ],    # max: 4; OPTIONAL
        SearchCollectionTypes => [
          'OWNED', ...    # values: OWNED, SHARED_WITH_ME
        ],    # max: 2; OPTIONAL
        SizeRange => {
          EndValue   => 1,    # OPTIONAL
          StartValue => 1,    # OPTIONAL
        },    # OPTIONAL
        TextLocales => [
          'AR',
          ... # values: AR, BG, BN, DA, DE, CS, EL, EN, ES, FA, FI, FR, HI, HU, ID, IT, JA, KO, LT, LV, NL, NO, PT, RO, RU, SV, SW, TH, TR, ZH, DEFAULT
        ],    # max: 1; OPTIONAL
      },    # OPTIONAL
      Limit   => 1,                     # OPTIONAL
      Marker  => 'MyNextMarkerType',    # OPTIONAL
      OrderBy => [
        {
          Field => 'RELEVANCE'
          , # values: RELEVANCE, NAME, SIZE, CREATED_TIMESTAMP, MODIFIED_TIMESTAMP; OPTIONAL
          Order => 'ASC',    # values: ASC, DESC; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      OrganizationId => 'MyIdType',    # OPTIONAL
      QueryScopes    => [
        'NAME', ...                    # values: NAME, CONTENT
      ],    # OPTIONAL
      QueryText => 'MySearchQueryType',    # OPTIONAL
    );

    # Results:
    my $Items  = $SearchResourcesResponse->Items;
    my $Marker = $SearchResourcesResponse->Marker;

    # Returns a L<Paws::WorkDocs::SearchResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/SearchResources>

=head1 ATTRIBUTES


=head2 AdditionalResponseFields => ArrayRef[Str|Undef]

A list of attributes to include in the response. Used to request fields
that are not normally returned in a standard response.



=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Not required when using Amazon
Web Services administrator credentials to access the API.



=head2 Filters => L<Paws::WorkDocs::Filters>

Filters results based on entity metadata.



=head2 Limit => Int

Max results count per page.



=head2 Marker => Str

The marker for the next set of results.



=head2 OrderBy => ArrayRef[L<Paws::WorkDocs::SearchSortResult>]

Order by results in one or more categories.



=head2 OrganizationId => Str

Filters based on the resource owner OrgId. This is a mandatory
parameter when using Admin SigV4 credentials.



=head2 QueryScopes => ArrayRef[Str|Undef]

Filter based on the text field type. A Folder has only a name and no
content. A Comment has only content and no name. A Document or Document
Version has a name and content



=head2 QueryText => Str

The String to search for. Searches across different text fields based
on request parameters. Use double quotes around the query string for
exact phrase matches.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchResources in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

