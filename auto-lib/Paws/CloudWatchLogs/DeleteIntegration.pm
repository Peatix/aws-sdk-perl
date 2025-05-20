
package Paws::CloudWatchLogs::DeleteIntegration;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );
  has IntegrationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DeleteIntegrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DeleteIntegration - Arguments for method DeleteIntegration on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIntegration on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DeleteIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIntegration.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DeleteIntegrationResponse = $logs->DeleteIntegration(
      IntegrationName => 'MyIntegrationName',
      Force           => 1,                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DeleteIntegration>

=head1 ATTRIBUTES


=head2 Force => Bool

Specify C<true> to force the deletion of the integration even if vended
logs dashboards currently exist.

The default is C<false>.



=head2 B<REQUIRED> IntegrationName => Str

The name of the integration to delete. To find the name of your
integration, use ListIntegrations
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIntegration in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

