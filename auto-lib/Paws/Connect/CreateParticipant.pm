
package Paws::Connect::CreateParticipant;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ParticipantDetails => (is => 'ro', isa => 'Paws::Connect::ParticipantDetailsToAdd', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateParticipant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/create-participant');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateParticipantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateParticipant - Arguments for method CreateParticipant on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateParticipant on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateParticipant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateParticipant.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateParticipantResponse = $connect->CreateParticipant(
      ContactId          => 'MyContactId',
      InstanceId         => 'MyInstanceId',
      ParticipantDetails => {
        DisplayName     => 'MyDisplayName',    # min: 1, max: 256; OPTIONAL
        ParticipantRole => 'AGENT'
        ,    # values: AGENT, CUSTOMER, SYSTEM, CUSTOM_BOT, SUPERVISOR; OPTIONAL
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $ParticipantCredentials =
      $CreateParticipantResponse->ParticipantCredentials;
    my $ParticipantId = $CreateParticipantResponse->ParticipantId;

    # Returns a L<Paws::Connect::CreateParticipantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateParticipant>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> ContactId => Str

The identifier of the contact in this instance of Amazon Connect. Only
contacts in the CHAT channel are supported.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> ParticipantDetails => L<Paws::Connect::ParticipantDetailsToAdd>

Information identifying the participant.

The only Valid value for C<ParticipantRole> is C<CUSTOM_BOT>.

C<DisplayName> is B<Required>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateParticipant in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

