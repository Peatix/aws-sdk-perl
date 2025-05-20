
package Paws::RedshiftServerless::CreateReservation;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'capacity' , required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has OfferingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReservation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::CreateReservationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateReservation - Arguments for method CreateReservation on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReservation on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method CreateReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReservation.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $CreateReservationResponse = $redshift -serverless->CreateReservation(
      Capacity    => 1,
      OfferingId  => 'MyCreateReservationRequestOfferingIdString',
      ClientToken => 'MyString',                                     # OPTIONAL
    );

    # Results:
    my $Reservation = $CreateReservationResponse->Reservation;

    # Returns a L<Paws::RedshiftServerless::CreateReservationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/CreateReservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Capacity => Int

The number of Redshift Processing Units (RPUs) to reserve.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. This token must be a valid UUIDv4 value. For
more information about idempotency, see Making retries safe with
idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> OfferingId => Str

The ID of the offering associated with the reservation. The offering
determines the payment schedule for the reservation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReservation in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

