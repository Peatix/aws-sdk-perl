
package Paws::SageMaker::QueryLineage;
  use Moose;
  has Direction => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::SageMaker::QueryFilters');
  has IncludeEdges => (is => 'ro', isa => 'Bool');
  has MaxDepth => (is => 'ro', isa => 'Int');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'QueryLineage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::QueryLineageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::QueryLineage - Arguments for method QueryLineage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method QueryLineage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method QueryLineage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to QueryLineage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $QueryLineageResponse = $api . sagemaker->QueryLineage(
      Direction => 'Both',    # OPTIONAL
      Filters   => {
        CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
        LineageTypes  => [
          'TrialComponent',
          ...    # values: TrialComponent, Artifact, Context, Action
        ],    # max: 4; OPTIONAL
        ModifiedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        ModifiedBefore => '1970-01-01T01:00:00',    # OPTIONAL
        Properties     => {
          'MyString256' => 'MyString256',    # key: max: 256, value: max: 256
        },    # max: 5; OPTIONAL
        Types => [
          'MyString40', ...    # max: 40
        ],    # max: 5; OPTIONAL
      },    # OPTIONAL
      IncludeEdges => 1,                 # OPTIONAL
      MaxDepth     => 1,                 # OPTIONAL
      MaxResults   => 1,                 # OPTIONAL
      NextToken    => 'MyString8192',    # OPTIONAL
      StartArns    => [
        'MyAssociationEntityArn', ...    # max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $Edges     = $QueryLineageResponse->Edges;
    my $NextToken = $QueryLineageResponse->NextToken;
    my $Vertices  = $QueryLineageResponse->Vertices;

    # Returns a L<Paws::SageMaker::QueryLineageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/QueryLineage>

=head1 ATTRIBUTES


=head2 Direction => Str

Associations between lineage entities have a direction. This parameter
determines the direction from the StartArn(s) that the query traverses.

Valid values are: C<"Both">, C<"Ascendants">, C<"Descendants">

=head2 Filters => L<Paws::SageMaker::QueryFilters>

A set of filtering parameters that allow you to specify which entities
should be returned.

=over

=item *

Properties - Key-value pairs to match on the lineage entities'
properties.

=item *

LineageTypes - A set of lineage entity types to match on. For example:
C<TrialComponent>, C<Artifact>, or C<Context>.

=item *

CreatedBefore - Filter entities created before this date.

=item *

ModifiedBefore - Filter entities modified before this date.

=item *

ModifiedAfter - Filter entities modified after this date.

=back




=head2 IncludeEdges => Bool

Setting this value to C<True> retrieves not only the entities of
interest but also the Associations
(https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking-entities.html)
and lineage entities on the path. Set to C<False> to only return
lineage entities that match your query.



=head2 MaxDepth => Int

The maximum depth in lineage relationships from the C<StartArns> that
are traversed. Depth is a measure of the number of C<Associations> from
the C<StartArn> entity to the matched results.



=head2 MaxResults => Int

Limits the number of vertices in the results. Use the C<NextToken> in a
response to to retrieve the next page of results.



=head2 NextToken => Str

Limits the number of vertices in the request. Use the C<NextToken> in a
response to to retrieve the next page of results.



=head2 StartArns => ArrayRef[Str|Undef]

A list of resource Amazon Resource Name (ARN) that represent the
starting point for your lineage query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method QueryLineage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

