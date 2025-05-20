
package Paws::AppRunner::CreateVpcIngressConnection;
  use Moose;
  has IngressVpcConfiguration => (is => 'ro', isa => 'Paws::AppRunner::IngressVpcConfiguration', required => 1);
  has ServiceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::Tag]');
  has VpcIngressConnectionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcIngressConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::CreateVpcIngressConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::CreateVpcIngressConnection - Arguments for method CreateVpcIngressConnection on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcIngressConnection on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method CreateVpcIngressConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcIngressConnection.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $CreateVpcIngressConnectionResponse =
      $apprunner->CreateVpcIngressConnection(
      IngressVpcConfiguration => {
        VpcEndpointId => 'MyString',    # max: 51200; OPTIONAL
        VpcId         => 'MyString',    # max: 51200; OPTIONAL
      },
      ServiceArn               => 'MyAppRunnerResourceArn',
      VpcIngressConnectionName => 'MyVpcIngressConnectionName',
      Tags                     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $VpcIngressConnection =
      $CreateVpcIngressConnectionResponse->VpcIngressConnection;

    # Returns a L<Paws::AppRunner::CreateVpcIngressConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/CreateVpcIngressConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IngressVpcConfiguration => L<Paws::AppRunner::IngressVpcConfiguration>

Specifications for the customerE<rsquo>s Amazon VPC and the related
Amazon Web Services PrivateLink VPC endpoint that are used to create
the VPC Ingress Connection resource.



=head2 B<REQUIRED> ServiceArn => Str

The Amazon Resource Name (ARN) for this App Runner service that is used
to create the VPC Ingress Connection resource.



=head2 Tags => ArrayRef[L<Paws::AppRunner::Tag>]

An optional list of metadata items that you can associate with the VPC
Ingress Connection resource. A tag is a key-value pair.



=head2 B<REQUIRED> VpcIngressConnectionName => Str

A name for the VPC Ingress Connection resource. It must be unique
across all the active VPC Ingress Connections in your Amazon Web
Services account in the Amazon Web Services Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcIngressConnection in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

