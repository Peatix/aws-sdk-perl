
package Paws::Omics::ListRunGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has StartingToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startingToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRunGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListRunGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListRunGroups - Arguments for method ListRunGroups on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRunGroups on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListRunGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRunGroups.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListRunGroupsResponse = $omics->ListRunGroups(
      MaxResults    => 1,                        # OPTIONAL
      Name          => 'MyRunGroupName',         # OPTIONAL
      StartingToken => 'MyRunGroupListToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListRunGroupsResponse->Items;
    my $NextToken = $ListRunGroupsResponse->NextToken;

    # Returns a L<Paws::Omics::ListRunGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListRunGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of run groups to return in one page of results.



=head2 Name => Str

The run groups' name.



=head2 StartingToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRunGroups in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

