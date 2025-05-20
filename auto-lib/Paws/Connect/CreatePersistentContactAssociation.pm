
package Paws::Connect::CreatePersistentContactAssociation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has InitialContactId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InitialContactId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has RehydrationType => (is => 'ro', isa => 'Str', required => 1);
  has SourceContactId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePersistentContactAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/persistent-contact-association/{InstanceId}/{InitialContactId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreatePersistentContactAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreatePersistentContactAssociation - Arguments for method CreatePersistentContactAssociation on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePersistentContactAssociation on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreatePersistentContactAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePersistentContactAssociation.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreatePersistentContactAssociationResponse =
      $connect->CreatePersistentContactAssociation(
      InitialContactId => 'MyContactId',
      InstanceId       => 'MyInstanceId',
      RehydrationType  => 'ENTIRE_PAST_SESSION',
      SourceContactId  => 'MyContactId',
      ClientToken      => 'MyClientToken',         # OPTIONAL
      );

    # Results:
    my $ContinuedFromContactId =
      $CreatePersistentContactAssociationResponse->ContinuedFromContactId;

# Returns a L<Paws::Connect::CreatePersistentContactAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreatePersistentContactAssociation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> InitialContactId => Str

This is the contactId of the current contact that the
C<CreatePersistentContactAssociation> API is being called from.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> RehydrationType => Str

The contactId chosen for rehydration depends on the type chosen.

=over

=item *

C<ENTIRE_PAST_SESSION>: Rehydrates a chat from the most recently
terminated past chat contact of the specified past ended chat session.
To use this type, provide the C<initialContactId> of the past ended
chat session in the C<sourceContactId> field. In this type, Amazon
Connect determines what the most recent chat contact on the past ended
chat session and uses it to start a persistent chat.

=item *

C<FROM_SEGMENT>: Rehydrates a chat from the specified past chat contact
provided in the C<sourceContactId> field.

=back

The actual contactId used for rehydration is provided in the response
of this API.

To illustrate how to use rehydration type, consider the following
example: A customer starts a chat session. Agent a1 accepts the chat
and a conversation starts between the customer and Agent a1. This first
contact creates a contact ID B<C1>. Agent a1 then transfers the chat to
Agent a2. This creates another contact ID B<C2>. At this point Agent a2
ends the chat. The customer is forwarded to the disconnect flow for a
post chat survey that creates another contact ID B<C3>. After the chat
survey, the chat session ends. Later, the customer returns and wants to
resume their past chat session. At this point, the customer can have
following use cases:

=over

=item *

B<Use Case 1>: The customer wants to continue the past chat session but
they want to hide the post chat survey. For this they will use the
following configuration:

=over

=item *

B<Configuration>

=over

=item *

SourceContactId = "C2"

=item *

RehydrationType = "FROM_SEGMENT"

=back

=item *

B<Expected behavior>

=over

=item *

This starts a persistent chat session from the specified past ended
contact (C2). Transcripts of past chat sessions C2 and C1 are
accessible in the current persistent chat session. Note that chat
segment C3 is dropped from the persistent chat session.

=back

=back

=item *

B<Use Case 2>: The customer wants to continue the past chat session and
see the transcript of the entire past engagement, including the post
chat survey. For this they will use the following configuration:

=over

=item *

B<Configuration>

=over

=item *

SourceContactId = "C1"

=item *

RehydrationType = "ENTIRE_PAST_SESSION"

=back

=item *

B<Expected behavior>

=over

=item *

This starts a persistent chat session from the most recently ended chat
contact (C3). Transcripts of past chat sessions C3, C2 and C1 are
accessible in the current persistent chat session.

=back

=back

=back


Valid values are: C<"ENTIRE_PAST_SESSION">, C<"FROM_SEGMENT">

=head2 B<REQUIRED> SourceContactId => Str

The contactId from which a persistent chat session must be started.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePersistentContactAssociation in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

