
package Paws::Connect::TransferContact;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str', required => 1);
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has QueueId => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TransferContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/transfer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::TransferContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::TransferContact - Arguments for method TransferContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TransferContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method TransferContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TransferContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $TransferContactResponse = $connect->TransferContact(
      ContactFlowId => 'MyContactFlowId',
      ContactId     => 'MyContactId',
      InstanceId    => 'MyInstanceId',
      ClientToken   => 'MyClientToken',        # OPTIONAL
      QueueId       => 'MyQueueId',            # OPTIONAL
      UserId        => 'MyAgentResourceId',    # OPTIONAL
    );

    # Results:
    my $ContactArn = $TransferContactResponse->ContactArn;
    my $ContactId  = $TransferContactResponse->ContactId;

    # Returns a L<Paws::Connect::TransferContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/TransferContact>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the flow.



=head2 B<REQUIRED> ContactId => Str

The identifier of the contact in this instance of Amazon Connect.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 QueueId => Str

The identifier for the queue.



=head2 UserId => Str

The identifier for the user. This can be the ID or the ARN of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TransferContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

