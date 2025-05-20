
package Paws::MemoryDB::DescribeUsers;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::DescribeUsersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeUsers - Arguments for method DescribeUsers on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUsers on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method DescribeUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUsers.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $DescribeUsersResponse = $memory -db->DescribeUsers(
      Filters => [
        {
          Name   => 'MyFilterName',
          Values => [ 'MyFilterValue', ... ],    # min: 1

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'MyString',      # OPTIONAL
      UserName   => 'MyUserName',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeUsersResponse->NextToken;
    my $Users     = $DescribeUsersResponse->Users;

    # Returns a L<Paws::MemoryDB::DescribeUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/DescribeUsers>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::MemoryDB::Filter>]

Filter to determine the list of users to return.



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



=head2 UserName => Str

The name of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUsers in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

