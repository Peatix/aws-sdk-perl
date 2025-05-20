
package Paws::CleanRooms::GetIdMappingTable;
  use Moose;
  has IdMappingTableIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'idMappingTableIdentifier', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdMappingTable');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetIdMappingTableOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetIdMappingTable - Arguments for method GetIdMappingTable on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIdMappingTable on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetIdMappingTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIdMappingTable.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetIdMappingTableOutput = $cleanrooms->GetIdMappingTable(
      IdMappingTableIdentifier => 'MyUUID',
      MembershipIdentifier     => 'MyMembershipIdentifier',

    );

    # Results:
    my $IdMappingTable = $GetIdMappingTableOutput->IdMappingTable;

    # Returns a L<Paws::CleanRooms::GetIdMappingTableOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetIdMappingTable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdMappingTableIdentifier => Str

The unique identifier of the ID mapping table identifier that you want
to retrieve.



=head2 B<REQUIRED> MembershipIdentifier => Str

The unique identifier of the membership that contains the ID mapping
table that you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIdMappingTable in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

