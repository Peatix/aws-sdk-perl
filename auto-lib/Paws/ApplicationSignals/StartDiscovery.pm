
package Paws::ApplicationSignals::StartDiscovery;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDiscovery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/start-discovery');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::StartDiscoveryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::StartDiscovery - Arguments for method StartDiscovery on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDiscovery on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method StartDiscovery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDiscovery.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $StartDiscoveryOutput = $application -signals->StartDiscovery();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/StartDiscovery>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDiscovery in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

