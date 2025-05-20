
package Paws::ControlTower::UpdateEnabledControl;
  use Moose;
  has EnabledControlIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enabledControlIdentifier', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::EnabledControlParameter]', traits => ['NameInRequest'], request_name => 'parameters', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnabledControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-enabled-control');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::UpdateEnabledControlOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::UpdateEnabledControl - Arguments for method UpdateEnabledControl on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnabledControl on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method UpdateEnabledControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnabledControl.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $UpdateEnabledControlOutput = $controltower->UpdateEnabledControl(
      EnabledControlIdentifier => 'MyArn',
      Parameters               => [
        {
          Key   => 'MyString',
          Value => {

          },

        },
        ...
      ],

    );

    # Results:
    my $OperationIdentifier = $UpdateEnabledControlOutput->OperationIdentifier;

    # Returns a L<Paws::ControlTower::UpdateEnabledControlOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/UpdateEnabledControl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnabledControlIdentifier => Str

The ARN of the enabled control that will be updated.



=head2 B<REQUIRED> Parameters => ArrayRef[L<Paws::ControlTower::EnabledControlParameter>]

A key/value pair, where C<Key> is of type C<String> and C<Value> is of
type C<Document>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnabledControl in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

