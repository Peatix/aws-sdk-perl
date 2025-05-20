
package Paws::Resiliencehub::UpdateAppVersionAppComponent;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Paws::Resiliencehub::AdditionalInfoMap', traits => ['NameInRequest'], request_name => 'additionalInfo');
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAppVersionAppComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-app-version-app-component');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::UpdateAppVersionAppComponentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::UpdateAppVersionAppComponent - Arguments for method UpdateAppVersionAppComponent on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAppVersionAppComponent on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method UpdateAppVersionAppComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAppVersionAppComponent.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $UpdateAppVersionAppComponentResponse =
      $resiliencehub->UpdateAppVersionAppComponent(
      AppArn         => 'MyArn',
      Id             => 'MyString255',
      AdditionalInfo => {
        'MyString128WithoutWhitespace' => [
          'MyString1024', ...    # min: 1, max: 1024
        ],    # , value: min: 1, max: 10
      },    # OPTIONAL
      Name => 'MyString255',    # OPTIONAL
      Type => 'MyString255',    # OPTIONAL
      );

    # Results:
    my $AppArn       = $UpdateAppVersionAppComponentResponse->AppArn;
    my $AppComponent = $UpdateAppVersionAppComponentResponse->AppComponent;
    my $AppVersion   = $UpdateAppVersionAppComponentResponse->AppVersion;

# Returns a L<Paws::Resiliencehub::UpdateAppVersionAppComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/UpdateAppVersionAppComponent>

=head1 ATTRIBUTES


=head2 AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>

Currently, there is no supported additional information for Application
Components.



=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> Id => Str

Identifier of the Application Component.



=head2 Name => Str

Name of the Application Component.



=head2 Type => Str

Type of Application Component. For more information about the types of
Application Component, see Grouping resources in an AppComponent
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAppVersionAppComponent in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

