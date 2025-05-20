
package Paws::MemoryDB::ResetParameterGroup;
  use Moose;
  has AllParameters => (is => 'ro', isa => 'Bool');
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::ResetParameterGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::ResetParameterGroup - Arguments for method ResetParameterGroup on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetParameterGroup on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method ResetParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetParameterGroup.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $ResetParameterGroupResponse = $memory -db->ResetParameterGroup(
      ParameterGroupName => 'MyString',
      AllParameters      => 1,                      # OPTIONAL
      ParameterNames     => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $ParameterGroup = $ResetParameterGroupResponse->ParameterGroup;

    # Returns a L<Paws::MemoryDB::ResetParameterGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/ResetParameterGroup>

=head1 ATTRIBUTES


=head2 AllParameters => Bool

If true, all parameters in the parameter group are reset to their
default values. If false, only the parameters listed by ParameterNames
are reset to their default values.



=head2 B<REQUIRED> ParameterGroupName => Str

The name of the parameter group to reset.



=head2 ParameterNames => ArrayRef[Str|Undef]

An array of parameter names to reset to their default values. If
AllParameters is true, do not use ParameterNames. If AllParameters is
false, you must specify the name of at least one parameter to reset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetParameterGroup in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

