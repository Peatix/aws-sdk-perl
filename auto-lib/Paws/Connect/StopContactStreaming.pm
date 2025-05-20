
package Paws::Connect::StopContactStreaming;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has StreamingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopContactStreaming');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/stop-streaming');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StopContactStreamingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StopContactStreaming - Arguments for method StopContactStreaming on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopContactStreaming on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StopContactStreaming.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopContactStreaming.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StopContactStreamingResponse = $connect->StopContactStreaming(
      ContactId   => 'MyContactId',
      InstanceId  => 'MyInstanceId',
      StreamingId => 'MyStreamingId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StopContactStreaming>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The identifier of the contact. This is the identifier of the contact
that is associated with the first interaction with the contact center.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> StreamingId => Str

The identifier of the streaming configuration enabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopContactStreaming in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

