
package Paws::Datasync::DescribeDiscoveryJob;
  use Moose;
  has DiscoveryJobArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDiscoveryJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeDiscoveryJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeDiscoveryJob - Arguments for method DescribeDiscoveryJob on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDiscoveryJob on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeDiscoveryJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDiscoveryJob.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeDiscoveryJobResponse = $datasync->DescribeDiscoveryJob(
      DiscoveryJobArn => 'MyDiscoveryJobArn',

    );

    # Results:
    my $CollectionDurationMinutes =
      $DescribeDiscoveryJobResponse->CollectionDurationMinutes;
    my $DiscoveryJobArn  = $DescribeDiscoveryJobResponse->DiscoveryJobArn;
    my $JobEndTime       = $DescribeDiscoveryJobResponse->JobEndTime;
    my $JobStartTime     = $DescribeDiscoveryJobResponse->JobStartTime;
    my $Status           = $DescribeDiscoveryJobResponse->Status;
    my $StorageSystemArn = $DescribeDiscoveryJobResponse->StorageSystemArn;

    # Returns a L<Paws::Datasync::DescribeDiscoveryJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeDiscoveryJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiscoveryJobArn => Str

Specifies the Amazon Resource Name (ARN) of the discovery job that you
want information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDiscoveryJob in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

