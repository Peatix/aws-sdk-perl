
package Paws::Connect::TagContact;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::ContactTagMap', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/tags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::TagContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::TagContact - Arguments for method TagContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method TagContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $TagContactResponse = $connect->TagContact(
      ContactId  => 'MyContactId',
      InstanceId => 'MyInstanceId',
      Tags       => {
        'MyContactTagKey' =>
          'MyContactTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/TagContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The identifier of the contact in this instance of Amazon Connect.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Tags => L<Paws::Connect::ContactTagMap>

The tags to be assigned to the contact resource. For example, { "Tags":
{"key1":"value1", "key2":"value2"} }.

Authorization is not supported by this tag.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

