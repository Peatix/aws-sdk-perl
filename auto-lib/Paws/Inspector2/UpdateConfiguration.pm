
package Paws::Inspector2::UpdateConfiguration;
  use Moose;
  has Ec2Configuration => (is => 'ro', isa => 'Paws::Inspector2::Ec2Configuration', traits => ['NameInRequest'], request_name => 'ec2Configuration');
  has EcrConfiguration => (is => 'ro', isa => 'Paws::Inspector2::EcrConfiguration', traits => ['NameInRequest'], request_name => 'ecrConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::UpdateConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::UpdateConfiguration - Arguments for method UpdateConfiguration on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfiguration on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method UpdateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfiguration.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $UpdateConfigurationResponse = $inspector2->UpdateConfiguration(
      Ec2Configuration => {
        ScanMode =>
          'EC2_SSM_AGENT_BASED',    # values: EC2_SSM_AGENT_BASED, EC2_HYBRID

      },    # OPTIONAL
      EcrConfiguration => {
        RescanDuration => 'LIFETIME'
        ,    # values: LIFETIME, DAYS_30, DAYS_180, DAYS_14, DAYS_60, DAYS_90
        PullDateRescanDuration => 'DAYS_14'
        ,    # values: DAYS_14, DAYS_30, DAYS_60, DAYS_90, DAYS_180; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/UpdateConfiguration>

=head1 ATTRIBUTES


=head2 Ec2Configuration => L<Paws::Inspector2::Ec2Configuration>

Specifies how the Amazon EC2 automated scan will be updated for your
environment.



=head2 EcrConfiguration => L<Paws::Inspector2::EcrConfiguration>

Specifies how the ECR automated re-scan will be updated for your
environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfiguration in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

