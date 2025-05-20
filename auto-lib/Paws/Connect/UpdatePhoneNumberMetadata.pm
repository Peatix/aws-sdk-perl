
package Paws::Connect::UpdatePhoneNumberMetadata;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has PhoneNumberDescription => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PhoneNumberId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePhoneNumberMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-number/{PhoneNumberId}/metadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdatePhoneNumberMetadata - Arguments for method UpdatePhoneNumberMetadata on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePhoneNumberMetadata on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdatePhoneNumberMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePhoneNumberMetadata.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdatePhoneNumberMetadata(
      PhoneNumberId          => 'MyPhoneNumberId',
      ClientToken            => 'MyClientToken',               # OPTIONAL
      PhoneNumberDescription => 'MyPhoneNumberDescription',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdatePhoneNumberMetadata>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 PhoneNumberDescription => Str

The description of the phone number.



=head2 B<REQUIRED> PhoneNumberId => Str

The Amazon Resource Name (ARN) or resource ID of the phone number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePhoneNumberMetadata in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

