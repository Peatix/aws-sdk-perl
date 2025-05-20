
package Paws::Proton::CreateServiceInstance;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);
  has Spec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spec' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TemplateMajorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMajorVersion' );
  has TemplateMinorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateMinorVersion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateServiceInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateServiceInstance - Arguments for method CreateServiceInstance on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceInstance on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateServiceInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceInstance.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateServiceInstanceOutput = $proton->CreateServiceInstance(
      Name        => 'MyResourceName',
      ServiceName => 'MyResourceName',
      Spec        => 'MySpecContents',
      ClientToken => 'MyClientToken',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TemplateMajorVersion => 'MyTemplateVersionPart',    # OPTIONAL
      TemplateMinorVersion => 'MyTemplateVersionPart',    # OPTIONAL
    );

    # Results:
    my $ServiceInstance = $CreateServiceInstanceOutput->ServiceInstance;

    # Returns a L<Paws::Proton::CreateServiceInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateServiceInstance>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token of the service instance to create.



=head2 B<REQUIRED> Name => Str

The name of the service instance to create.



=head2 B<REQUIRED> ServiceName => Str

The name of the service the service instance is added to.



=head2 B<REQUIRED> Spec => Str

The spec for the service instance you want to create.



=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

An optional list of metadata items that you can associate with the
Proton service instance. A tag is a key-value pair.

For more information, see Proton resources and tagging
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
the I<Proton User Guide>.



=head2 TemplateMajorVersion => Str

To create a new major and minor version of the service template,
I<exclude> C<major Version>.



=head2 TemplateMinorVersion => Str

To create a new minor version of the service template, include a
C<major Version>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceInstance in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

