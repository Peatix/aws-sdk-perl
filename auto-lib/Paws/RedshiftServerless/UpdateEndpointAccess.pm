
package Paws::RedshiftServerless::UpdateEndpointAccess;
  use Moose;
  has EndpointName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpointName' , required => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSecurityGroupIds' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEndpointAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::UpdateEndpointAccessResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::UpdateEndpointAccess - Arguments for method UpdateEndpointAccess on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEndpointAccess on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method UpdateEndpointAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEndpointAccess.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $UpdateEndpointAccessResponse =
      $redshift -serverless->UpdateEndpointAccess(
      EndpointName        => 'MyString',
      VpcSecurityGroupIds => [ 'MyVpcSecurityGroupId', ... ],    # OPTIONAL
      );

    # Results:
    my $Endpoint = $UpdateEndpointAccessResponse->Endpoint;

   # Returns a L<Paws::RedshiftServerless::UpdateEndpointAccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/UpdateEndpointAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointName => Str

The name of the VPC endpoint to update.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

The list of VPC security groups associated with the endpoint after the
endpoint is modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEndpointAccess in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

