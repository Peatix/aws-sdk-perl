
package Paws::CustomerProfiles::GetSimilarProfiles;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MatchType => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has SearchKey => (is => 'ro', isa => 'Str', required => 1);
  has SearchValue => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSimilarProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/matches');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetSimilarProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetSimilarProfiles - Arguments for method GetSimilarProfiles on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSimilarProfiles on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetSimilarProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSimilarProfiles.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetSimilarProfilesResponse = $profile->GetSimilarProfiles(
      DomainName  => 'Myname',
      MatchType   => 'RULE_BASED_MATCHING',
      SearchKey   => 'Mystring1To255',
      SearchValue => 'Mystring1To255',
      MaxResults  => 1,                       # OPTIONAL
      NextToken   => 'Mytoken',               # OPTIONAL
    );

    # Results:
    my $ConfidenceScore = $GetSimilarProfilesResponse->ConfidenceScore;
    my $MatchId         = $GetSimilarProfilesResponse->MatchId;
    my $MatchType       = $GetSimilarProfilesResponse->MatchType;
    my $NextToken       = $GetSimilarProfilesResponse->NextToken;
    my $ProfileIds      = $GetSimilarProfilesResponse->ProfileIds;
    my $RuleLevel       = $GetSimilarProfilesResponse->RuleLevel;

    # Returns a L<Paws::CustomerProfiles::GetSimilarProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetSimilarProfiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> MatchType => Str

Specify the type of matching to get similar profiles for.

Valid values are: C<"RULE_BASED_MATCHING">, C<"ML_BASED_MATCHING">

=head2 MaxResults => Int

The maximum number of objects returned per page.



=head2 NextToken => Str

The pagination token from the previous C<GetSimilarProfiles> API call.



=head2 B<REQUIRED> SearchKey => Str

The string indicating the search key to be used.



=head2 B<REQUIRED> SearchValue => Str

The string based on C<SearchKey> to be searched for similar profiles.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSimilarProfiles in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

