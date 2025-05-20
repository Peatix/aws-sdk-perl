
package Paws::Connect::DisassociateSecurityKey;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AssociationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateSecurityKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/security-key/{AssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DisassociateSecurityKey - Arguments for method DisassociateSecurityKey on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateSecurityKey on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DisassociateSecurityKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateSecurityKey.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->DisassociateSecurityKey(
      AssociationId => 'MyAssociationId',
      InstanceId    => 'MyInstanceId',
      ClientToken   => 'MyClientToken',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DisassociateSecurityKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The existing association identifier that uniquely identifies the
resource type and storage config for the given instance ID.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateSecurityKey in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

