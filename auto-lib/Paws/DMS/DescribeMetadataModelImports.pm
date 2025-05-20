
package Paws::DMS::DescribeMetadataModelImports;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMetadataModelImports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeMetadataModelImportsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeMetadataModelImports - Arguments for method DescribeMetadataModelImports on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMetadataModelImports on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeMetadataModelImports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMetadataModelImports.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeMetadataModelImportsResponse =
      $dms->DescribeMetadataModelImports(
      MigrationProjectIdentifier => 'MyMigrationProjectIdentifier',
      Filters                    => [
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
    my $Marker   = $DescribeMetadataModelImportsResponse->Marker;
    my $Requests = $DescribeMetadataModelImportsResponse->Requests;

    # Returns a L<Paws::DMS::DescribeMetadataModelImportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeMetadataModelImports>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

Filters applied to the metadata model imports described in the form of
key-value pairs.



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

A paginated list of metadata model imports.



=head2 B<REQUIRED> MigrationProjectIdentifier => Str

The migration project name or Amazon Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMetadataModelImports in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

