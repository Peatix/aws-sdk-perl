
package Paws::GameLiftStreams::ListStreamGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::ListStreamGroupsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::ListStreamGroups - Arguments for method ListStreamGroups on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreamGroups on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method ListStreamGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreamGroups.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $ListStreamGroupsOutput = $gameliftstreams->ListStreamGroups(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListStreamGroupsOutput->Items;
    my $NextToken = $ListStreamGroupsOutput->NextToken;

    # Returns a L<Paws::GameLiftStreams::ListStreamGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/ListStreamGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of results to return. Use this parameter with C<NextToken>
to return results in sequential pages. Default value is C<25>.



=head2 NextToken => Str

A token that marks the start of the next set of results. Use this token
when you retrieve results as sequential pages. To get the first page of
results, omit a token value. To get the remaining pages, provide the
token returned with the previous result set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreamGroups in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

