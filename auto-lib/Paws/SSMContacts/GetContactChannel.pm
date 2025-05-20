
package Paws::SSMContacts::GetContactChannel;
  use Moose;
  has ContactChannelId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContactChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::GetContactChannelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::GetContactChannel - Arguments for method GetContactChannel on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContactChannel on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method GetContactChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContactChannel.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    # To list the details of a contact channel
    # The following get-contact-channel example lists the details of a contact
    # channel.
    my $GetContactChannelResult =
      $ssm -
      contacts->GetContactChannel( 'ContactChannelId' =>
'arn:aws:ssm-contacts:us-east-2:111122223333:contact-channel/akuam/fc7405c4-46b2-48b7-87b2-93e2f225b90d'
      );

    # Results:
    my $ActivationStatus  = $GetContactChannelResult->ActivationStatus;
    my $ContactArn        = $GetContactChannelResult->ContactArn;
    my $ContactChannelArn = $GetContactChannelResult->ContactChannelArn;
    my $DeliveryAddress   = $GetContactChannelResult->DeliveryAddress;
    my $Name              = $GetContactChannelResult->Name;
    my $Type              = $GetContactChannelResult->Type;

    # Returns a L<Paws::SSMContacts::GetContactChannelResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/GetContactChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactChannelId => Str

The Amazon Resource Name (ARN) of the contact channel you want
information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContactChannel in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

