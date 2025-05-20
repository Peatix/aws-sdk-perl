
package Paws::ControlTower::GetBaselineOperation;
  use Moose;
  has OperationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBaselineOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-baseline-operation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::GetBaselineOperationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetBaselineOperation - Arguments for method GetBaselineOperation on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBaselineOperation on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method GetBaselineOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBaselineOperation.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $GetBaselineOperationOutput = $controltower->GetBaselineOperation(
      OperationIdentifier => 'MyOperationIdentifier',

    );

    # Results:
    my $BaselineOperation = $GetBaselineOperationOutput->BaselineOperation;

    # Returns a L<Paws::ControlTower::GetBaselineOperationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/GetBaselineOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationIdentifier => Str

The operation ID returned from mutating asynchronous APIs (Enable,
Disable, Update, Reset).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBaselineOperation in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

