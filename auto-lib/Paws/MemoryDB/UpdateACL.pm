
package Paws::MemoryDB::UpdateACL;
  use Moose;
  has ACLName => (is => 'ro', isa => 'Str', required => 1);
  has UserNamesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserNamesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::UpdateACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateACL - Arguments for method UpdateACL on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateACL on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method UpdateACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateACL.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $UpdateACLResponse = $memory -db->UpdateACL(
      ACLName        => 'MyString',
      UserNamesToAdd => [
        'MyUserName', ...    # min: 1
      ],    # OPTIONAL
      UserNamesToRemove => [
        'MyUserName', ...    # min: 1
      ],    # OPTIONAL
    );

    # Results:
    my $ACL = $UpdateACLResponse->ACL;

    # Returns a L<Paws::MemoryDB::UpdateACLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/UpdateACL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ACLName => Str

The name of the Access Control List.



=head2 UserNamesToAdd => ArrayRef[Str|Undef]

The list of users to add to the Access Control List.



=head2 UserNamesToRemove => ArrayRef[Str|Undef]

The list of users to remove from the Access Control List.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateACL in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

