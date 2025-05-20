
package Paws::ControlTower::GetControlOperation;
  use Moose;
  has OperationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetControlOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-control-operation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::GetControlOperationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetControlOperation - Arguments for method GetControlOperation on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetControlOperation on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method GetControlOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetControlOperation.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $GetControlOperationOutput = $controltower->GetControlOperation(
      OperationIdentifier => 'MyOperationIdentifier',

    );

    # Results:
    my $ControlOperation = $GetControlOperationOutput->ControlOperation;

    # Returns a L<Paws::ControlTower::GetControlOperationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/GetControlOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationIdentifier => Str

The ID of the asynchronous operation, which is used to track status.
The operation is available for 90 days.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetControlOperation in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

