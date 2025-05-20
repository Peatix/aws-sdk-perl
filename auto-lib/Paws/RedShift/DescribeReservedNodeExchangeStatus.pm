
package Paws::RedShift::DescribeReservedNodeExchangeStatus;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeExchangeRequestId => (is => 'ro', isa => 'Str');
  has ReservedNodeId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeExchangeStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DescribeReservedNodeExchangeStatusOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeExchangeStatusResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeReservedNodeExchangeStatus - Arguments for method DescribeReservedNodeExchangeStatus on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedNodeExchangeStatus on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeReservedNodeExchangeStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedNodeExchangeStatus.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DescribeReservedNodeExchangeStatusOutputMessage =
      $redshift->DescribeReservedNodeExchangeStatus(
      Marker                        => 'MyString',    # OPTIONAL
      MaxRecords                    => 1,             # OPTIONAL
      ReservedNodeExchangeRequestId => 'MyString',    # OPTIONAL
      ReservedNodeId                => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Marker = $DescribeReservedNodeExchangeStatusOutputMessage->Marker;
    my $ReservedNodeExchangeStatusDetails =
      $DescribeReservedNodeExchangeStatusOutputMessage
      ->ReservedNodeExchangeStatusDetails;

# Returns a L<Paws::RedShift::DescribeReservedNodeExchangeStatusOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeReservedNodeExchangeStatus>

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeReservedNodeExchangeStatus> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by the C<MaxRecords> parameter. You can retrieve
the next set of response records by providing the returned marker value
in the C<Marker> parameter and retrying the request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<Marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.



=head2 ReservedNodeExchangeRequestId => Str

The identifier of the reserved-node exchange request.



=head2 ReservedNodeId => Str

The identifier of the source reserved node in a reserved-node exchange
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedNodeExchangeStatus in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

