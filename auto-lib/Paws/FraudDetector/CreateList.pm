
package Paws::FraudDetector::CreateList;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Elements => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'elements' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has VariableType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'variableType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::CreateListResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::CreateList - Arguments for method CreateList on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateList on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method CreateList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateList.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $CreateListResult = $frauddetector->CreateList(
      Name        => 'MynoDashIdentifier',
      Description => 'Mydescription',        # OPTIONAL
      Elements    => [
        'MyElements', ...                    # min: 1, max: 320
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MytagKey',      # min: 1, max: 128
          Value => 'MytagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VariableType => 'MyvariableType',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/CreateList>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the list.



=head2 Elements => ArrayRef[Str|Undef]

The names of the elements, if providing. You can also create an empty
list and add elements later using the UpdateList
(https://docs.aws.amazon.com/frauddetector/latest/api/API_Updatelist.html)
API.



=head2 B<REQUIRED> Name => Str

The name of the list.



=head2 Tags => ArrayRef[L<Paws::FraudDetector::Tag>]

A collection of the key and value pairs.



=head2 VariableType => Str

The variable type of the list. You can only assign the variable type
with String data type. For more information, see Variable types
(https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateList in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

