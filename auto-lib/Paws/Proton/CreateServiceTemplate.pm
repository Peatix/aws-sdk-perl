
package Paws::Proton::CreateServiceTemplate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName' );
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has PipelineProvisioning => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineProvisioning' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateServiceTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateServiceTemplate - Arguments for method CreateServiceTemplate on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceTemplate on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateServiceTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceTemplate.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateServiceTemplateOutput = $proton->CreateServiceTemplate(
      Name                 => 'MyResourceName',
      Description          => 'MyDescription',       # OPTIONAL
      DisplayName          => 'MyDisplayName',       # OPTIONAL
      EncryptionKey        => 'MyArn',               # OPTIONAL
      PipelineProvisioning => 'CUSTOMER_MANAGED',    # OPTIONAL
      Tags                 => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ServiceTemplate = $CreateServiceTemplateOutput->ServiceTemplate;

    # Returns a L<Paws::Proton::CreateServiceTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateServiceTemplate>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the service template.



=head2 DisplayName => Str

The name of the service template as displayed in the developer
interface.



=head2 EncryptionKey => Str

A customer provided encryption key that's used to encrypt data.



=head2 B<REQUIRED> Name => Str

The name of the service template.



=head2 PipelineProvisioning => Str

By default, Proton provides a service pipeline for your service. When
this parameter is included, it indicates that an Proton service
pipeline I<isn't> provided for your service. After it's included, it
I<can't> be changed. For more information, see Template bundles
(https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles)
in the I<Proton User Guide>.

Valid values are: C<"CUSTOMER_MANAGED">

=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

An optional list of metadata items that you can associate with the
Proton service template. A tag is a key-value pair.

For more information, see Proton resources and tagging
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
the I<Proton User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceTemplate in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

