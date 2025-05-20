
package Paws::ControlCatalog::GetControl;
  use Moose;
  has ControlArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-control');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlCatalog::GetControlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlCatalog::GetControl - Arguments for method GetControl on L<Paws::ControlCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetControl on the
L<AWS Control Catalog|Paws::ControlCatalog> service. Use the attributes of this class
as arguments to method GetControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetControl.

=head1 SYNOPSIS

    my $controlcatalog = Paws->service('ControlCatalog');
    my $GetControlResponse = $controlcatalog->GetControl(
      ControlArn => 'MyControlArn',

    );

    # Results:
    my $Arn                 = $GetControlResponse->Arn;
    my $Behavior            = $GetControlResponse->Behavior;
    my $CreateTime          = $GetControlResponse->CreateTime;
    my $Description         = $GetControlResponse->Description;
    my $Implementation      = $GetControlResponse->Implementation;
    my $Name                = $GetControlResponse->Name;
    my $Parameters          = $GetControlResponse->Parameters;
    my $RegionConfiguration = $GetControlResponse->RegionConfiguration;
    my $Severity            = $GetControlResponse->Severity;

    # Returns a L<Paws::ControlCatalog::GetControlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlcatalog/GetControl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ControlArn => Str

The Amazon Resource Name (ARN) of the control. It has one of the
following formats:

I<Global format>

C<arn:{PARTITION}:controlcatalog:::control/{CONTROL_CATALOG_OPAQUE_ID}>

I<Or Regional format>

C<arn:{PARTITION}:controltower:{REGION}::control/{CONTROL_TOWER_OPAQUE_ID}>

Here is a more general pattern that covers Amazon Web Services Control
Tower and Control Catalog ARNs:

C<^arn:(aws(?:[-a-z]*)?):(controlcatalog|controltower):[a-zA-Z0-9-]*::control/[0-9a-zA-Z_\\-]+$>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetControl in L<Paws::ControlCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

