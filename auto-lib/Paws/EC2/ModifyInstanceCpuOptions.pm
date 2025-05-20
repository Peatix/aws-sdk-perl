
package Paws::EC2::ModifyInstanceCpuOptions;
  use Moose;
  has CoreCount => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ThreadsPerCore => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceCpuOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstanceCpuOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceCpuOptions - Arguments for method ModifyInstanceCpuOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceCpuOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceCpuOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceCpuOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstanceCpuOptionsResult = $ec2->ModifyInstanceCpuOptions(
      CoreCount      => 1,
      InstanceId     => 'MyInstanceId',
      ThreadsPerCore => 1,
      DryRun         => 1,                # OPTIONAL
    );

    # Results:
    my $CoreCount      = $ModifyInstanceCpuOptionsResult->CoreCount;
    my $InstanceId     = $ModifyInstanceCpuOptionsResult->InstanceId;
    my $ThreadsPerCore = $ModifyInstanceCpuOptionsResult->ThreadsPerCore;

    # Returns a L<Paws::EC2::ModifyInstanceCpuOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceCpuOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoreCount => Int

The number of CPU cores to activate for the specified instance.



=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance to update.



=head2 B<REQUIRED> ThreadsPerCore => Int

The number of threads to run for each CPU core.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceCpuOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

