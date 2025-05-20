
package Paws::WAFV2::DeleteLoggingConfiguration;
  use Moose;
  has LogScope => (is => 'ro', isa => 'Str');
  has LogType => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoggingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::DeleteLoggingConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DeleteLoggingConfiguration - Arguments for method DeleteLoggingConfiguration on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLoggingConfiguration on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method DeleteLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLoggingConfiguration.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $DeleteLoggingConfigurationResponse = $wafv2->DeleteLoggingConfiguration(
      ResourceArn => 'MyResourceArn',
      LogScope    => 'CUSTOMER',        # OPTIONAL
      LogType     => 'WAF_LOGS',        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/DeleteLoggingConfiguration>

=head1 ATTRIBUTES


=head2 LogScope => Str

The owner of the logging configuration, which must be set to
C<CUSTOMER> for the configurations that you manage.

The log scope C<SECURITY_LAKE> indicates a configuration that is
managed through Amazon Security Lake. You can use Security Lake to
collect log and event data from various sources for normalization,
analysis, and management. For information, see Collecting data from
Amazon Web Services services
(https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html)
in the I<Amazon Security Lake user guide>.

Default: C<CUSTOMER>

Valid values are: C<"CUSTOMER">, C<"SECURITY_LAKE">

=head2 LogType => Str

Used to distinguish between various logging options. Currently, there
is one option.

Default: C<WAF_LOGS>

Valid values are: C<"WAF_LOGS">

=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the web ACL from which you want to
delete the LoggingConfiguration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLoggingConfiguration in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

