
package Paws::FIS::UpdateTargetAccountConfiguration;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExperimentTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTargetAccountConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/experimentTemplates/{id}/targetAccountConfigurations/{accountId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::UpdateTargetAccountConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::UpdateTargetAccountConfiguration - Arguments for method UpdateTargetAccountConfiguration on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTargetAccountConfiguration on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method UpdateTargetAccountConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTargetAccountConfiguration.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $UpdateTargetAccountConfigurationResponse =
      $fis->UpdateTargetAccountConfiguration(
      AccountId            => 'MyTargetAccountId',
      ExperimentTemplateId => 'MyExperimentTemplateId',
      Description => 'MyTargetAccountConfigurationDescription',    # OPTIONAL
      RoleArn     => 'MyRoleArn',                                  # OPTIONAL
      );

    # Results:
    my $TargetAccountConfiguration =
      $UpdateTargetAccountConfigurationResponse->TargetAccountConfiguration;

    # Returns a L<Paws::FIS::UpdateTargetAccountConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/UpdateTargetAccountConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the target account.



=head2 Description => Str

The description of the target account.



=head2 B<REQUIRED> ExperimentTemplateId => Str

The ID of the experiment template.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role for the target account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTargetAccountConfiguration in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

