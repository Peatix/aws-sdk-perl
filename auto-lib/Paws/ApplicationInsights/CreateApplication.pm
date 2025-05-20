
package Paws::ApplicationInsights::CreateApplication;
  use Moose;
  has AttachMissingPermission => (is => 'ro', isa => 'Bool');
  has AutoConfigEnabled => (is => 'ro', isa => 'Bool');
  has AutoCreate => (is => 'ro', isa => 'Bool');
  has CWEMonitorEnabled => (is => 'ro', isa => 'Bool');
  has GroupingType => (is => 'ro', isa => 'Str');
  has OpsCenterEnabled => (is => 'ro', isa => 'Bool');
  has OpsItemSNSTopicArn => (is => 'ro', isa => 'Str');
  has ResourceGroupName => (is => 'ro', isa => 'Str');
  has SNSNotificationArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationInsights::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::CreateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::CreateApplication - Arguments for method CreateApplication on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $CreateApplicationResponse = $applicationinsights->CreateApplication(
      AttachMissingPermission => 1,                         # OPTIONAL
      AutoConfigEnabled       => 1,                         # OPTIONAL
      AutoCreate              => 1,                         # OPTIONAL
      CWEMonitorEnabled       => 1,                         # OPTIONAL
      GroupingType            => 'ACCOUNT_BASED',           # OPTIONAL
      OpsCenterEnabled        => 1,                         # OPTIONAL
      OpsItemSNSTopicArn      => 'MyOpsItemSNSTopicArn',    # OPTIONAL
      ResourceGroupName       => 'MyResourceGroupName',     # OPTIONAL
      SNSNotificationArn      => 'MySNSNotificationArn',    # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ApplicationInfo = $CreateApplicationResponse->ApplicationInfo;

    # Returns a L<Paws::ApplicationInsights::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/CreateApplication>

=head1 ATTRIBUTES


=head2 AttachMissingPermission => Bool

If set to true, the managed policies for SSM and CW will be attached to
the instance roles if they are missing.



=head2 AutoConfigEnabled => Bool

Indicates whether Application Insights automatically configures
unmonitored resources in the resource group.



=head2 AutoCreate => Bool

Configures all of the resources in the resource group by applying the
recommended configurations.



=head2 CWEMonitorEnabled => Bool

Indicates whether Application Insights can listen to CloudWatch events
for the application resources, such as C<instance terminated>, C<failed
deployment>, and others.



=head2 GroupingType => Str

Application Insights can create applications based on a resource group
or on an account. To create an account-based application using all of
the resources in the account, set this parameter to C<ACCOUNT_BASED>.

Valid values are: C<"ACCOUNT_BASED">

=head2 OpsCenterEnabled => Bool

When set to C<true>, creates opsItems for any problems detected on an
application.



=head2 OpsItemSNSTopicArn => Str

The SNS topic provided to Application Insights that is associated to
the created opsItem. Allows you to receive notifications for updates to
the opsItem.



=head2 ResourceGroupName => Str

The name of the resource group.



=head2 SNSNotificationArn => Str

The SNS notification topic ARN.



=head2 Tags => ArrayRef[L<Paws::ApplicationInsights::Tag>]

List of tags to add to the application. tag key (C<Key>) and an
associated tag value (C<Value>). The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

