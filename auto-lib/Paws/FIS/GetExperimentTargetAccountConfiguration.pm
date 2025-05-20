
package Paws::FIS::GetExperimentTargetAccountConfiguration;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has ExperimentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExperimentTargetAccountConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/experiments/{id}/targetAccountConfigurations/{accountId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::GetExperimentTargetAccountConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::GetExperimentTargetAccountConfiguration - Arguments for method GetExperimentTargetAccountConfiguration on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExperimentTargetAccountConfiguration on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method GetExperimentTargetAccountConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExperimentTargetAccountConfiguration.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $GetExperimentTargetAccountConfigurationResponse =
      $fis->GetExperimentTargetAccountConfiguration(
      AccountId    => 'MyTargetAccountId',
      ExperimentId => 'MyExperimentId',

      );

    # Results:
    my $TargetAccountConfiguration =
      $GetExperimentTargetAccountConfigurationResponse
      ->TargetAccountConfiguration;

# Returns a L<Paws::FIS::GetExperimentTargetAccountConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/GetExperimentTargetAccountConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the target account.



=head2 B<REQUIRED> ExperimentId => Str

The ID of the experiment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExperimentTargetAccountConfiguration in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

