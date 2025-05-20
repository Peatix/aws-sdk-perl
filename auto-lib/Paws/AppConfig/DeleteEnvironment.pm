
package Paws::AppConfig::DeleteEnvironment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has DeletionProtectionCheck => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-deletion-protection-check');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/environments/{EnvironmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::DeleteEnvironment - Arguments for method DeleteEnvironment on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEnvironment on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method DeleteEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEnvironment.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    # To delete an environment
    # The following delete-environment example deletes the specified application
    # environment.
    $appconfig->DeleteEnvironment(
      'ApplicationId' => '339ohji',
      'EnvironmentId' => '54j1r29'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/DeleteEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID that includes the environment that you want to
delete.



=head2 DeletionProtectionCheck => Str

A parameter to configure deletion protection. Deletion protection
prevents a user from deleting an environment if your application called
either GetLatestConfiguration
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html)
or in the environment during the specified interval.

This parameter supports the following values:

=over

=item *

C<BYPASS>: Instructs AppConfig to bypass the deletion protection check
and delete a configuration profile even if deletion protection would
have otherwise prevented it.

=item *

C<APPLY>: Instructs the deletion protection check to run, even if
deletion protection is disabled at the account level. C<APPLY> also
forces the deletion protection check to run against resources created
in the past hour, which are normally excluded from deletion protection
checks.

=item *

C<ACCOUNT_DEFAULT>: The default setting, which instructs AppConfig to
implement the deletion protection value specified in the
C<UpdateAccountSettings> API.

=back


Valid values are: C<"ACCOUNT_DEFAULT">, C<"APPLY">, C<"BYPASS">

=head2 B<REQUIRED> EnvironmentId => Str

The ID of the environment that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEnvironment in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

