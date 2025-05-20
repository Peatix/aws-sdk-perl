
package Paws::EC2::PurchaseCapacityBlockExtension;
  use Moose;
  has CapacityBlockExtensionOfferingId => (is => 'ro', isa => 'Str', required => 1);
  has CapacityReservationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseCapacityBlockExtension');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::PurchaseCapacityBlockExtensionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseCapacityBlockExtension - Arguments for method PurchaseCapacityBlockExtension on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseCapacityBlockExtension on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method PurchaseCapacityBlockExtension.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseCapacityBlockExtension.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $PurchaseCapacityBlockExtensionResult =
      $ec2->PurchaseCapacityBlockExtension(
      CapacityBlockExtensionOfferingId => 'MyOfferingId',
      CapacityReservationId            => 'MyCapacityReservationId',
      DryRun                           => 1,                          # OPTIONAL
      );

    # Results:
    my $CapacityBlockExtensions =
      $PurchaseCapacityBlockExtensionResult->CapacityBlockExtensions;

    # Returns a L<Paws::EC2::PurchaseCapacityBlockExtensionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/PurchaseCapacityBlockExtension>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityBlockExtensionOfferingId => Str

The ID of the Capacity Block extension offering to purchase.



=head2 B<REQUIRED> CapacityReservationId => Str

The ID of the Capacity reservation to be extended.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseCapacityBlockExtension in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

