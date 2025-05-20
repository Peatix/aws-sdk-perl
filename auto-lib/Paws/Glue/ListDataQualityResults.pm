
package Paws::Glue::ListDataQualityResults;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Glue::DataQualityResultFilterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataQualityResults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListDataQualityResultsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDataQualityResults - Arguments for method ListDataQualityResults on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataQualityResults on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListDataQualityResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataQualityResults.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListDataQualityResultsResponse = $glue->ListDataQualityResults(
      Filter => {
        DataSource => {
          GlueTable => {
            DatabaseName      => 'MyNameString',    # min: 1, max: 255
            TableName         => 'MyNameString',    # min: 1, max: 255
            AdditionalOptions => {
              'MyNameString' =>
                'MyDescriptionString', # key: min: 1, max: 255, value: max: 2048
            },    # min: 1, max: 10; OPTIONAL
            CatalogId      => 'MyNameString',    # min: 1, max: 255
            ConnectionName => 'MyNameString',    # min: 1, max: 255
          },

        },    # OPTIONAL
        JobName       => 'MyNameString',           # min: 1, max: 255
        JobRunId      => 'MyHashString',           # min: 1, max: 255; OPTIONAL
        StartedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        StartedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListDataQualityResultsResponse->NextToken;
    my $Results   = $ListDataQualityResultsResponse->Results;

    # Returns a L<Paws::Glue::ListDataQualityResultsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListDataQualityResults>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Glue::DataQualityResultFilterCriteria>

The filter criteria.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A paginated token to offset the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataQualityResults in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

