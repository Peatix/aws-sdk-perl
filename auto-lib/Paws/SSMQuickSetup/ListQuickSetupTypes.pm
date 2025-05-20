
package Paws::SSMQuickSetup::ListQuickSetupTypes;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQuickSetupTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listQuickSetupTypes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMQuickSetup::ListQuickSetupTypesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::ListQuickSetupTypes - Arguments for method ListQuickSetupTypes on L<Paws::SSMQuickSetup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQuickSetupTypes on the
L<AWS Systems Manager QuickSetup|Paws::SSMQuickSetup> service. Use the attributes of this class
as arguments to method ListQuickSetupTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQuickSetupTypes.

=head1 SYNOPSIS

    my $ssm-quicksetup = Paws->service('SSMQuickSetup');
    my $ListQuickSetupTypesOutput = $ssm -quicksetup->ListQuickSetupTypes();

    # Results:
    my $QuickSetupTypeList = $ListQuickSetupTypesOutput->QuickSetupTypeList;

    # Returns a L<Paws::SSMQuickSetup::ListQuickSetupTypesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup/ListQuickSetupTypes>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQuickSetupTypes in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

