
package Paws::SSMContacts::TagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::TagResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::TagResource - Arguments for method TagResource on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
 # To tag a contact
 # The following tag-resource example tags a specified contact with the provided
 # tag key value pair.
    my $TagResourceResult = $ssm -contacts->TagResource(
      'ResourceARN' =>
        'arn:aws:ssm-contacts:us-east-1:111122223333:contact/akuam',
      'Tags' => [

        {
          'Key'   => 'group1',
          'Value' => 1
        }
      ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the contact or escalation plan.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::SSMContacts::Tag>]

A list of tags that you are adding to the contact or escalation plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

