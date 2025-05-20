
package Paws::SecurityHub::ListFindingAggregators;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFindingAggregators');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findingAggregator/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::ListFindingAggregatorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListFindingAggregators - Arguments for method ListFindingAggregators on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFindingAggregators on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method ListFindingAggregators.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFindingAggregators.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $ListFindingAggregatorsResponse = $securityhub->ListFindingAggregators(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $FindingAggregators =
      $ListFindingAggregatorsResponse->FindingAggregators;
    my $NextToken = $ListFindingAggregatorsResponse->NextToken;

    # Returns a L<Paws::SecurityHub::ListFindingAggregatorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/ListFindingAggregators>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return. This operation currently only
returns a single result.



=head2 NextToken => Str

The token returned with the previous set of results. Identifies the
next set of results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFindingAggregators in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

