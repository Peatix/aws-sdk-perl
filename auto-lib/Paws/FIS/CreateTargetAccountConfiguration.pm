
package Paws::FIS::CreateTargetAccountConfiguration;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExperimentTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTargetAccountConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/experimentTemplates/{id}/targetAccountConfigurations/{accountId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::CreateTargetAccountConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::CreateTargetAccountConfiguration - Arguments for method CreateTargetAccountConfiguration on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTargetAccountConfiguration on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method CreateTargetAccountConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTargetAccountConfiguration.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $CreateTargetAccountConfigurationResponse =
      $fis->CreateTargetAccountConfiguration(
      AccountId            => 'MyTargetAccountId',
      ExperimentTemplateId => 'MyExperimentTemplateId',
      RoleArn              => 'MyRoleArn',
      ClientToken          => 'MyClientToken',                     # OPTIONAL
      Description => 'MyTargetAccountConfigurationDescription',    # OPTIONAL
      );

    # Results:
    my $TargetAccountConfiguration =
      $CreateTargetAccountConfigurationResponse->TargetAccountConfiguration;

    # Returns a L<Paws::FIS::CreateTargetAccountConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/CreateTargetAccountConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the target account.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Description => Str

The description of the target account.



=head2 B<REQUIRED> ExperimentTemplateId => Str

The experiment template ID.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role for the target account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTargetAccountConfiguration in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

