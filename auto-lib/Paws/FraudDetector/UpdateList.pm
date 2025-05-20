
package Paws::FraudDetector::UpdateList;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Elements => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'elements' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has UpdateMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateMode' );
  has VariableType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'variableType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::UpdateListResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::UpdateList - Arguments for method UpdateList on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateList on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method UpdateList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateList.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $UpdateListResult = $frauddetector->UpdateList(
      Name        => 'MynoDashIdentifier',
      Description => 'Mydescription',        # OPTIONAL
      Elements    => [
        'MyElements', ...                    # min: 1, max: 320
      ],    # OPTIONAL
      UpdateMode   => 'REPLACE',           # OPTIONAL
      VariableType => 'MyvariableType',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/UpdateList>

=head1 ATTRIBUTES


=head2 Description => Str

The new description.



=head2 Elements => ArrayRef[Str|Undef]

One or more list elements to add or replace. If you are providing the
elements, make sure to specify the C<updateMode> to use.

If you are deleting all elements from the list, use C<REPLACE> for the
C<updateMode> and provide an empty list (0 elements).



=head2 B<REQUIRED> Name => Str

The name of the list to update.



=head2 UpdateMode => Str

The update mode (type).

=over

=item *

Use C<APPEND> if you are adding elements to the list.

=item *

Use C<REPLACE> if you replacing existing elements in the list.

=item *

Use C<REMOVE> if you are removing elements from the list.

=back


Valid values are: C<"REPLACE">, C<"APPEND">, C<"REMOVE">

=head2 VariableType => Str

The variable type you want to assign to the list.

You cannot update a variable type of a list that already has a variable
type assigned to it. You can assign a variable type to a list only if
the list does not already have a variable type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateList in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

