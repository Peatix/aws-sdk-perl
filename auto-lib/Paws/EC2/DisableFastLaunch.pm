
package Paws::EC2::DisableFastLaunch;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Force => (is => 'ro', isa => 'Bool');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableFastLaunch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DisableFastLaunchResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableFastLaunch - Arguments for method DisableFastLaunch on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableFastLaunch on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DisableFastLaunch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableFastLaunch.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DisableFastLaunchResult = $ec2->DisableFastLaunch(
      ImageId => 'MyImageId',
      DryRun  => 1,             # OPTIONAL
      Force   => 1,             # OPTIONAL
    );

    # Results:
    my $ImageId               = $DisableFastLaunchResult->ImageId;
    my $LaunchTemplate        = $DisableFastLaunchResult->LaunchTemplate;
    my $MaxParallelLaunches   = $DisableFastLaunchResult->MaxParallelLaunches;
    my $OwnerId               = $DisableFastLaunchResult->OwnerId;
    my $ResourceType          = $DisableFastLaunchResult->ResourceType;
    my $SnapshotConfiguration = $DisableFastLaunchResult->SnapshotConfiguration;
    my $State                 = $DisableFastLaunchResult->State;
    my $StateTransitionReason = $DisableFastLaunchResult->StateTransitionReason;
    my $StateTransitionTime   = $DisableFastLaunchResult->StateTransitionTime;

    # Returns a L<Paws::EC2::DisableFastLaunchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DisableFastLaunch>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Force => Bool

Forces the image settings to turn off Windows fast launch for your
Windows AMI. This parameter overrides any errors that are encountered
while cleaning up resources in your account.



=head2 B<REQUIRED> ImageId => Str

Specify the ID of the image for which to disable Windows fast launch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableFastLaunch in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

