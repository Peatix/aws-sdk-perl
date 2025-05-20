
package Paws::MemoryDB::DescribeParameterGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeParameterGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::DescribeParameterGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeParameterGroups - Arguments for method DescribeParameterGroups on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeParameterGroups on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method DescribeParameterGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeParameterGroups.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $DescribeParameterGroupsResponse = $memory -db->DescribeParameterGroups(
      MaxResults         => 1,             # OPTIONAL
      NextToken          => 'MyString',    # OPTIONAL
      ParameterGroupName => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $DescribeParameterGroupsResponse->NextToken;
    my $ParameterGroups = $DescribeParameterGroupsResponse->ParameterGroups;

    # Returns a L<Paws::MemoryDB::DescribeParameterGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/DescribeParameterGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.



=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.



=head2 ParameterGroupName => Str

The name of a specific parameter group to return details for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeParameterGroups in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

