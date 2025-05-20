
package Paws::SSMContacts::UpdateContact;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str');
  has Plan => (is => 'ro', isa => 'Paws::SSMContacts::Plan');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::UpdateContactResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::UpdateContact - Arguments for method UpdateContact on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContact on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method UpdateContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContact.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    # To update the engagement plan of contact
    # The following update-contact example updates the engagement plan of the
    # contact Akua to include the three types of contacts channels. This is done
    # after creating contact channels for Akua.
    my $UpdateContactResult = $ssm -contacts->UpdateContact(
      'ContactId' =>
        'arn:aws:ssm-contacts:us-east-2:111122223333:contact/akuam',
      'Plan' => {
        'Stages' => [

          {
            'DurationInMinutes' => 5,
            'Targets'           => [

              {
                'ChannelTargetInfo' => {
                  'ContactChannelId' =>
'arn:aws:ssm-contacts:us-east-2:111122223333:contact-channel/akuam/beb25840-5ac8-4644-95cc-7a8de390fa65',
                  'RetryIntervalInMinutes' => 1
                }
              }
            ]
          },

          {
            'DurationInMinutes' => 5,
            'Targets'           => [

              {
                'ChannelTargetInfo' => {
                  'ContactChannelId' =>
'arn:aws:ssm-contacts:us-east-2:111122223333:contact-channel/akuam/49f3c24d-5f9f-4638-ae25-3f49e04229ad',
                  'RetryIntervalInMinutes' => 1
                }
              }
            ]
          },

          {
            'DurationInMinutes' => 5,
            'Targets'           => [

              {
                'ChannelTargetInfo' => {
                  'ContactChannelId' =>
'arn:aws:ssm-contacts:us-east-2:111122223333:contact-channel/akuam/77d4f447-f619-4954-afff-85551e369c2a',
                  'RetryIntervalInMinutes' => 1
                }
              }
            ]
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/UpdateContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The Amazon Resource Name (ARN) of the contact or escalation plan you're
updating.



=head2 DisplayName => Str

The full name of the contact or escalation plan.



=head2 Plan => L<Paws::SSMContacts::Plan>

A list of stages. A contact has an engagement plan with stages for
specified contact channels. An escalation plan uses these stages to
contact specified contacts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContact in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

