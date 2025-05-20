
package Paws::Datasync::DescribeLocationFsxOntap;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocationFsxOntap');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeLocationFsxOntapResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationFsxOntap - Arguments for method DescribeLocationFsxOntap on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocationFsxOntap on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeLocationFsxOntap.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocationFsxOntap.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeLocationFsxOntapResponse = $datasync->DescribeLocationFsxOntap(
      LocationArn => 'MyLocationArn',

    );

    # Results:
    my $CreationTime     = $DescribeLocationFsxOntapResponse->CreationTime;
    my $FsxFilesystemArn = $DescribeLocationFsxOntapResponse->FsxFilesystemArn;
    my $LocationArn      = $DescribeLocationFsxOntapResponse->LocationArn;
    my $LocationUri      = $DescribeLocationFsxOntapResponse->LocationUri;
    my $Protocol         = $DescribeLocationFsxOntapResponse->Protocol;
    my $SecurityGroupArns =
      $DescribeLocationFsxOntapResponse->SecurityGroupArns;
    my $StorageVirtualMachineArn =
      $DescribeLocationFsxOntapResponse->StorageVirtualMachineArn;

    # Returns a L<Paws::Datasync::DescribeLocationFsxOntapResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeLocationFsxOntap>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP file
system location that you want information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocationFsxOntap in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

