
package Paws::RedShift::DescribeDataShares;
  use Moose;
  has DataShareArn => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataShares');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DescribeDataSharesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDataSharesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeDataShares - Arguments for method DescribeDataShares on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataShares on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeDataShares.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataShares.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DescribeDataSharesResult = $redshift->DescribeDataShares(
      DataShareArn => 'MyString',    # OPTIONAL
      Marker       => 'MyString',    # OPTIONAL
      MaxRecords   => 1,             # OPTIONAL
    );

    # Results:
    my $DataShares = $DescribeDataSharesResult->DataShares;
    my $Marker     = $DescribeDataSharesResult->Marker;

    # Returns a L<Paws::RedShift::DescribeDataSharesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeDataShares>

=head1 ATTRIBUTES


=head2 DataShareArn => Str

The Amazon resource name (ARN) of the datashare to describe details of.



=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a DescribeDataShares request
exceed the value specified in C<MaxRecords>, Amazon Web Services
returns a value in the C<Marker> field of the response. You can
retrieve the next set of response records by providing the returned
marker value in the C<Marker> parameter and retrying the request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataShares in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

