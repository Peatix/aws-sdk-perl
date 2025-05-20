
package Paws::DataZone::ListProjectProfiles;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProjectProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/project-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListProjectProfilesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListProjectProfiles - Arguments for method ListProjectProfiles on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProjectProfiles on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListProjectProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProjectProfiles.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListProjectProfilesOutput = $datazone->ListProjectProfiles(
      DomainIdentifier => 'MyDomainId',
      MaxResults       => 1,                         # OPTIONAL
      Name             => 'MyProjectProfileName',    # OPTIONAL
      NextToken        => 'MyPaginationToken',       # OPTIONAL
      SortBy           => 'NAME',                    # OPTIONAL
      SortOrder        => 'ASCENDING',               # OPTIONAL
    );

    # Results:
    my $Items     = $ListProjectProfilesOutput->Items;
    my $NextToken = $ListProjectProfilesOutput->NextToken;

    # Returns a L<Paws::DataZone::ListProjectProfilesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListProjectProfiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to list project profiles.



=head2 MaxResults => Int

The maximum number of project profiles to return in a single call to
ListProjectProfiles. When the number of project profiles to be listed
is greater than the value of MaxResults, the response contains a
NextToken value that you can use in a subsequent call to
ListProjectProfiles to list the next set of project profiles.



=head2 Name => Str

The name of a project profile.



=head2 NextToken => Str

When the number of project profiles is greater than the default value
for the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of project profiles, the
response includes a pagination token named NextToken. You can specify
this NextToken value in a subsequent call to ListProjectProfiles to
list the next set of project profiles.



=head2 SortBy => Str

Specifies by what to sort project profiles.

Valid values are: C<"NAME">

=head2 SortOrder => Str

Specifies the sort order of the project profiles.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProjectProfiles in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

