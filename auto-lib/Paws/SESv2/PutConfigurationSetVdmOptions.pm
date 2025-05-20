
package Paws::SESv2::PutConfigurationSetVdmOptions;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationSetName', required => 1);
  has VdmOptions => (is => 'ro', isa => 'Paws::SESv2::VdmOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationSetVdmOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/configuration-sets/{ConfigurationSetName}/vdm-options');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutConfigurationSetVdmOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutConfigurationSetVdmOptions - Arguments for method PutConfigurationSetVdmOptions on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationSetVdmOptions on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutConfigurationSetVdmOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationSetVdmOptions.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutConfigurationSetVdmOptionsResponse =
      $email->PutConfigurationSetVdmOptions(
      ConfigurationSetName => 'MyConfigurationSetName',
      VdmOptions           => {
        DashboardOptions => {
          EngagementMetrics => 'ENABLED',  # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        GuardianOptions => {
          OptimizedSharedDelivery =>
            'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutConfigurationSetVdmOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set.



=head2 VdmOptions => L<Paws::SESv2::VdmOptions>

The VDM options to apply to the configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationSetVdmOptions in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

