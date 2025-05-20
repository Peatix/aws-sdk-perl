
package Paws::WorkMail::PutEmailMonitoringConfiguration;
  use Moose;
  has LogGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEmailMonitoringConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::PutEmailMonitoringConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::PutEmailMonitoringConfiguration - Arguments for method PutEmailMonitoringConfiguration on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEmailMonitoringConfiguration on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method PutEmailMonitoringConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEmailMonitoringConfiguration.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $PutEmailMonitoringConfigurationResponse =
      $workmail->PutEmailMonitoringConfiguration(
      LogGroupArn    => 'MyLogGroupArn',
      OrganizationId => 'MyOrganizationId',
      RoleArn        => 'MyRoleArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/PutEmailMonitoringConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupArn => Str

The Amazon Resource Name (ARN) of the CloudWatch Log group associated
with the email monitoring configuration.



=head2 B<REQUIRED> OrganizationId => Str

The ID of the organization for which the email monitoring configuration
is set.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM Role associated with the
email monitoring configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEmailMonitoringConfiguration in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

