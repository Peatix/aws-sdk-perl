
package Paws::RedshiftServerless::GetReservationOffering;
  use Moose;
  has OfferingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReservationOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::GetReservationOfferingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetReservationOffering - Arguments for method GetReservationOffering on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReservationOffering on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method GetReservationOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReservationOffering.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $GetReservationOfferingResponse =
      $redshift -serverless->GetReservationOffering(
      OfferingId => 'MyGetReservationOfferingRequestOfferingIdString',

      );

    # Results:
    my $ReservationOffering =
      $GetReservationOfferingResponse->ReservationOffering;

 # Returns a L<Paws::RedshiftServerless::GetReservationOfferingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/GetReservationOffering>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OfferingId => Str

The identifier for the offering..




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReservationOffering in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

