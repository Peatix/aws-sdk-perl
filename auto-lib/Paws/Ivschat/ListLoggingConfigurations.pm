
package Paws::Ivschat::ListLoggingConfigurations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLoggingConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListLoggingConfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::ListLoggingConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::ListLoggingConfigurations - Arguments for method ListLoggingConfigurations on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLoggingConfigurations on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method ListLoggingConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLoggingConfigurations.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $ListLoggingConfigurationsResponse = $ivschat->ListLoggingConfigurations(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $LoggingConfigurations =
      $ListLoggingConfigurationsResponse->LoggingConfigurations;
    my $NextToken = $ListLoggingConfigurationsResponse->NextToken;

    # Returns a L<Paws::Ivschat::ListLoggingConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/ListLoggingConfigurations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of logging configurations to return. Default: 50.



=head2 NextToken => Str

The first logging configurations to retrieve. This is used for
pagination; see the C<nextToken> response field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLoggingConfigurations in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

