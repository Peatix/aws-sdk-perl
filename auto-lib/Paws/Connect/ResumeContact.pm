
package Paws::Connect::ResumeContact;
  use Moose;
  has ContactFlowId => (is => 'ro', isa => 'Str');
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResumeContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/resume');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ResumeContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ResumeContact - Arguments for method ResumeContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResumeContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ResumeContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResumeContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ResumeContactResponse = $connect->ResumeContact(
      ContactId     => 'MyContactId',
      InstanceId    => 'MyInstanceId',
      ContactFlowId => 'MyContactFlowId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ResumeContact>

=head1 ATTRIBUTES


=head2 ContactFlowId => Str

The identifier of the flow.



=head2 B<REQUIRED> ContactId => Str

The identifier of the contact.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
C<instanceId> in the ARN of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResumeContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

