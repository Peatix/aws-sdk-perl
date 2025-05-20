
package Paws::MemoryDB::DescribeEngineVersions;
  use Moose;
  has DefaultOnly => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::DescribeEngineVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeEngineVersions - Arguments for method DescribeEngineVersions on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEngineVersions on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method DescribeEngineVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEngineVersions.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $DescribeEngineVersionsResponse = $memory -db->DescribeEngineVersions(
      DefaultOnly          => 1,             # OPTIONAL
      Engine               => 'MyString',    # OPTIONAL
      EngineVersion        => 'MyString',    # OPTIONAL
      MaxResults           => 1,             # OPTIONAL
      NextToken            => 'MyString',    # OPTIONAL
      ParameterGroupFamily => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EngineVersions = $DescribeEngineVersionsResponse->EngineVersions;
    my $NextToken      = $DescribeEngineVersionsResponse->NextToken;

    # Returns a L<Paws::MemoryDB::DescribeEngineVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/DescribeEngineVersions>

=head1 ATTRIBUTES


=head2 DefaultOnly => Bool

If true, specifies that only the default version of the specified
engine or engine and major version combination is to be returned.



=head2 Engine => Str

The name of the engine for which to list available versions.



=head2 EngineVersion => Str

The Redis OSS engine version



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



=head2 ParameterGroupFamily => Str

The name of a specific parameter group family to return details for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEngineVersions in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

