
package Paws::KinesisAnalyticsV2::DescribeApplicationOperation;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationOperation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::DescribeApplicationOperationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DescribeApplicationOperation - Arguments for method DescribeApplicationOperation on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplicationOperation on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method DescribeApplicationOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplicationOperation.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $DescribeApplicationOperationResponse =
      $kinesisanalytics->DescribeApplicationOperation(
      ApplicationName => 'MyApplicationName',
      OperationId     => 'MyOperationId',

      );

    # Results:
    my $ApplicationOperationInfoDetails =
      $DescribeApplicationOperationResponse->ApplicationOperationInfoDetails;

# Returns a L<Paws::KinesisAnalyticsV2::DescribeApplicationOperationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DescribeApplicationOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str





=head2 B<REQUIRED> OperationId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplicationOperation in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

