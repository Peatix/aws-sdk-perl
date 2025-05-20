
package Paws::Datasync::DescribeLocationFsxLustre;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocationFsxLustre');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeLocationFsxLustreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationFsxLustre - Arguments for method DescribeLocationFsxLustre on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocationFsxLustre on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeLocationFsxLustre.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocationFsxLustre.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeLocationFsxLustreResponse =
      $datasync->DescribeLocationFsxLustre(
      LocationArn => 'MyLocationArn',

      );

    # Results:
    my $CreationTime = $DescribeLocationFsxLustreResponse->CreationTime;
    my $LocationArn  = $DescribeLocationFsxLustreResponse->LocationArn;
    my $LocationUri  = $DescribeLocationFsxLustreResponse->LocationUri;
    my $SecurityGroupArns =
      $DescribeLocationFsxLustreResponse->SecurityGroupArns;

    # Returns a L<Paws::Datasync::DescribeLocationFsxLustreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeLocationFsxLustre>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the FSx for Lustre location to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocationFsxLustre in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

