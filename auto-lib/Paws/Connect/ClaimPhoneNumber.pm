
package Paws::Connect::ClaimPhoneNumber;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has PhoneNumberDescription => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');
  has TargetArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ClaimPhoneNumber');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-number/claim');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ClaimPhoneNumberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ClaimPhoneNumber - Arguments for method ClaimPhoneNumber on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ClaimPhoneNumber on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ClaimPhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ClaimPhoneNumber.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ClaimPhoneNumberResponse = $connect->ClaimPhoneNumber(
      PhoneNumber            => 'MyPhoneNumber',
      ClientToken            => 'MyClientToken',               # OPTIONAL
      InstanceId             => 'MyInstanceId',                # OPTIONAL
      PhoneNumberDescription => 'MyPhoneNumberDescription',    # OPTIONAL
      Tags                   => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TargetArn => 'MyARN',    # OPTIONAL
    );

    # Results:
    my $PhoneNumberArn = $ClaimPhoneNumberResponse->PhoneNumberArn;
    my $PhoneNumberId  = $ClaimPhoneNumberResponse->PhoneNumberId;

    # Returns a L<Paws::Connect::ClaimPhoneNumberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ClaimPhoneNumber>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).

Pattern:
C<^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$>



=head2 InstanceId => Str

The identifier of the Amazon Connect instance that phone numbers are
claimed to. You can find the instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance. You must enter
C<InstanceId> or C<TargetArn>.



=head2 B<REQUIRED> PhoneNumber => Str

The phone number you want to claim. Phone numbers are formatted C<[+]
[country code] [subscriber number including area code]>.



=head2 PhoneNumberDescription => Str

The description of the phone number.



=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.



=head2 TargetArn => Str

The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
distribution groups that phone number inbound traffic is routed
through. You must enter C<InstanceId> or C<TargetArn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ClaimPhoneNumber in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

