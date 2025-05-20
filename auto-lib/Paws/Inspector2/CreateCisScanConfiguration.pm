
package Paws::Inspector2::CreateCisScanConfiguration;
  use Moose;
  has ScanName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanName', required => 1);
  has Schedule => (is => 'ro', isa => 'Paws::Inspector2::Schedule', traits => ['NameInRequest'], request_name => 'schedule', required => 1);
  has SecurityLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityLevel', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Inspector2::CisTagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Targets => (is => 'ro', isa => 'Paws::Inspector2::CreateCisTargets', traits => ['NameInRequest'], request_name => 'targets', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCisScanConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cis/scan-configuration/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::CreateCisScanConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CreateCisScanConfiguration - Arguments for method CreateCisScanConfiguration on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCisScanConfiguration on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method CreateCisScanConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCisScanConfiguration.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $CreateCisScanConfigurationResponse =
      $inspector2->CreateCisScanConfiguration(
      ScanName => 'MyCisScanName',
      Schedule => {
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
      },
      SecurityLevel => 'LEVEL_1',
      Targets       => {
        AccountIds         => [ 'MyTargetAccount', ... ],   # min: 1, max: 10000
        TargetResourceTags => {
          'MyTargetResourceTagsKey' => [
            'MyTargetResourceTagsValue', ...                # min: 1, max: 256
          ],    # key: min: 1, max: 128, value: min: 1, max: 5
        },    # min: 1, max: 5

      },
      Tags => {
        'MyMapKey' => 'MyMapValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $ScanConfigurationArn =
      $CreateCisScanConfigurationResponse->ScanConfigurationArn;

    # Returns a L<Paws::Inspector2::CreateCisScanConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/CreateCisScanConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScanName => Str

The scan name for the CIS scan configuration.



=head2 B<REQUIRED> Schedule => L<Paws::Inspector2::Schedule>

The schedule for the CIS scan configuration.



=head2 B<REQUIRED> SecurityLevel => Str

The security level for the CIS scan configuration. Security level
refers to the Benchmark levels that CIS assigns to a profile.

Valid values are: C<"LEVEL_1">, C<"LEVEL_2">

=head2 Tags => L<Paws::Inspector2::CisTagMap>

The tags for the CIS scan configuration.



=head2 B<REQUIRED> Targets => L<Paws::Inspector2::CreateCisTargets>

The targets for the CIS scan configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCisScanConfiguration in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

