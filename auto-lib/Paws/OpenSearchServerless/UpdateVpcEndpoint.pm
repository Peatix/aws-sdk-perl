
package Paws::OpenSearchServerless::UpdateVpcEndpoint;
  use Moose;
  has AddSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'addSecurityGroupIds' );
  has AddSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'addSubnetIds' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has RemoveSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'removeSecurityGroupIds' );
  has RemoveSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'removeSubnetIds' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVpcEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::UpdateVpcEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateVpcEndpoint - Arguments for method UpdateVpcEndpoint on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVpcEndpoint on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method UpdateVpcEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVpcEndpoint.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $UpdateVpcEndpointResponse = $aoss->UpdateVpcEndpoint(
      Id                  => 'MyVpcEndpointId',
      AddSecurityGroupIds => [
        'MySecurityGroupId', ...    # min: 1, max: 128
      ],    # OPTIONAL
      AddSubnetIds => [
        'MySubnetId', ...    # min: 1, max: 32
      ],    # OPTIONAL
      ClientToken            => 'MyClientToken',    # OPTIONAL
      RemoveSecurityGroupIds => [
        'MySecurityGroupId', ...                    # min: 1, max: 128
      ],    # OPTIONAL
      RemoveSubnetIds => [
        'MySubnetId', ...    # min: 1, max: 32
      ],    # OPTIONAL
    );

    # Results:
    my $UpdateVpcEndpointDetail =
      $UpdateVpcEndpointResponse->UpdateVpcEndpointDetail;

    # Returns a L<Paws::OpenSearchServerless::UpdateVpcEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/UpdateVpcEndpoint>

=head1 ATTRIBUTES


=head2 AddSecurityGroupIds => ArrayRef[Str|Undef]

The unique identifiers of the security groups to add to the endpoint.
Security groups define the ports, protocols, and sources for inbound
traffic that you are authorizing into your endpoint.



=head2 AddSubnetIds => ArrayRef[Str|Undef]

The ID of one or more subnets to add to the endpoint.



=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 B<REQUIRED> Id => Str

The unique identifier of the interface endpoint to update.



=head2 RemoveSecurityGroupIds => ArrayRef[Str|Undef]

The unique identifiers of the security groups to remove from the
endpoint.



=head2 RemoveSubnetIds => ArrayRef[Str|Undef]

The unique identifiers of the subnets to remove from the endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVpcEndpoint in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

