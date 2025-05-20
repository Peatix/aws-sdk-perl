
package Paws::RUM::PutRumMetricsDestination;
  use Moose;
  has AppMonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AppMonitorName', required => 1);
  has Destination => (is => 'ro', isa => 'Str', required => 1);
  has DestinationArn => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRumMetricsDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rummetrics/{AppMonitorName}/metricsdestination');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::PutRumMetricsDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::PutRumMetricsDestination - Arguments for method PutRumMetricsDestination on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRumMetricsDestination on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method PutRumMetricsDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRumMetricsDestination.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $PutRumMetricsDestinationResponse = $rum->PutRumMetricsDestination(
      AppMonitorName => 'MyAppMonitorName',
      Destination    => 'CloudWatch',
      DestinationArn => 'MyDestinationArn',    # OPTIONAL
      IamRoleArn     => 'MyIamRoleArn',        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/PutRumMetricsDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppMonitorName => Str

The name of the CloudWatch RUM app monitor that will send the metrics.



=head2 B<REQUIRED> Destination => Str

Defines the destination to send the metrics to. Valid values are
C<CloudWatch> and C<Evidently>. If you specify C<Evidently>, you must
also specify the ARN of the CloudWatchEvidently experiment that is to
be the destination and an IAM role that has permission to write to the
experiment.

Valid values are: C<"CloudWatch">, C<"Evidently">

=head2 DestinationArn => Str

Use this parameter only if C<Destination> is C<Evidently>. This
parameter specifies the ARN of the Evidently experiment that will
receive the extended metrics.



=head2 IamRoleArn => Str

This parameter is required if C<Destination> is C<Evidently>. If
C<Destination> is C<CloudWatch>, don't use this parameter.

This parameter specifies the ARN of an IAM role that RUM will assume to
write to the Evidently experiment that you are sending metrics to. This
role must have permission to write to that experiment.

If you specify this parameter, you must be signed on to a role that has
PassRole
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html)
permissions attached to it, to allow the role to be passed. The
CloudWatchAmazonCloudWatchRUMFullAccess
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html#managed-policies-cloudwatch-RUM)
policy doesn't include C<PassRole> permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRumMetricsDestination in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

