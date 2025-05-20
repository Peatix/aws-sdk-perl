
package Paws::ControlTower::EnableControl;
  use Moose;
  has ControlIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'controlIdentifier', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::EnabledControlParameter]', traits => ['NameInRequest'], request_name => 'parameters');
  has Tags => (is => 'ro', isa => 'Paws::ControlTower::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TargetIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/enable-control');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::EnableControlOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::EnableControl - Arguments for method EnableControl on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableControl on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method EnableControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableControl.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $EnableControlOutput = $controltower->EnableControl(
      ControlIdentifier => 'MyControlIdentifier',
      TargetIdentifier  => 'MyTargetIdentifier',
      Parameters        => [
        {
          Key   => 'MyString',
          Value => {

          },

        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                 = $EnableControlOutput->Arn;
    my $OperationIdentifier = $EnableControlOutput->OperationIdentifier;

    # Returns a L<Paws::ControlTower::EnableControlOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/EnableControl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ControlIdentifier => Str

The ARN of the control. Only B<Strongly recommended> and B<Elective>
controls are permitted, with the exception of the B<Region deny>
control. For information on how to find the C<controlIdentifier>, see
the overview page
(https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html).



=head2 Parameters => ArrayRef[L<Paws::ControlTower::EnabledControlParameter>]

A list of input parameter values, which are specified to configure the
control when you enable it.



=head2 Tags => L<Paws::ControlTower::TagMap>

Tags to be applied to the C<EnabledControl> resource.



=head2 B<REQUIRED> TargetIdentifier => Str

The ARN of the organizational unit. For information on how to find the
C<targetIdentifier>, see the overview page
(https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableControl in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

