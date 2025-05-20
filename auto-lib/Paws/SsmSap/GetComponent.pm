
package Paws::SsmSap::GetComponent;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has ComponentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-component');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::GetComponentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::GetComponent - Arguments for method GetComponent on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComponent on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method GetComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComponent.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $GetComponentOutput = $ssm -sap->GetComponent(
      ApplicationId => 'MyApplicationId',
      ComponentId   => 'MyComponentId',

    );

    # Results:
    my $Component = $GetComponentOutput->Component;
    my $Tags      = $GetComponentOutput->Tags;

    # Returns a L<Paws::SsmSap::GetComponentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/GetComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application.



=head2 B<REQUIRED> ComponentId => Str

The ID of the component.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComponent in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

