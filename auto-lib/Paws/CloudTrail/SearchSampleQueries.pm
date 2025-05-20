
package Paws::CloudTrail::SearchSampleQueries;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchPhrase => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchSampleQueries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::SearchSampleQueriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::SearchSampleQueries - Arguments for method SearchSampleQueries on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchSampleQueries on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method SearchSampleQueries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchSampleQueries.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $SearchSampleQueriesResponse = $cloudtrail->SearchSampleQueries(
      SearchPhrase => 'MySearchSampleQueriesSearchPhrase',
      MaxResults   => 1,                                     # OPTIONAL
      NextToken    => 'MyPaginationToken',                   # OPTIONAL
    );

    # Results:
    my $NextToken     = $SearchSampleQueriesResponse->NextToken;
    my $SearchResults = $SearchSampleQueriesResponse->SearchResults;

    # Returns a L<Paws::CloudTrail::SearchSampleQueriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/SearchSampleQueries>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return on a single page. The default
value is 10.



=head2 NextToken => Str

A token you can use to get the next page of results. The length
constraint is in characters, not words.



=head2 B<REQUIRED> SearchPhrase => Str

The natural language phrase to use for the semantic search. The phrase
must be in English. The length constraint is in characters, not words.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchSampleQueries in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

