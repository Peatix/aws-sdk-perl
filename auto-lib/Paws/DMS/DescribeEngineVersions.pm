
package Paws::DMS::DescribeEngineVersions;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeEngineVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEngineVersions - Arguments for method DescribeEngineVersions on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEngineVersions on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeEngineVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEngineVersions.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeEngineVersionsResponse = $dms->DescribeEngineVersions(
      Marker     => 'MyString',    # OPTIONAL
      MaxRecords => 1,             # OPTIONAL
    );

    # Results:
    my $EngineVersions = $DescribeEngineVersionsResponse->EngineVersions;
    my $Marker         = $DescribeEngineVersionsResponse->Marker;

    # Returns a L<Paws::DMS::DescribeEngineVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeEngineVersions>

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEngineVersions in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

