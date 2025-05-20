
package Paws::AppRunner::UpdateVpcIngressConnection;
  use Moose;
  has IngressVpcConfiguration => (is => 'ro', isa => 'Paws::AppRunner::IngressVpcConfiguration', required => 1);
  has VpcIngressConnectionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVpcIngressConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::UpdateVpcIngressConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::UpdateVpcIngressConnection - Arguments for method UpdateVpcIngressConnection on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVpcIngressConnection on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method UpdateVpcIngressConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVpcIngressConnection.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $UpdateVpcIngressConnectionResponse =
      $apprunner->UpdateVpcIngressConnection(
      IngressVpcConfiguration => {
        VpcEndpointId => 'MyString',    # max: 51200; OPTIONAL
        VpcId         => 'MyString',    # max: 51200; OPTIONAL
      },
      VpcIngressConnectionArn => 'MyAppRunnerResourceArn',

      );

    # Results:
    my $VpcIngressConnection =
      $UpdateVpcIngressConnectionResponse->VpcIngressConnection;

    # Returns a L<Paws::AppRunner::UpdateVpcIngressConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/UpdateVpcIngressConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IngressVpcConfiguration => L<Paws::AppRunner::IngressVpcConfiguration>

Specifications for the customerE<rsquo>s Amazon VPC and the related
Amazon Web Services PrivateLink VPC endpoint that are used to update
the VPC Ingress Connection resource.



=head2 B<REQUIRED> VpcIngressConnectionArn => Str

The Amazon Resource Name (Arn) for the App Runner VPC Ingress
Connection resource that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVpcIngressConnection in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

