
package Paws::EC2::ModifyInstanceMaintenanceOptions;
  use Moose;
  has AutoRecovery => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceMaintenanceOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstanceMaintenanceOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceMaintenanceOptions - Arguments for method ModifyInstanceMaintenanceOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceMaintenanceOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceMaintenanceOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceMaintenanceOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstanceMaintenanceOptionsResult =
      $ec2->ModifyInstanceMaintenanceOptions(
      InstanceId   => 'MyInstanceId',
      AutoRecovery => 'disabled',       # OPTIONAL
      DryRun       => 1,                # OPTIONAL
      );

    # Results:
    my $AutoRecovery = $ModifyInstanceMaintenanceOptionsResult->AutoRecovery;
    my $InstanceId   = $ModifyInstanceMaintenanceOptionsResult->InstanceId;

    # Returns a L<Paws::EC2::ModifyInstanceMaintenanceOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceMaintenanceOptions>

=head1 ATTRIBUTES


=head2 AutoRecovery => Str

Disables the automatic recovery behavior of your instance or sets it to
default.

Valid values are: C<"disabled">, C<"default">

=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceMaintenanceOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

