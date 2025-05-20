
package Paws::Inspector2::UpdateCisScanConfiguration;
  use Moose;
  has ScanConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanConfigurationArn', required => 1);
  has ScanName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanName');
  has Schedule => (is => 'ro', isa => 'Paws::Inspector2::Schedule', traits => ['NameInRequest'], request_name => 'schedule');
  has SecurityLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityLevel');
  has Targets => (is => 'ro', isa => 'Paws::Inspector2::UpdateCisTargets', traits => ['NameInRequest'], request_name => 'targets');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCisScanConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cis/scan-configuration/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::UpdateCisScanConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::UpdateCisScanConfiguration - Arguments for method UpdateCisScanConfiguration on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCisScanConfiguration on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method UpdateCisScanConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCisScanConfiguration.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $UpdateCisScanConfigurationResponse =
      $inspector2->UpdateCisScanConfiguration(
      ScanConfigurationArn => 'MyCisScanConfigurationArn',
      ScanName             => 'MyCisScanName',               # OPTIONAL
      Schedule             => {
        Daily => {
          StartTime => {
            TimeOfDay => 'MyTimeOfDay',
            Timezone  => 'MyTimezone',    # min: 1, max: 50

          },

        },    # OPTIONAL
        Monthly => {
          Day       => 'SUN',    # values: SUN, MON, TUE, WED, THU, FRI, SAT
          StartTime => {
            TimeOfDay => 'MyTimeOfDay',
            Timezone  => 'MyTimezone',    # min: 1, max: 50

          },

        },    # OPTIONAL
        OneTime => {

        },    # OPTIONAL
        Weekly => {
          Days => [
            'SUN', ...    # values: SUN, MON, TUE, WED, THU, FRI, SAT
          ],    # min: 1, max: 7
          StartTime => {
            TimeOfDay => 'MyTimeOfDay',
            Timezone  => 'MyTimezone',    # min: 1, max: 50

          },

        },    # OPTIONAL
      },    # OPTIONAL
      SecurityLevel => 'LEVEL_1',    # OPTIONAL
      Targets       => {
        AccountIds => [ 'MyTargetAccount', ... ], # min: 1, max: 10000; OPTIONAL
        TargetResourceTags => {
          'MyTargetResourceTagsKey' => [
            'MyTargetResourceTagsValue', ...      # min: 1, max: 256
          ],    # key: min: 1, max: 128, value: min: 1, max: 5
        },    # min: 1, max: 5; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ScanConfigurationArn =
      $UpdateCisScanConfigurationResponse->ScanConfigurationArn;

    # Returns a L<Paws::Inspector2::UpdateCisScanConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/UpdateCisScanConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScanConfigurationArn => Str

The CIS scan configuration ARN.



=head2 ScanName => Str

The scan name for the CIS scan configuration.



=head2 Schedule => L<Paws::Inspector2::Schedule>

The schedule for the CIS scan configuration.



=head2 SecurityLevel => Str

The security level for the CIS scan configuration. Security level
refers to the Benchmark levels that CIS assigns to a profile.

Valid values are: C<"LEVEL_1">, C<"LEVEL_2">

=head2 Targets => L<Paws::Inspector2::UpdateCisTargets>

The targets for the CIS scan configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCisScanConfiguration in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

