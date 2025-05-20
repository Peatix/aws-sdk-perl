
package Paws::Glue::ListDataQualityRulesets;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Glue::DataQualityRulesetFilterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataQualityRulesets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListDataQualityRulesetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDataQualityRulesets - Arguments for method ListDataQualityRulesets on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataQualityRulesets on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListDataQualityRulesets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataQualityRulesets.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListDataQualityRulesetsResponse = $glue->ListDataQualityRulesets(
      Filter => {
        CreatedAfter       => '1970-01-01T01:00:00',    # OPTIONAL
        CreatedBefore      => '1970-01-01T01:00:00',    # OPTIONAL
        Description        => 'MyDescriptionString',    # max: 2048; OPTIONAL
        LastModifiedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        LastModifiedBefore => '1970-01-01T01:00:00',    # OPTIONAL
        Name               => 'MyNameString',    # min: 1, max: 255; OPTIONAL
        TargetTable        => {
          DatabaseName => 'MyNameString',        # min: 1, max: 255; OPTIONAL
          TableName    => 'MyNameString',        # min: 1, max: 255; OPTIONAL
          CatalogId    => 'MyNameString',        # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Tags       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListDataQualityRulesetsResponse->NextToken;
    my $Rulesets  = $ListDataQualityRulesetsResponse->Rulesets;

    # Returns a L<Paws::Glue::ListDataQualityRulesetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListDataQualityRulesets>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Glue::DataQualityRulesetFilterCriteria>

The filter criteria.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A paginated token to offset the results.



=head2 Tags => L<Paws::Glue::TagsMap>

A list of key-value pair tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataQualityRulesets in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

