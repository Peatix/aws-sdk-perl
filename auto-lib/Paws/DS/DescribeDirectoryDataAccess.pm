
package Paws::DS::DescribeDirectoryDataAccess;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDirectoryDataAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeDirectoryDataAccessResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeDirectoryDataAccess - Arguments for method DescribeDirectoryDataAccess on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDirectoryDataAccess on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeDirectoryDataAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDirectoryDataAccess.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeDirectoryDataAccessResult = $ds->DescribeDirectoryDataAccess(
      DirectoryId => 'MyDirectoryId',

    );

    # Results:
    my $DataAccessStatus = $DescribeDirectoryDataAccessResult->DataAccessStatus;

    # Returns a L<Paws::DS::DescribeDirectoryDataAccessResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeDirectoryDataAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The directory identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDirectoryDataAccess in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

