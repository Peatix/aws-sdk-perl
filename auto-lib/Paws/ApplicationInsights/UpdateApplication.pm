
package Paws::ApplicationInsights::UpdateApplication;
  use Moose;
  has AttachMissingPermission => (is => 'ro', isa => 'Bool');
  has AutoConfigEnabled => (is => 'ro', isa => 'Bool');
  has CWEMonitorEnabled => (is => 'ro', isa => 'Bool');
  has OpsCenterEnabled => (is => 'ro', isa => 'Bool');
  has OpsItemSNSTopicArn => (is => 'ro', isa => 'Str');
  has RemoveSNSTopic => (is => 'ro', isa => 'Bool');
  has ResourceGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SNSNotificationArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::UpdateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::UpdateApplication - Arguments for method UpdateApplication on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $UpdateApplicationResponse = $applicationinsights->UpdateApplication(
      ResourceGroupName       => 'MyResourceGroupName',
      AttachMissingPermission => 1,                         # OPTIONAL
      AutoConfigEnabled       => 1,                         # OPTIONAL
      CWEMonitorEnabled       => 1,                         # OPTIONAL
      OpsCenterEnabled        => 1,                         # OPTIONAL
      OpsItemSNSTopicArn      => 'MyOpsItemSNSTopicArn',    # OPTIONAL
      RemoveSNSTopic          => 1,                         # OPTIONAL
      SNSNotificationArn      => 'MySNSNotificationArn',    # OPTIONAL
    );

    # Results:
    my $ApplicationInfo = $UpdateApplicationResponse->ApplicationInfo;

    # Returns a L<Paws::ApplicationInsights::UpdateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/UpdateApplication>

=head1 ATTRIBUTES


=head2 AttachMissingPermission => Bool

If set to true, the managed policies for SSM and CW will be attached to
the instance roles if they are missing.



=head2 AutoConfigEnabled => Bool

Turns auto-configuration on or off.



=head2 CWEMonitorEnabled => Bool

Indicates whether Application Insights can listen to CloudWatch events
for the application resources, such as C<instance terminated>, C<failed
deployment>, and others.



=head2 OpsCenterEnabled => Bool

When set to C<true>, creates opsItems for any problems detected on an
application.



=head2 OpsItemSNSTopicArn => Str

The SNS topic provided to Application Insights that is associated to
the created opsItem. Allows you to receive notifications for updates to
the opsItem.



=head2 RemoveSNSTopic => Bool

Disassociates the SNS topic from the opsItem created for detected
problems.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.



=head2 SNSNotificationArn => Str

The SNS topic ARN. Allows you to receive SNS notifications for updates
and issues with an application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

