
package Paws::Connect::DescribeContact;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contacts/{InstanceId}/{ContactId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribeContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeContact - Arguments for method DescribeContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeContactResponse = $connect->DescribeContact(
      ContactId  => 'MyContactId',
      InstanceId => 'MyInstanceId',

    );

    # Results:
    my $Contact = $DescribeContactResponse->Contact;

    # Returns a L<Paws::Connect::DescribeContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The identifier of the contact.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

