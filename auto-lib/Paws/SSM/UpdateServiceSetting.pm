
package Paws::SSM::UpdateServiceSetting;
  use Moose;
  has SettingId => (is => 'ro', isa => 'Str', required => 1);
  has SettingValue => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceSetting');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateServiceSettingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateServiceSetting - Arguments for method UpdateServiceSetting on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceSetting on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateServiceSetting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceSetting.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateServiceSettingResult = $ssm->UpdateServiceSetting(
      SettingId    => 'MyServiceSettingId',
      SettingValue => 'MyServiceSettingValue',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateServiceSetting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SettingId => Str

The Amazon Resource Name (ARN) of the service setting to update. For
example,
C<arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled>.
The setting ID can be one of the following.

=over

=item *

C</ssm/appmanager/appmanager-enabled>

=item *

C</ssm/automation/customer-script-log-destination>

=item *

C</ssm/automation/customer-script-log-group-name>

=item *

/ssm/automation/enable-adaptive-concurrency

=item *

C</ssm/documents/console/public-sharing-permission>

=item *

C</ssm/managed-instance/activation-tier>

=item *

C</ssm/managed-instance/default-ec2-instance-management-role>

=item *

C</ssm/opsinsights/opscenter>

=item *

C</ssm/parameter-store/default-parameter-tier>

=item *

C</ssm/parameter-store/high-throughput-enabled>

=back

Permissions to update the
C</ssm/managed-instance/default-ec2-instance-management-role> setting
should only be provided to administrators. Implement least privilege
access when allowing individuals to configure or modify the Default
Host Management Configuration.



=head2 B<REQUIRED> SettingValue => Str

The new value to specify for the service setting. The following list
specifies the available values for each setting.

=over

=item *

For C</ssm/appmanager/appmanager-enabled>, enter C<True> or C<False>.

=item *

For C</ssm/automation/customer-script-log-destination>, enter
C<CloudWatch>.

=item *

For C</ssm/automation/customer-script-log-group-name>, enter the name
of an Amazon CloudWatch Logs log group.

=item *

For C</ssm/documents/console/public-sharing-permission>, enter
C<Enable> or C<Disable>.

=item *

For C</ssm/managed-instance/activation-tier>, enter C<standard> or
C<advanced>.

=item *

For C</ssm/managed-instance/default-ec2-instance-management-role>,
enter the name of an IAM role.

=item *

For C</ssm/opsinsights/opscenter>, enter C<Enabled> or C<Disabled>.

=item *

For C</ssm/parameter-store/default-parameter-tier>, enter C<Standard>,
C<Advanced>, or C<Intelligent-Tiering>

=item *

For C</ssm/parameter-store/high-throughput-enabled>, enter C<true> or
C<false>.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceSetting in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

