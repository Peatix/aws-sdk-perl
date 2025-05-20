
package Paws::IoT::PutVerificationStateOnViolation;
  use Moose;
  has VerificationState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'verificationState', required => 1);
  has VerificationStateDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'verificationStateDescription');
  has ViolationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'violationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutVerificationStateOnViolation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/violations/verification-state/{violationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::PutVerificationStateOnViolationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::PutVerificationStateOnViolation - Arguments for method PutVerificationStateOnViolation on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutVerificationStateOnViolation on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method PutVerificationStateOnViolation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutVerificationStateOnViolation.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $PutVerificationStateOnViolationResponse =
      $iot->PutVerificationStateOnViolation(
      VerificationState            => 'FALSE_POSITIVE',
      ViolationId                  => 'MyViolationId',
      VerificationStateDescription =>
        'MyVerificationStateDescription',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/PutVerificationStateOnViolation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VerificationState => Str

The verification state of the violation.

Valid values are: C<"FALSE_POSITIVE">, C<"BENIGN_POSITIVE">, C<"TRUE_POSITIVE">, C<"UNKNOWN">

=head2 VerificationStateDescription => Str

The description of the verification state of the violation (detect
alarm).



=head2 B<REQUIRED> ViolationId => Str

The violation ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutVerificationStateOnViolation in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

