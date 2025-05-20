
package Paws::Proton::CreateComponent;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentName' );
  has Manifest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'manifest' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ServiceInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceInstanceName' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' );
  has ServiceSpec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceSpec' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TemplateFile => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateFile' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateComponentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateComponent - Arguments for method CreateComponent on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComponent on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComponent.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateComponentOutput = $proton->CreateComponent(
      Manifest            => 'MyTemplateManifestContents',
      Name                => 'MyResourceName',
      TemplateFile        => 'MyTemplateFileContents',
      ClientToken         => 'MyClientToken',                # OPTIONAL
      Description         => 'MyDescription',                # OPTIONAL
      EnvironmentName     => 'MyResourceName',               # OPTIONAL
      ServiceInstanceName => 'MyResourceName',               # OPTIONAL
      ServiceName         => 'MyResourceName',               # OPTIONAL
      ServiceSpec         => 'MySpecContents',               # OPTIONAL
      Tags                => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Component = $CreateComponentOutput->Component;

    # Returns a L<Paws::Proton::CreateComponentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateComponent>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token for the created component.



=head2 Description => Str

An optional customer-provided description of the component.



=head2 EnvironmentName => Str

The name of the Proton environment that you want to associate this
component with. You must specify this when you don't specify
C<serviceInstanceName> and C<serviceName>.



=head2 B<REQUIRED> Manifest => Str

A path to a manifest file that lists the Infrastructure as Code (IaC)
file, template language, and rendering engine for infrastructure that a
custom component provisions.



=head2 B<REQUIRED> Name => Str

The customer-provided name of the component.



=head2 ServiceInstanceName => Str

The name of the service instance that you want to attach this component
to. If you don't specify this, the component isn't attached to any
service instance. Specify both C<serviceInstanceName> and
C<serviceName> or neither of them.



=head2 ServiceName => Str

The name of the service that C<serviceInstanceName> is associated with.
If you don't specify this, the component isn't attached to any service
instance. Specify both C<serviceInstanceName> and C<serviceName> or
neither of them.



=head2 ServiceSpec => Str

The service spec that you want the component to use to access service
inputs. Set this only when you attach the component to a service
instance.



=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

An optional list of metadata items that you can associate with the
Proton component. A tag is a key-value pair.

For more information, see Proton resources and tagging
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
the I<Proton User Guide>.



=head2 B<REQUIRED> TemplateFile => Str

A path to the Infrastructure as Code (IaC) file describing
infrastructure that a custom component provisions.

Components support a single IaC file, even if you use Terraform as your
template language.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComponent in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

