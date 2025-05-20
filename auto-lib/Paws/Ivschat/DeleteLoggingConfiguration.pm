
package Paws::Ivschat::DeleteLoggingConfiguration;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoggingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteLoggingConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::DeleteLoggingConfiguration - Arguments for method DeleteLoggingConfiguration on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLoggingConfiguration on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method DeleteLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLoggingConfiguration.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    $ivschat->DeleteLoggingConfiguration(
      Identifier => 'MyLoggingConfigurationIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/DeleteLoggingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

Identifier of the logging configuration to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLoggingConfiguration in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

