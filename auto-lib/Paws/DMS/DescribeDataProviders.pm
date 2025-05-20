
package Paws::DMS::DescribeDataProviders;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataProviders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeDataProvidersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeDataProviders - Arguments for method DescribeDataProviders on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataProviders on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeDataProviders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataProviders.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeDataProvidersResponse = $dms->DescribeDataProviders(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      Marker     => 'MyString',    # OPTIONAL
      MaxRecords => 1,             # OPTIONAL
    );

    # Results:
    my $DataProviders = $DescribeDataProvidersResponse->DataProviders;
    my $Marker        = $DescribeDataProvidersResponse->Marker;

    # Returns a L<Paws::DMS::DescribeDataProvidersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeDataProviders>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

Filters applied to the data providers described in the form of
key-value pairs.

Valid filter names and values: data-provider-identifier, data provider
arn or name



=head2 Marker => Str

Specifies the unique pagination token that makes it possible to display
the next page of results. If this parameter is specified, the response
includes only records beyond the marker, up to the value specified by
C<MaxRecords>.

If C<Marker> is returned by a previous response, there are more results
available. The value of C<Marker> is a unique pagination token for each
page. To retrieve the next page, make the call again using the returned
token and keeping all other arguments unchanged.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, DMS includes a
pagination token in the response so that you can retrieve the remaining
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataProviders in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

