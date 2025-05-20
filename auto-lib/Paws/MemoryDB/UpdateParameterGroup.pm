
package Paws::MemoryDB::UpdateParameterGroup;
  use Moose;
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::ParameterNameValue]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::UpdateParameterGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateParameterGroup - Arguments for method UpdateParameterGroup on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateParameterGroup on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method UpdateParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateParameterGroup.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $UpdateParameterGroupResponse = $memory -db->UpdateParameterGroup(
      ParameterGroupName  => 'MyString',
      ParameterNameValues => [
        {
          ParameterName  => 'MyString',
          ParameterValue => 'MyString',
        },
        ...
      ],

    );

    # Results:
    my $ParameterGroup = $UpdateParameterGroupResponse->ParameterGroup;

    # Returns a L<Paws::MemoryDB::UpdateParameterGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/UpdateParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterGroupName => Str

The name of the parameter group to update.



=head2 B<REQUIRED> ParameterNameValues => ArrayRef[L<Paws::MemoryDB::ParameterNameValue>]

An array of parameter names and values for the parameter update. You
must supply at least one parameter name and value; subsequent arguments
are optional. A maximum of 20 parameters may be updated per request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateParameterGroup in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

