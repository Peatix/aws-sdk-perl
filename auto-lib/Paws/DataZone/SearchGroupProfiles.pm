
package Paws::DataZone::SearchGroupProfiles;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has GroupType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupType', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SearchText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'searchText');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchGroupProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/search-group-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::SearchGroupProfilesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::SearchGroupProfiles - Arguments for method SearchGroupProfiles on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchGroupProfiles on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method SearchGroupProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchGroupProfiles.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $SearchGroupProfilesOutput = $datazone->SearchGroupProfiles(
      DomainIdentifier => 'MyDomainId',
      GroupType        => 'SSO_GROUP',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
      SearchText       => 'MyGroupSearchText',    # OPTIONAL
    );

    # Results:
    my $Items     = $SearchGroupProfilesOutput->Items;
    my $NextToken = $SearchGroupProfilesOutput->NextToken;

    # Returns a L<Paws::DataZone::SearchGroupProfilesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/SearchGroupProfiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which you want to
search group profiles.



=head2 B<REQUIRED> GroupType => Str

The group type for which to search.

Valid values are: C<"SSO_GROUP">, C<"DATAZONE_SSO_GROUP">

=head2 MaxResults => Int

The maximum number of results to return in a single call to
C<SearchGroupProfiles>. When the number of results to be listed is
greater than the value of C<MaxResults>, the response contains a
C<NextToken> value that you can use in a subsequent call to
C<SearchGroupProfiles> to list the next set of results.



=head2 NextToken => Str

When the number of results is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of results, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<SearchGroupProfiles> to
list the next set of results.



=head2 SearchText => Str

Specifies the text for which to search.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchGroupProfiles in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

