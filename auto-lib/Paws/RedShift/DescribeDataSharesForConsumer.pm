
package Paws::RedShift::DescribeDataSharesForConsumer;
  use Moose;
  has ConsumerArn => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataSharesForConsumer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DescribeDataSharesForConsumerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDataSharesForConsumerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeDataSharesForConsumer - Arguments for method DescribeDataSharesForConsumer on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataSharesForConsumer on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeDataSharesForConsumer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataSharesForConsumer.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DescribeDataSharesForConsumerResult =
      $redshift->DescribeDataSharesForConsumer(
      ConsumerArn => 'MyString',    # OPTIONAL
      Marker      => 'MyString',    # OPTIONAL
      MaxRecords  => 1,             # OPTIONAL
      Status      => 'ACTIVE',      # OPTIONAL
      );

    # Results:
    my $DataShares = $DescribeDataSharesForConsumerResult->DataShares;
    my $Marker     = $DescribeDataSharesForConsumerResult->Marker;

    # Returns a L<Paws::RedShift::DescribeDataSharesForConsumerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeDataSharesForConsumer>

=head1 ATTRIBUTES


=head2 ConsumerArn => Str

The Amazon Resource Name (ARN) of the consumer namespace that returns
in the list of datashares.



=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a
DescribeDataSharesForConsumer request exceed the value specified in
C<MaxRecords>, Amazon Web Services returns a value in the C<Marker>
field of the response. You can retrieve the next set of response
records by providing the returned marker value in the C<Marker>
parameter and retrying the request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.



=head2 Status => Str

An identifier giving the status of a datashare in the consumer cluster.
If this field is specified, Amazon Redshift returns the list of
datashares that have the specified status.

Valid values are: C<"ACTIVE">, C<"AVAILABLE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataSharesForConsumer in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

