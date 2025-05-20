
package Paws::MemoryDB::PurchaseReservedNodesOffering;
  use Moose;
  has NodeCount => (is => 'ro', isa => 'Int');
  has ReservationId => (is => 'ro', isa => 'Str');
  has ReservedNodesOfferingId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodesOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::PurchaseReservedNodesOfferingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::PurchaseReservedNodesOffering - Arguments for method PurchaseReservedNodesOffering on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseReservedNodesOffering on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method PurchaseReservedNodesOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseReservedNodesOffering.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $PurchaseReservedNodesOfferingResponse =
      $memory -db->PurchaseReservedNodesOffering(
      ReservedNodesOfferingId => 'MyString',
      NodeCount               => 1,             # OPTIONAL
      ReservationId           => 'MyString',    # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                        # OPTIONAL
      );

    # Results:
    my $ReservedNode = $PurchaseReservedNodesOfferingResponse->ReservedNode;

    # Returns a L<Paws::MemoryDB::PurchaseReservedNodesOfferingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/PurchaseReservedNodesOffering>

=head1 ATTRIBUTES


=head2 NodeCount => Int

The number of node instances to reserve.



=head2 ReservationId => Str

A customer-specified identifier to track this reservation.



=head2 B<REQUIRED> ReservedNodesOfferingId => Str

The ID of the reserved node offering to purchase.



=head2 Tags => ArrayRef[L<Paws::MemoryDB::Tag>]

A list of tags to be added to this resource. A tag is a key-value pair.
A tag key must be accompanied by a tag value, although null is
accepted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseReservedNodesOffering in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

