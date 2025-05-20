
package Paws::ControlTower::UpdateEnabledBaseline;
  use Moose;
  has BaselineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baselineVersion', required => 1);
  has EnabledBaselineIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enabledBaselineIdentifier', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::EnabledBaselineParameter]', traits => ['NameInRequest'], request_name => 'parameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnabledBaseline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-enabled-baseline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::UpdateEnabledBaselineOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::UpdateEnabledBaseline - Arguments for method UpdateEnabledBaseline on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnabledBaseline on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method UpdateEnabledBaseline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnabledBaseline.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $UpdateEnabledBaselineOutput = $controltower->UpdateEnabledBaseline(
      BaselineVersion           => 'MyBaselineVersion',
      EnabledBaselineIdentifier => 'MyArn',
      Parameters                => [
        {
          Key   => 'MyString',
          Value => {

          },

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $OperationIdentifier = $UpdateEnabledBaselineOutput->OperationIdentifier;

    # Returns a L<Paws::ControlTower::UpdateEnabledBaselineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/UpdateEnabledBaseline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaselineVersion => Str

Specifies the new C<Baseline> version, to which the C<EnabledBaseline>
should be updated.



=head2 B<REQUIRED> EnabledBaselineIdentifier => Str

Specifies the C<EnabledBaseline> resource to be updated.



=head2 Parameters => ArrayRef[L<Paws::ControlTower::EnabledBaselineParameter>]

Parameters to apply when making an update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnabledBaseline in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

