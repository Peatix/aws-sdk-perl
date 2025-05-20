
package Paws::DataZone::SearchUserProfiles;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SearchText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'searchText');
  has UserType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchUserProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/search-user-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::SearchUserProfilesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::SearchUserProfiles - Arguments for method SearchUserProfiles on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchUserProfiles on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method SearchUserProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchUserProfiles.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $SearchUserProfilesOutput = $datazone->SearchUserProfiles(
      DomainIdentifier => 'MyDomainId',
      UserType         => 'SSO_USER',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
      SearchText       => 'MyUserSearchText',     # OPTIONAL
    );

    # Results:
    my $Items     = $SearchUserProfilesOutput->Items;
    my $NextToken = $SearchUserProfilesOutput->NextToken;

    # Returns a L<Paws::DataZone::SearchUserProfilesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/SearchUserProfiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which you want to
search user profiles.



=head2 MaxResults => Int

The maximum number of results to return in a single call to
C<SearchUserProfiles>. When the number of results to be listed is
greater than the value of C<MaxResults>, the response contains a
C<NextToken> value that you can use in a subsequent call to
C<SearchUserProfiles> to list the next set of results.



=head2 NextToken => Str

When the number of results is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of results, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<SearchUserProfiles> to
list the next set of results.



=head2 SearchText => Str

Specifies the text for which to search.



=head2 B<REQUIRED> UserType => Str

Specifies the user type for the C<SearchUserProfiles> action.

Valid values are: C<"SSO_USER">, C<"DATAZONE_USER">, C<"DATAZONE_SSO_USER">, C<"DATAZONE_IAM_USER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchUserProfiles in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

