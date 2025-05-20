
package Paws::Connect::UpdatePhoneNumber;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PhoneNumberId', required => 1);
  has TargetArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePhoneNumber');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-number/{PhoneNumberId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdatePhoneNumberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdatePhoneNumber - Arguments for method UpdatePhoneNumber on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePhoneNumber on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdatePhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePhoneNumber.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdatePhoneNumberResponse = $connect->UpdatePhoneNumber(
      PhoneNumberId => 'MyPhoneNumberId',
      ClientToken   => 'MyClientToken',     # OPTIONAL
      InstanceId    => 'MyInstanceId',      # OPTIONAL
      TargetArn     => 'MyARN',             # OPTIONAL
    );

    # Results:
    my $PhoneNumberArn = $UpdatePhoneNumberResponse->PhoneNumberArn;
    my $PhoneNumberId  = $UpdatePhoneNumberResponse->PhoneNumberId;

    # Returns a L<Paws::Connect::UpdatePhoneNumberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdatePhoneNumber>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 InstanceId => Str

The identifier of the Amazon Connect instance that phone numbers are
claimed to. You can find the instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance. You must enter
C<InstanceId> or C<TargetArn>.



=head2 B<REQUIRED> PhoneNumberId => Str

A unique identifier for the phone number.



=head2 TargetArn => Str

The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
distribution groups that phone number inbound traffic is routed
through. You must enter C<InstanceId> or C<TargetArn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePhoneNumber in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

