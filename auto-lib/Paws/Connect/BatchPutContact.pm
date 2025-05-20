
package Paws::Connect::BatchPutContact;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactDataRequestList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ContactDataRequest]', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/batch/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::BatchPutContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::BatchPutContact - Arguments for method BatchPutContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method BatchPutContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $BatchPutContactResponse = $connect->BatchPutContact(
      ContactDataRequestList => [
        {
          Attributes => {
            'MyAttributeName' =>
              'MyAttributeValue',   # key: min: 1, max: 32767, value: max: 32767
          },    # OPTIONAL
          Campaign => {
            CampaignId => 'MyCampaignId',    # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
          CustomerEndpoint => {
            Address => 'MyEndpointAddress',    # max: 256; OPTIONAL
            Type    => 'TELEPHONE_NUMBER'
            , # values: TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS; OPTIONAL
          },    # OPTIONAL
          QueueId           => 'MyQueueId',              # OPTIONAL
          RequestIdentifier => 'MyRequestIdentifier',    # max: 80; OPTIONAL
          SystemEndpoint    => {
            Address => 'MyEndpointAddress',              # max: 256; OPTIONAL
            Type    => 'TELEPHONE_NUMBER'
            , # values: TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      InstanceId  => 'MyInstanceId',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $FailedRequestList     = $BatchPutContactResponse->FailedRequestList;
    my $SuccessfulRequestList = $BatchPutContactResponse->SuccessfulRequestList;

    # Returns a L<Paws::Connect::BatchPutContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/BatchPutContact>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> ContactDataRequestList => ArrayRef[L<Paws::Connect::ContactDataRequest>]

List of individual contact requests.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

