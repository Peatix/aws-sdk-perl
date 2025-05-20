
package Paws::Proton::UpdateComponent;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has DeploymentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentType' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ServiceInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceInstanceName' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' );
  has ServiceSpec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceSpec' );
  has TemplateFile => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateFile' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::UpdateComponentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateComponent - Arguments for method UpdateComponent on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateComponent on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method UpdateComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateComponent.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $UpdateComponentOutput = $proton->UpdateComponent(
      DeploymentType      => 'NONE',
      Name                => 'MyResourceName',
      ClientToken         => 'MyClientToken',             # OPTIONAL
      Description         => 'MyDescription',             # OPTIONAL
      ServiceInstanceName => 'MyResourceNameOrEmpty',     # OPTIONAL
      ServiceName         => 'MyResourceNameOrEmpty',     # OPTIONAL
      ServiceSpec         => 'MySpecContents',            # OPTIONAL
      TemplateFile        => 'MyTemplateFileContents',    # OPTIONAL
    );

    # Results:
    my $Component = $UpdateComponentOutput->Component;

    # Returns a L<Paws::Proton::UpdateComponentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/UpdateComponent>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token for the updated component.



=head2 B<REQUIRED> DeploymentType => Str

The deployment type. It defines the mode for updating a component, as
follows:

=over

=item C<NONE>

In this mode, a deployment I<doesn't> occur. Only the requested
metadata parameters are updated. You can only specify C<description> in
this mode.

=item C<CURRENT_VERSION>

In this mode, the component is deployed and updated with the new
C<serviceSpec>, C<templateSource>, and/or C<type> that you provide.
Only requested parameters are updated.

=back


Valid values are: C<"NONE">, C<"CURRENT_VERSION">

=head2 Description => Str

An optional customer-provided description of the component.



=head2 B<REQUIRED> Name => Str

The name of the component to update.



=head2 ServiceInstanceName => Str

The name of the service instance that you want to attach this component
to. Don't specify to keep the component's current service instance
attachment. Specify an empty string to detach the component from the
service instance it's attached to. Specify non-empty values for both
C<serviceInstanceName> and C<serviceName> or for neither of them.



=head2 ServiceName => Str

The name of the service that C<serviceInstanceName> is associated with.
Don't specify to keep the component's current service instance
attachment. Specify an empty string to detach the component from the
service instance it's attached to. Specify non-empty values for both
C<serviceInstanceName> and C<serviceName> or for neither of them.



=head2 ServiceSpec => Str

The service spec that you want the component to use to access service
inputs. Set this only when the component is attached to a service
instance.



=head2 TemplateFile => Str

A path to the Infrastructure as Code (IaC) file describing
infrastructure that a custom component provisions.

Components support a single IaC file, even if you use Terraform as your
template language.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateComponent in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

