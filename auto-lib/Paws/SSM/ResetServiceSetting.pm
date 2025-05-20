
package Paws::SSM::ResetServiceSetting;
  use Moose;
  has SettingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetServiceSetting');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ResetServiceSettingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResetServiceSetting - Arguments for method ResetServiceSetting on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetServiceSetting on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ResetServiceSetting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetServiceSetting.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ResetServiceSettingResult = $ssm->ResetServiceSetting(
      SettingId => 'MyServiceSettingId',

    );

    # Results:
    my $ServiceSetting = $ResetServiceSettingResult->ServiceSetting;

    # Returns a L<Paws::SSM::ResetServiceSettingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ResetServiceSetting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SettingId => Str

The Amazon Resource Name (ARN) of the service setting to reset. The
setting ID can be one of the following.

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetServiceSetting in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

