
package Paws::MemoryDB::DescribeReservedNodesOfferings;
  use Moose;
  has Duration => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ReservedNodesOfferingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodesOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::DescribeReservedNodesOfferingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeReservedNodesOfferings - Arguments for method DescribeReservedNodesOfferings on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedNodesOfferings on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method DescribeReservedNodesOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedNodesOfferings.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $DescribeReservedNodesOfferingsResponse =
      $memory -db->DescribeReservedNodesOfferings(
      Duration                => 'MyString',    # OPTIONAL
      MaxResults              => 1,             # OPTIONAL
      NextToken               => 'MyString',    # OPTIONAL
      NodeType                => 'MyString',    # OPTIONAL
      OfferingType            => 'MyString',    # OPTIONAL
      ReservedNodesOfferingId => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeReservedNodesOfferingsResponse->NextToken;
    my $ReservedNodesOfferings =
      $DescribeReservedNodesOfferingsResponse->ReservedNodesOfferings;

   # Returns a L<Paws::MemoryDB::DescribeReservedNodesOfferingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/DescribeReservedNodesOfferings>

=head1 ATTRIBUTES


=head2 Duration => Str

Duration filter value, specified in years or seconds. Use this
parameter to show only reservations for a given duration.



=head2 MaxResults => Int

The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a marker is included
in the response so that the remaining results can be retrieved.



=head2 NextToken => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords.



=head2 NodeType => Str

The node type for the reserved nodes. For more information, see
Supported node types
(https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported).



=head2 OfferingType => Str

The offering type filter value. Use this parameter to show only the
available offerings matching the specified offering type. Valid values:
"All Upfront"|"Partial Upfront"| "No Upfront"



=head2 ReservedNodesOfferingId => Str

The offering identifier filter value. Use this parameter to show only
the available offering that matches the specified reservation
identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedNodesOfferings in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

