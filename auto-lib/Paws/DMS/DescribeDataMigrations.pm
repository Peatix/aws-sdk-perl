
package Paws::DMS::DescribeDataMigrations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has WithoutSettings => (is => 'ro', isa => 'Bool');
  has WithoutStatistics => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataMigrations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeDataMigrationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeDataMigrations - Arguments for method DescribeDataMigrations on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataMigrations on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeDataMigrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataMigrations.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeDataMigrationsResponse = $dms->DescribeDataMigrations(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      Marker            => 'MyMarker',    # OPTIONAL
      MaxRecords        => 1,             # OPTIONAL
      WithoutSettings   => 1,             # OPTIONAL
      WithoutStatistics => 1,             # OPTIONAL
    );

    # Results:
    my $DataMigrations = $DescribeDataMigrationsResponse->DataMigrations;
    my $Marker         = $DescribeDataMigrationsResponse->Marker;

    # Returns a L<Paws::DMS::DescribeDataMigrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeDataMigrations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

Filters applied to the data migrations.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.



=head2 WithoutSettings => Bool

An option to set to avoid returning information about settings. Use
this to reduce overhead when setting information is too large. To use
this option, choose C<true>; otherwise, choose C<false> (the default).



=head2 WithoutStatistics => Bool

An option to set to avoid returning information about statistics. Use
this to reduce overhead when statistics information is too large. To
use this option, choose C<true>; otherwise, choose C<false> (the
default).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataMigrations in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

