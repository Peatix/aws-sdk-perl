
package Paws::ControlTower::ResetEnabledControl;
  use Moose;
  has EnabledControlIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enabledControlIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetEnabledControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reset-enabled-control');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::ResetEnabledControlOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ResetEnabledControl - Arguments for method ResetEnabledControl on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetEnabledControl on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method ResetEnabledControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetEnabledControl.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $ResetEnabledControlOutput = $controltower->ResetEnabledControl(
      EnabledControlIdentifier => 'MyArn',

    );

    # Results:
    my $OperationIdentifier = $ResetEnabledControlOutput->OperationIdentifier;

    # Returns a L<Paws::ControlTower::ResetEnabledControlOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/ResetEnabledControl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnabledControlIdentifier => Str

The ARN of the enabled control to be reset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetEnabledControl in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

