
package Paws::Config::ListConformancePackComplianceScores;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::Config::ConformancePackComplianceScoresFilters');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConformancePackComplianceScores');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::ListConformancePackComplianceScoresResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListConformancePackComplianceScores - Arguments for method ListConformancePackComplianceScores on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConformancePackComplianceScores on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method ListConformancePackComplianceScores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConformancePackComplianceScores.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $ListConformancePackComplianceScoresResponse =
      $config->ListConformancePackComplianceScores(
      Filters => {
        ConformancePackNames => [
          'MyConformancePackName', ...    # min: 1, max: 256
        ],    # min: 1, max: 25

      },    # OPTIONAL
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      SortBy    => 'SCORE',          # OPTIONAL
      SortOrder => 'ASCENDING',      # OPTIONAL
      );

    # Results:
    my $ConformancePackComplianceScores =
      $ListConformancePackComplianceScoresResponse
      ->ConformancePackComplianceScores;
    my $NextToken = $ListConformancePackComplianceScoresResponse->NextToken;

# Returns a L<Paws::Config::ListConformancePackComplianceScoresResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/ListConformancePackComplianceScores>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::Config::ConformancePackComplianceScoresFilters>

Filters the results based on the
C<ConformancePackComplianceScoresFilters>.



=head2 Limit => Int

The maximum number of conformance pack compliance scores returned on
each page.



=head2 NextToken => Str

The C<nextToken> string in a prior request that you can use to get the
paginated response for the next set of conformance pack compliance
scores.



=head2 SortBy => Str

Sorts your conformance pack compliance scores in either ascending or
descending order, depending on C<SortOrder>.

By default, conformance pack compliance scores are sorted in
alphabetical order by name of the conformance pack. Enter C<SCORE>, to
sort conformance pack compliance scores by the numerical value of the
compliance score.

Valid values are: C<"SCORE">

=head2 SortOrder => Str

Determines the order in which conformance pack compliance scores are
sorted. Either in ascending or descending order.

By default, conformance pack compliance scores are sorted in
alphabetical order by name of the conformance pack. Conformance pack
compliance scores are sorted in reverse alphabetical order if you enter
C<DESCENDING>.

You can sort conformance pack compliance scores by the numerical value
of the compliance score by entering C<SCORE> in the C<SortBy> action.
When compliance scores are sorted by C<SCORE>, conformance packs with a
compliance score of C<INSUFFICIENT_DATA> will be last when sorting by
ascending order and first when sorting by descending order.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConformancePackComplianceScores in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

