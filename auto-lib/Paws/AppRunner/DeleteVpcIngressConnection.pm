
package Paws::AppRunner::DeleteVpcIngressConnection;
  use Moose;
  has VpcIngressConnectionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpcIngressConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::DeleteVpcIngressConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DeleteVpcIngressConnection - Arguments for method DeleteVpcIngressConnection on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVpcIngressConnection on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method DeleteVpcIngressConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVpcIngressConnection.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $DeleteVpcIngressConnectionResponse =
      $apprunner->DeleteVpcIngressConnection(
      VpcIngressConnectionArn => 'MyAppRunnerResourceArn',

      );

    # Results:
    my $VpcIngressConnection =
      $DeleteVpcIngressConnectionResponse->VpcIngressConnection;

    # Returns a L<Paws::AppRunner::DeleteVpcIngressConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/DeleteVpcIngressConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcIngressConnectionArn => Str

The Amazon Resource Name (ARN) of the App Runner VPC Ingress Connection
that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVpcIngressConnection in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

