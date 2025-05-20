
package Paws::MemoryDB::CreateSubnetGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has SubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::CreateSubnetGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CreateSubnetGroup - Arguments for method CreateSubnetGroup on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubnetGroup on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method CreateSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubnetGroup.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $CreateSubnetGroupResponse = $memory -db->CreateSubnetGroup(
      SubnetGroupName => 'MyString',
      SubnetIds       => [ 'MyString', ... ],
      Description     => 'MyString',            # OPTIONAL
      Tags            => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                        # OPTIONAL
    );

    # Results:
    my $SubnetGroup = $CreateSubnetGroupResponse->SubnetGroup;

    # Returns a L<Paws::MemoryDB::CreateSubnetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/CreateSubnetGroup>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the subnet group.



=head2 B<REQUIRED> SubnetGroupName => Str

The name of the subnet group.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

A list of VPC subnet IDs for the subnet group.



=head2 Tags => ArrayRef[L<Paws::MemoryDB::Tag>]

A list of tags to be added to this resource. A tag is a key-value pair.
A tag key must be accompanied by a tag value, although null is
accepted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubnetGroup in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

