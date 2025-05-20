
package Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorAttributes;
  use Moose;
  has AcceleratorArn => (is => 'ro', isa => 'Str', required => 1);
  has FlowLogsEnabled => (is => 'ro', isa => 'Bool');
  has FlowLogsS3Bucket => (is => 'ro', isa => 'Str');
  has FlowLogsS3Prefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomRoutingAcceleratorAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorAttributes - Arguments for method UpdateCustomRoutingAcceleratorAttributes on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomRoutingAcceleratorAttributes on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method UpdateCustomRoutingAcceleratorAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomRoutingAcceleratorAttributes.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $UpdateCustomRoutingAcceleratorAttributesResponse =
      $globalaccelerator->UpdateCustomRoutingAcceleratorAttributes(
      AcceleratorArn   => 'MyGenericString',
      FlowLogsEnabled  => 1,                    # OPTIONAL
      FlowLogsS3Bucket => 'MyGenericString',    # OPTIONAL
      FlowLogsS3Prefix => 'MyGenericString',    # OPTIONAL
      );

    # Results:
    my $AcceleratorAttributes =
      $UpdateCustomRoutingAcceleratorAttributesResponse->AcceleratorAttributes;

# Returns a L<Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/UpdateCustomRoutingAcceleratorAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceleratorArn => Str

The Amazon Resource Name (ARN) of the custom routing accelerator to
update attributes for.



=head2 FlowLogsEnabled => Bool

Update whether flow logs are enabled. The default value is false. If
the value is true, C<FlowLogsS3Bucket> and C<FlowLogsS3Prefix> must be
specified.

For more information, see Flow logs
(https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html)
in the I<Global Accelerator Developer Guide>.



=head2 FlowLogsS3Bucket => Str

The name of the Amazon S3 bucket for the flow logs. Attribute is
required if C<FlowLogsEnabled> is C<true>. The bucket must exist and
have a bucket policy that grants Global Accelerator permission to write
to the bucket.



=head2 FlowLogsS3Prefix => Str

Update the prefix for the location in the Amazon S3 bucket for the flow
logs. Attribute is required if C<FlowLogsEnabled> is C<true>.

If you donE<rsquo>t specify a prefix, the flow logs are stored in the
root of the bucket. If you specify slash (/) for the S3 bucket prefix,
the log file bucket folder structure will include a double slash (//),
like the following:

DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomRoutingAcceleratorAttributes in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

